/*
 * spitransport.c
 *
 *  Created on: Nov 24, 2016
 *      Author: lovro
 */

#include "spiTransport.h"

/* Hal includes */
#include "gio.h"
#include "crc.h"
#include "spi.h"
#include "sys_dma.h"

#include "system.h"
#include "sys_common.h"

#include "../pinDescriptions.h"
#include "cbuffer.h"
#include "logging.h"

static void initDMASpiRx(void);
static void initDMASpiTx(void);

static inline void parseSpiRxByte(uint8_t data);

static void setupDMASpiMsgTx(uint32_t length, const uint8_t * message);
static uint64_t crcDMACalculate (uint8_t length, const uint8_t * message);

#define SPIRXMESSAGENRMAX 100
#define SPIRXMESSAGELENMAX 100
#define RX_BUFFER_SIZE 128
#define SPIRXBUFFERSIZE 10
#define SPITXBUFFERSIZE 128

typedef enum {
    SPIRX_WAITINGFORPREAMBULE1BYTE,
    SPIRX_WAITINGFORPREAMBULE2BYTE,
    SPIRX_TYPE,
    SPIRX_LENGTH,
    SPIRX_PAYLOAD,
    SPIRX_CRC,
} spiRxSM_t;

SemaphoreHandle_t spiRxFrameCount = NULL;
SemaphoreHandle_t spiTxAvailable = NULL;

// Spi Rx buffers
uint8_t spiRxBuffer[SPIRXBUFFERSIZE] = {0};

// Spi Tx buffers
#define SPITXFASTNR 10 /* number of fast spi slots available*/
#define SPITXFASTMESSAGESIZEMAX 10 /*maximum message size*/
typedef struct {
    uint8_t message[SPITXFASTMESSAGESIZEMAX];
    uint8_t available;
    uint8_t ackTimer;
} spiTxFast_t;
spiTxFast_t spiTxFast[SPITXFASTNR] = {0};

#define SPITXSLOWBUFFERSIZE 0x100

uint8_t spiTxSlowBuffer[SPITXSLOWBUFFERSIZE] = {0};
cbuffer_t spiTxSlow = {
    .size = SPITXSLOWBUFFERSIZE,
    .head = 1,
    .tail = 0,
    .data = spiTxSlowBuffer
};

/**
 * Turns the crank on the sending of the SPI messages to the Computation Module.
 * If there are any messages in the urgent queue they are sent first.
 * If there aren't any, messages from the circular buffer are sent.
 */
void taskSpiTx(void *pvParameters) {
    uint8_t txBuffer[SPITXBUFFERSIZE] = {0};
    LOG_INFO("Entering SPI TX task ");

    /* Semaphore to signal end of transmission */
    spiTxAvailable = xSemaphoreCreateBinary();
    vQueueAddToRegistry( spiTxAvailable, "SPI TX available" );
    xSemaphoreGive(spiTxAvailable);

    initDMASpiTx();
    uint8_t txMessageAvailable = FALSE;

    while (1) {

        if (pdTRUE == xSemaphoreTake(spiTxAvailable, portMAX_DELAY)) { /*Transmission finished?*/

            uint16_t length = 0x2244;
            uint8_t * fastMessage = 0;

            uint8_t type = 1;

            fastMessage = spiTxPopUrgent();
            if (NULL != fastMessage) {
                length = SPITXFASTMESSAGESIZEMAX;
                memcpy(&txBuffer[8], fastMessage, length);
                txMessageAvailable = TRUE;
            } else if (cbufferTaken(&spiTxSlow)) { // check if a message is available
                length = cbufferPop(&spiTxSlow);
                /* TODO check if message is longer than tx buffer size */
                cbufferPopMultiple(&spiTxSlow, length, &txBuffer[8]);
                txMessageAvailable = TRUE;
            } else { // nothing available try again in a few miliseconds
                xSemaphoreGive(spiTxAvailable);
                vTaskDelay(10 / portTICK_PERIOD_MS);
            }

            if (txMessageAvailable) {

                uint64_t crc = 0;
                length += 8 + 8;

                txMessageAvailable = FALSE;

                txBuffer[0] = 0xAA; /*preambule*/
                txBuffer[1] = 0x55; /*preambule*/
                txBuffer[2] = type;
                txBuffer[3] = 0x11;
                txBuffer[4] = 0x11;
                txBuffer[5] = 0x11;
                txBuffer[6] = (uint8_t)((length >> 8) & 0xFF);
                txBuffer[7] = (uint8_t)(length & 0xFF);

                /* pad by zeros untill divisible by 8 */
                /*for (i = 0; i < (8 - length / 8); i++){
                  txBuffer[8 + length + i] = 0x00;
                  }
                  /* add padding and preambule length*/
                /*length = length + i + 8;
                  crc = CrcDMACalculate (length, txBuffer);
                  /* add crc to end of message */
                //memcpy(&crc, &txBuffer[length], 8);
                /*add crc length*/
                //length += 8;
                /*send the message*/

                //LOG_INFO("Starting transmission");
                loggingToHex(loggingStr, txBuffer, length);
                LOG_INFO("SPI TX: %s", loggingStr);
                gioSetBit(spiRequestTransmit.port, spiRequestTransmit.pin, 1); // set request to transmitt to active
                setupDMASpiMsgTx(length, txBuffer);
            }
        }
    }
}


/**
 * Turns the crank of the receiving of SPI messages from the Computation Module
 */
void taskSpiRx(void *pvParameters) {
    uint8_t i = 0;
    /* rx variables */
    UBaseType_t spiRxFrameAvail = 0;
    UBaseType_t spiRxBufferPosition = 0;

    LOG_INFO("Entering SPI RX task ");

    spiRxFrameCount = xSemaphoreCreateCounting( SPIRXBUFFERSIZE , 0 );
    vQueueAddToRegistry( spiRxFrameCount, "SPI RX byte count" );

    initDMASpiRx();

    //  uint8_t testMsg[100]={0xFF,0x11,0xAA,
    //                        0xAA,0x55, 0x77 /*type*/,0x11,0x22,0x33,0x00,0x10/*16bytes payload length*/,
    //                        0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,
    //                        0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F,
    //                        0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F, /*CRC*/
    //                        };
    //
    //  for(i = 0; i < 35; i++){
    //    ParseSpiRxByte(testMsg[i]);
    //  }
    //  while(1);

    while (1) {
        /* number of available frames/bytes */
        spiRxFrameAvail = uxQueueMessagesWaiting(spiRxFrameCount); //
        if (spiRxFrameAvail) {
            /* Parse the next spiRxFrameAvail bytes*/
            for (i = 0; i < spiRxFrameAvail; i++) {
                parseSpiRxByte(spiRxBuffer[spiRxBufferPosition]);
                xSemaphoreTake(spiRxFrameCount, 0);
                LOG_DEBUG("Received SPI byte: %02X\r\n", spiRxBuffer[spiRxBufferPosition]);
                /*update buffer end position*/
                spiRxBufferPosition++;
                if (spiRxBufferPosition >= SPIRXBUFFERSIZE) {
                    spiRxBufferPosition = 0;
                }
            }
        }
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}

/**
 * Parses the incomming stream and outputs messages
 * @param data next byte of incomming stream
 */
static inline void parseSpiRxByte(uint8_t data) {
    static spiRxSM_t state = SPIRX_WAITINGFORPREAMBULE1BYTE;
    static uint8_t miscCnt = 0;
    static uint8_t globalCnt = 0;
    static uint64_t crc = 0;
    static uint16_t length = 0;
    static uint8_t message[SPIRXMESSAGENRMAX] = {0};

    /* parsing state machine*/
    switch (state) {
    case SPIRX_WAITINGFORPREAMBULE1BYTE: /*0xAA*/
        if (0xAA == data) {
            message[0] = 0xAA;
            state = SPIRX_WAITINGFORPREAMBULE2BYTE;
            globalCnt = 1;
        }
        break;
    case SPIRX_WAITINGFORPREAMBULE2BYTE: /*0x55*/
        if (0x55 == data) {
            message[globalCnt] = 0x55;
            miscCnt = 0;
            globalCnt++;
            state = SPIRX_TYPE;
        } else {
            if (0xAA != data) {
                state = SPIRX_WAITINGFORPREAMBULE1BYTE;
            }
        }
        break;
    case SPIRX_TYPE:
        message[globalCnt] = data;
        miscCnt = 0;
        globalCnt++;
        state = SPIRX_LENGTH;
        break;
    case SPIRX_LENGTH:
        message[globalCnt] = data;
        globalCnt++;
        miscCnt++;
        if (4 == miscCnt) {
            length = data << 8;
        } else if (5 == miscCnt) {
            length = length | data;
            miscCnt = 0;
            state = SPIRX_PAYLOAD;
        }
        break;
    case SPIRX_PAYLOAD:
        message[globalCnt] = data;
        globalCnt++;
        miscCnt++;
        if (length == miscCnt) {
            miscCnt = 0;
            crc = 0;
            state = SPIRX_CRC;
        }
        break;
    case SPIRX_CRC:
        message[globalCnt] = data;
        globalCnt++;
        miscCnt++;
        if (8 == miscCnt) {
            // calculate CRC
            // check if CRC is ok
            // if it is:
            // send to protobuff handler ---> later have a by type dispatcher
            cmStreamToProtobuf(&message[8], length);
            state = SPIRX_WAITINGFORPREAMBULE1BYTE;
        } else {
            crc |= (uint64_t) data << ((8 - miscCnt) * 8); /*check big/little endian*/
        }
        break;
    default:
        state = SPIRX_WAITINGFORPREAMBULE1BYTE;
        break;
    }
}

/* ----------------------------------------- TX buffer handling */
uint8_t spiTxPush(uint8_t length, const uint8_t * message) {
    /*add message to circular buffer if there is enough space*/
    if (cbufferFree(&spiTxSlow) > (length + 1)) {
        cbufferPush(&spiTxSlow, length);
        cbufferPushMultiple(&spiTxSlow, length, message);
    } else { // not enough space
        return 1;
    }
    return 0;
}

uint8_t spiTxPushUrgent(uint8_t length, const uint8_t * message) {
    uint8_t i = 0;

    for (i = 0; i < SPITXFASTNR; i++) {
        if (0 == spiTxFast[i].available) { // slot available
            memcpy(spiTxFast[i].message, message, length);
            for (; length < SPITXFASTMESSAGESIZEMAX; length++) {
                spiTxFast[i].message[length] = 0x00;
            }
            spiTxFast[i].available = 1; // set as taken
            return 0;
        }
    }
    return 1;
}

/**
 * Marks the message as received ie. the location is empty
 * @param position of the message in the queue
 */
uint8_t spiAckUrgent(uint8_t location) {
    spiTxFast[location].available = 0;
    return 0;
}

/**
 * Retrives first SPI message from the urgent queue
 */
uint8_t * spiTxPopUrgent(void) {
    uint8_t i = 0;

    for (i = 0; i < SPITXFASTNR; i++) {
        if (1 == spiTxFast[i].available) { // slot taken
            return  spiTxFast[i].message;
        }
    }
    return NULL;
}

/**
 * Sets up the SPI DMA for transmitting
 */
static void initDMASpiTx(void) {
    /* - assigning dma request: channel-1 with request line - 15 (SPI3 Transmit DMA Request) */
    dmaReqAssign(DMA_CH1, 15);
    dmaEnableInterrupt(DMA_CH1, BTC);
}
/**
 * Sets up the SPI DMA for receiving
 */
static void initDMASpiRx(void) {
    g_dmaCTRL xDmaSetup;         /* dma control packet configuration stack - Transmit Channels*/

    /* - assigning dma request: channel-0 with request line - 14 (SPI3 Receive DMA Request)*/
    dmaReqAssign(DMA_CH0, 14);
    dmaEnableInterrupt(DMA_CH0, FTC);

    xDmaSetup.SADD      = (uint32)(&spiREG3->BUF) + 3;  /* source address             */
    xDmaSetup.DADD      = (uint32)spiRxBuffer;          /* destination  address       */
    xDmaSetup.CHCTRL    = 0;                            /* channel control            */
    xDmaSetup.FRCNT     = SPIRXBUFFERSIZE;              /* frame count                */
    //xDmaSetup.FRCNT     = 8;                          /* frame count                */
    xDmaSetup.ELCNT     = 1;                            /* element count              */
    xDmaSetup.ELDOFFSET = 0;                            /* element destination offset */
    xDmaSetup.ELSOFFSET = 0;                            /* element source offset      */
    xDmaSetup.FRDOFFSET = 0;                            /* frame destination offset   */
    xDmaSetup.FRSOFFSET = 0;                            /* frame destination offset   */
    xDmaSetup.PORTASGN  = 4;                            /* port b                     */
    xDmaSetup.RDSIZE    = ACCESS_8_BIT;                 /* read size                  */
    xDmaSetup.WRSIZE    = ACCESS_8_BIT;                 /* write size                 */
    xDmaSetup.TTYPE     = FRAME_TRANSFER ;              /* transfer type              */
    xDmaSetup.ADDMODERD = ADDR_FIXED;                   /* address mode read          */
    xDmaSetup.ADDMODEWR = ADDR_INC1;                    /* address mode write         */
    xDmaSetup.AUTOINIT  = AUTOINIT_ON;                  /* autoinit                   */
    // - setting DMA control packets
    dmaSetCtrlPacket(DMA_CH0, xDmaSetup);
    // - setting the DMA channel to trigger on h/w request */
    dmaSetChEnable(DMA_CH0, DMA_HW);
}

/**
 * Sets up SPI DMA for sending
 * @param length length of the message
 * @param message points to the message data to be sent
 */
static void setupDMASpiMsgTx(uint32_t length, const uint8_t * message) {
    g_dmaCTRL xDmaSetup;         /* dma control packet configuration stack - Transmit Channels*/

    xDmaSetup.SADD      = (uint32)message + 1;          /* source address */
    xDmaSetup.DADD      = (uint32)(&spiREG3->DAT0) + 3; /* destination  address */
    xDmaSetup.CHCTRL    = 0;                            /* channel control            */
    xDmaSetup.FRCNT     = length;                       /* frame count                */
    xDmaSetup.ELCNT     = 1;                            /* element count              */
    xDmaSetup.ELDOFFSET = 0;                            /* element destination offset */
    xDmaSetup.ELSOFFSET = 0;                            /* element source offset      */
    xDmaSetup.FRDOFFSET = 0;                            /* frame destination offset   */
    xDmaSetup.FRSOFFSET = 0;                            /* frame destination offset   */
    xDmaSetup.PORTASGN  = 4;                            /* port b                     */
    xDmaSetup.RDSIZE    = ACCESS_8_BIT;                 /* read size                  */
    xDmaSetup.WRSIZE    = ACCESS_8_BIT;                 /* write size                 */
    xDmaSetup.TTYPE     = FRAME_TRANSFER ;              /* transfer type block/frame  */
    xDmaSetup.ADDMODERD = ADDR_INC1;                    /* address mode read          */
    xDmaSetup.ADDMODEWR = ADDR_FIXED;                   /* address mode write         */
    xDmaSetup.AUTOINIT  = AUTOINIT_OFF;                 /* autoinit                   */
    // - setting DMA control packets
    dmaSetCtrlPacket(DMA_CH1, xDmaSetup);
    // - setting the DMA channel to trigger on h/w request */
    dmaSetChEnable(DMA_CH1, DMA_HW);
    // start the transmission
    spiREG3->DAT0 = (uint32) * message;
}

/**
 * Calculates crc of the data
 * @param length lenght of data for which CRC is to be calculated. Length to be devisible by eight.
 * @param message points to the data for which CRC is to be calculated.
 */
static uint64_t crcDMACalculate (uint8_t length, const uint8_t * message) {
    uint64_t crc = 0;
    g_dmaCTRL xDmaSetup;         /* dma control packet configuration stack */

    /* crc configuration */
    crcConfig_t xCrcSetup;
    xCrcSetup.crc_channel = CRC_CH1;
    xCrcSetup.mode = CRC_SEMI_CPU;
    xCrcSetup.scount = 1;
    xCrcSetup.pcount = 11;
    xCrcSetup.block_preload = 0;
    xCrcSetup.wdg_preload = 0;

    // calculate crc (DMA)
    crcInit();
    /* - configuring dma control packets for task 2  */
    xDmaSetup.SADD      = (uint32)message;                    /* source address             */
    xDmaSetup.DADD      = (uint32)(&(crcREG->PSA_SIGREGL1));  /* destination  address       */
    xDmaSetup.CHCTRL    = 0;                                  /* channel control            */
    xDmaSetup.FRCNT     = (length + 1) / 8 ;                  /* frame count                */ /* TODO check this */
    xDmaSetup.ELCNT     = 1;                                  /* element count              */
    xDmaSetup.ELDOFFSET = 0;                                  /* element destination offset */
    xDmaSetup.ELSOFFSET = 0;                                  /* element source offset */
    xDmaSetup.FRDOFFSET = 0;                                  /* frame destination offset   */
    xDmaSetup.FRSOFFSET = 0;                                  /* frame source offset   */
    xDmaSetup.PORTASGN  = 4;                                  /* port b                     */
    xDmaSetup.RDSIZE    = ACCESS_64_BIT;                      /* read size                  */
    xDmaSetup.WRSIZE    = ACCESS_64_BIT;                      /* write size                 */
    xDmaSetup.TTYPE     = BLOCK_TRANSFER;                     /* transfer type              */
    xDmaSetup.ADDMODERD = ADDR_INC1;                          /* address mode read          */
    xDmaSetup.ADDMODEWR = ADDR_FIXED;                         /* address mode write         */
    xDmaSetup.AUTOINIT  = AUTOINIT_OFF;                       /* autoinit                   */

    crcChannelReset(crcREG, CRC_CH1);
    crcSetConfig(crcREG, &xCrcSetup);
    dmaSetCtrlPacket(DMA_CH3, xDmaSetup);
    dmaSetChEnable(DMA_CH3, DMA_SW);
    while ((dmaREG->BTCFLAG & (1 << DMA_CH3)) == 0) {
        /* wait while crc calculation finishes */
    }
    dmaREG->BTCFLAG = (1 << DMA_CH3);
    crc = crcGetSectorSig(crcREG, CRC_CH1);

    return crc;
}
