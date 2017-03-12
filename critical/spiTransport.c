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
#include "mibspi.h"

//#include "spi.h"
#include "sys_dma.h"

#include "system.h"
#include "sys_common.h"

#include "cbuffer.h"
#include "logging.h"

void initDMASpiRx(void);
void initDMASpiTx(void);

inline void parseSpiRxByte(uint8_t data);

static void setupDMASpiMsgTx(uint32_t length, uint8_t * message);
static uint64_t crcDMACalculate (uint8_t length, uint8_t * message);

SemaphoreHandle_t xSpiRxFrameCnt = NULL;
SemaphoreHandle_t xSpiTxAvailable = NULL;
// Spi Rx buffers
uint8_t spiRxBuffer[SPIRXBUFFERSIZE] = {0};

static uint64_t rxFramesDropped = 0;
static uint64_t rxFramesReceived = 0;

// Spi Tx buffers
#define SPITXFASTNR 10 /* number of fast spi slots available*/
#define SPITXFASTMESSAGESIZEMAX 10 /*maximum message size*/
typedef struct{
  uint8_t message[SPITXFASTMESSAGESIZEMAX];
  uint8_t available;
  uint8_t ackTimer;
}spiTxFast_t;
spiTxFast_t spiTxFast[SPITXFASTNR] = {0};

#define SPITXSLOWBUFFERSIZE 0x100

uint8_t spiTxSlowBuffer[SPITXSLOWBUFFERSIZE] = {0};

CBuffer_t spiTxSlow = {
  .size = SPITXSLOWBUFFERSIZE,
  .head = 1,
  .tail = 0,
  .data = spiTxSlowBuffer
};


void vSpiTx(void *pvParameters){
  uint8_t txBuffer[SPITXBUFFERSIZE] = {0};
  uint8_t counter = 0;

  LOG_INFO("Entering SPI TX task ");

  /* Semaphore to signal end of transmission */
  xSpiTxAvailable = xSemaphoreCreateBinary();
  vQueueAddToRegistry( xSpiTxAvailable, "SPI TX available" );
  xSemaphoreGive(xSpiTxAvailable);

  initDMASpiTx();
  uint8_t txMessageAvailable = FALSE;

  while(1){

    if(pdTRUE == xSemaphoreTake(xSpiTxAvailable,portMAX_DELAY)){ /*Transmission finished?*/

      uint16_t length = 0x2244;
      uint8_t * fastMessage = 0;

      uint8_t type = 1;

      fastMessage = getFromSPITxFast();
      if(NULL != fastMessage){
        length = SPITXFASTMESSAGESIZEMAX;
        memcpy(&txBuffer[8], fastMessage, length);
        txMessageAvailable = TRUE;
      } else if(CBufferTaken(&spiTxSlow)){ // check if a message is available
        length = CBufferPop(&spiTxSlow);
        if (length > SPITXBUFFERSIZE - SPITXFRAMEOVERHEAD) {
          LOG_WARN("SPI TX message larger than buffer, message dropped");
          /* drop message without causing buffer overrun */
          while (length) {
            uint16_t chunk = SPITXBUFFERSIZE - SPITXFRAMEOVERHEAD;
            if (chunk > length) {
              chunk = length;
            }
            CBufferPopMultiple(&spiTxSlow, chunk, &txBuffer[8]);
            length = length - chunk;
          }
        } else {
          CBufferPopMultiple(&spiTxSlow, length, &txBuffer[8]);
          txMessageAvailable = TRUE;
        }
      } else { // nothing available try again in a few miliseconds
        xSemaphoreGive(xSpiTxAvailable);
        vTaskDelay(10 / portTICK_PERIOD_MS);
      }

      //if(1){
      if(txMessageAvailable){

        uint64_t crc = 0;
        length += 8 + 8; // frame header & CRC

        txMessageAvailable = FALSE;

        txBuffer[0]=0xAA; /*preambule*/
        txBuffer[1]=0x55; /*preambule*/
        txBuffer[2]=type;
        txBuffer[3]=counter++;
        txBuffer[4]=0x11;
        txBuffer[5]=0x11;
        txBuffer[6]=(uint8_t)((length >> 8) & 0xFF);
        txBuffer[7]=(uint8_t)(length & 0xFF);

        /* pad by zeros until divisible by 8 */
        /*for (i = 0; i < (8 - length / 8); i++){
          txBuffer[8 + length + i] = 0x00;
          }
          /* add padding and preamble length*/
        /*length = length + i + 8;
          crc = CrcDMACalculate (length, txBuffer);
          /* add crc to end of message */
        //memcpy(&crc, &txBuffer[length], 8);
        /*add crc length*/
        //length += 8;
        /*send the message*/
        //LOG_INFO("Starting transmission");
        gioSetBit(gioPORTB,1,1); // set request to transmit to active
        setupDMASpiMsgTx(length, txBuffer);
      }
    }
  }
}

void vSpiRx(void *pvParameters){
  uint8_t i = 0;
  /* rx variables */
  UBaseType_t spiRxFrameAvail = 0;
  UBaseType_t spiRxBufferPosition = 0;

  LOG_INFO("Entering SPI RX task ");

  xSpiRxFrameCnt = xSemaphoreCreateCounting(SPIRXBUFFERSIZE , 0);
  vQueueAddToRegistry(xSpiRxFrameCnt, "SPI RX byte count");

  initDMASpiRx();

  // uint8_t testMsg[100]={0xFF,0x11,0xAA,
  //                       0xAA,0x55, 0x77 /*type*/,0x11,0x22,0x33,0x00,0x10/*16bytes payload length*/,
  //                       0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,
  //                       0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F,
  //                       0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F, /*CRC*/
  //                       };
  //
  //  for(i = 0; i < 35; i++){
  //    ParseSpiRxByte(testMsg[i]);
  //  }
  //  while(1);

  mibspiTransfer(mibspiREG3, 0ul);
  while(1){
    /* number of available frames/bytes */
    spiRxFrameAvail = uxQueueMessagesWaiting(xSpiRxFrameCnt); //

    if (spiRxFrameAvail > SPIRXBUFFERSIZE / SPIFRAMESIZE){
      // if DMA has refilled whole buffer between two parsings, we need to
      // report the data loss and synchronize to head of circular buffer, or
      // else we would parse the whole buffer twice
      LOG_WARN("Buffer overrun, resynchronizing");
      for(i = 0; i < spiRxFrameAvail - SPIRXBUFFERSIZE / SPIFRAMESIZE; i++){
        xSemaphoreTake(xSpiRxFrameCnt, 0); // mark frame as parsed
      }  
      spiRxFrameAvail = spiRxFrameAvail % (SPIRXBUFFERSIZE / SPIFRAMESIZE);
    }
    while(spiRxFrameAvail--){
      for(i = 0; i < SPIFRAMESIZE; i++){
        parseSpiRxByte(spiRxBuffer[spiRxBufferPosition]);
        spiRxBufferPosition = (spiRxBufferPosition + 1) % SPIRXBUFFERSIZE;
      }
      xSemaphoreTake(xSpiRxFrameCnt, 0); // mark frame as parsed
    }
    vTaskDelay(20 / portTICK_PERIOD_MS);
  }
}


inline void parseSpiRxByte(uint8_t data){
  static SpiRxSM_t state = SPIRX_WAITINGFORPREAMBULE1BYTE;
  static uint8_t miscCnt = 0;
  static uint8_t globalCnt = 0;
  static uint64_t crc = 0;
  static uint16_t length = 0;
  static uint8_t message[SPIRXMESSAGENRMAX] = {0};
  static uint8_t lastFrameIndex = 0;

  // buffer overrun prevention - message that cannot fit is dropped
  if (globalCnt >= SPIRXMESSAGENRMAX) {
    LOG_WARN("Buffer full; SPI message dropped");
    globalCnt = 0;
    state = SPIRX_WAITINGFORPREAMBULE1BYTE;
  }

  /* parsing state machine*/
  switch (state){
  case SPIRX_WAITINGFORPREAMBULE1BYTE: /*0xAA*/
    if(0xAA == data){
      message[0] = 0xAA;
      state = SPIRX_WAITINGFORPREAMBULE2BYTE;
      globalCnt = 1;
    }
    break;
  case SPIRX_WAITINGFORPREAMBULE2BYTE: /*0x55*/
    if(0x55 == data){
      message[globalCnt] = 0x55;
      miscCnt = 0;
      globalCnt++;
      state = SPIRX_TYPE;
    } else {
      if(0xAA != data){
        state = SPIRX_WAITINGFORPREAMBULE1BYTE;
      }
    }
    break;
  case SPIRX_TYPE:
    message[globalCnt] = data;
    miscCnt = 0;
    globalCnt++;
    state = SPIRX_FRAMEID;
    break;
  case SPIRX_FRAMEID:
    // TODO: handle overflows of rxFramesDropped and rxFramesReceived
    rxFramesDropped += data - lastFrameIndex - 1;
    //if(data - lastFrameIndex - 1) {
    //  LOG_WARN("SPI frames lost %lu, total lost %lu", data - lastFrameIndex - 1, rxFramesDropped);
    //}
    lastFrameIndex = data;
    miscCnt = 0;
    globalCnt++;
    state = SPIRX_LENGTH;
    break;
  case SPIRX_LENGTH:
    message[globalCnt] = data;
    globalCnt++;
    miscCnt++;
    if(3 == miscCnt){
      length = data << 8;
    } else if(4 == miscCnt) {
      length = length | data;
      miscCnt = 0;
      if (length > SPIRXMESSAGENRMAX) {
        LOG_WARN("SPI frame longer than buffer; dropping");
        state = SPIRX_WAITINGFORPREAMBULE1BYTE;
      } else {
        state = SPIRX_PAYLOAD;
      }
    }
    break;
  case SPIRX_PAYLOAD:
    message[globalCnt] = data;
    globalCnt++;
    miscCnt++;
    if(length == miscCnt){
      miscCnt = 0;
      crc = 0;
      state = SPIRX_CRC;
    }
    break;
  case SPIRX_CRC:
    message[globalCnt]=data;
    globalCnt++;
    miscCnt++;
    if(8 == miscCnt){
      // calculate CRC
      // check if CRC is ok
      // if it is:
      // send to protobuff handler ---> later have a by type dispatcher
      // TranslateToProtobuf(uint8_t * message, uint16_t length???);
      rxFramesReceived += 1;
      streamToProtobuf(&message[8], length);
      state = SPIRX_WAITINGFORPREAMBULE1BYTE;
    } else {
      crc |= (uint64_t) data << ((8 - miscCnt)*8); /*check big/little endian*/
    }
    break;
  default:
    state = SPIRX_WAITINGFORPREAMBULE1BYTE;
    break;
  }
}

/* ----------------------------------------- TX buffer handling */
uint8_t addToSPITxSlow(uint8_t length, uint8_t * message){

  /*add message to circular buffer if there is enough space*/
  if(CBufferFree(&spiTxSlow) > (length + 1)){
    CBufferPush(&spiTxSlow, length);
    CBufferPushMultiple(&spiTxSlow, length, message);
  } else { // not engough space
    return 1;
  }
  return 0;
}

uint8_t addToSPITxFast(uint8_t length, uint8_t * message){
  uint8_t i = 0;

  for(i = 0; i < SPITXFASTNR; i++){
    if(0 == spiTxFast[i].available){ // slot available
      memcpy(spiTxFast[i].message, message, length);
      for(;length < SPITXFASTMESSAGESIZEMAX;length++){
        spiTxFast[i].message[length] = 0x00;
      }
      spiTxFast[i].available = 1; // set as taken
      return 0;
    }
  }
  return 1;
}

uint8_t ackSPITxFast(uint8_t location){
  spiTxFast[location].available = 0;
  return 0;
}

uint8_t * getFromSPITxFast(void){
  uint8_t i = 0;

  for(i = 0; i < SPITXFASTNR; i++){
    if(1 == spiTxFast[i].available){ // slot taken
      return  spiTxFast[i].message;
    }
  }
  return NULL;
}


/* ----------------------------------------- DMA setup */
void initDMASpiTx(void){
  uint8_t i;
  // initialize SPI buffers with 0xff values (instead of reset value 0x00)
  for (i = 0; i < 8; i++) {
    mibspiRAM3->tx[i].data = 0xff;
  }
  dmaReqAssign(DMA_CH1, MIBSPI3_4_DMAREQ);
  dmaEnableInterrupt(DMA_CH1, FTC);
  dmaEnableInterrupt(DMA_CH1, BTC);
  mibspiPmodeSet(mibspiREG3, PMODE_NORMAL, DATA_FORMAT0);
  dmaSetChEnable(DMA_CH1, DMA_HW); /* trigger on h/w request */

  mibspiREG3->DMACTRL[1] = ( 1ul << 31) /* Auto-disable of DMA channel after ICOUNT+1 transfers */
                         | ( 0ul << 24) /* trigger DMA transfer after this buffer was written into */
                         | ( 0ul << 20) /* RXDMA_MAPx */
                         | ( 4ul << 16) /* TXDMA_MAPx, as specified in dmaReqAssign() */
                         | ( 0ul << 15) /* Receive data DMA channel enable */
                         | ( 0ul << 14) /* Transmit data DMA channel enable (enabled later) */
                         | ( 0ul << 13) /* Non-interleaved DMA block transfer, applicable only for master mode */
                         | ( 0ul <<  8);/* ICOUNTx, reload value for DMACTRLx->COUNT (countdown of DMA reads) */
  /* Enable large count because ICOUNTx in DMACTRL is too short (only 5 bits) */
  mibspiREG3->DMACNTLEN = 1ul; /* LARGE_COUNT: 0 for DMAxCTRL; 1 for DMAxCOUNT */
  /* Against HALCoGen wishes, CS_HOLD for 8th buffer is set to 1 to achieve desired behavior */
  mibspiRAM3->tx[7].control |= (uint16)((uint16)1U << 12U);
  mibspiTransfer(mibspiREG3, 0ul);
}

void initDMASpiRx(void){
/* MibSPI settings:
    * slave mode operation
    * Rx and Tx interrupts disabled, other interrupts logged as errors
    * 8 bit SPI message length
    * 1 buffer used for incoming/outgoing traffic

  DMA settings:
    * Block transfer count is set to cover whole spiRxBuffer length
    * Transfer Type is "frame", transfer is triggered when buffer in RxRAM is filled
    * 0 byte Source Address Element Index (always re-reading same buffer)
    * 0 byte Source Address Frame Index (always re-reading same buffers)
    * FTC interrupts signal to CPU that SPIFRAMESIZE bytes are ready to be processed from SRAM
    * FTC IRQ causes increase of semaphore count, to signal the Rx task to process SPIFRAMESIZE more bytes on next pass
    * CPU can stall for maximum SPIRXBUFFERSIZE bytes before some traffic is lost
  */

  g_dmaCTRL xDmaSetup;         /* dma control packet configuration stack - Transmit Channels*/

  xDmaSetup.SADD      = (uint32)(&mibspiRAM3->rx[0].data)+1; /* source address             */
  xDmaSetup.DADD      = (uint32) spiRxBuffer;                /* destination  address       */

  xDmaSetup.CHCTRL    = 0;                                   /* channel control            */
  xDmaSetup.PORTASGN  = 4;                                   /* port b                     */
  xDmaSetup.TTYPE     = FRAME_TRANSFER;                      /* transfer type              */
  xDmaSetup.ADDMODERD = ADDR_FIXED;                         /* address mode read          */
  xDmaSetup.ADDMODEWR = ADDR_INC1;                           /* address mode write         */
  xDmaSetup.AUTOINIT  = AUTOINIT_ON;                         /* Auto-initiation mode       */

  xDmaSetup.ELCNT     = SPIFRAMESIZE;                        /* element count in a frame   */
  xDmaSetup.FRCNT     = SPIRXBUFFERSIZE / SPIFRAMESIZE;      /* frame count in a block     */

  xDmaSetup.ELSOFFSET = 0;                                   /* element source offset      */
  xDmaSetup.ELDOFFSET = SPIFRAMESIZE;                        /* element destination offset */

  xDmaSetup.FRSOFFSET = 0;                                   /* frame source offset        */
  xDmaSetup.FRDOFFSET = 0;                                   /* frame destination offset   */

  xDmaSetup.RDSIZE    = ACCESS_8_BIT;                        /* element read size          */
  xDmaSetup.WRSIZE    = ACCESS_8_BIT;                       /* element write size         */

  dmaSetCtrlPacket(DMA_CH0, xDmaSetup);
  dmaReqAssign(DMA_CH0, MIBSPI3_3_DMAREQ);
  dmaSetChEnable(DMA_CH0, DMA_HW); /* trigger on h/w request */
  dmaEnableInterrupt(DMA_CH0, FTC);
  // dmaEnableInterrupt(DMA_CH0, BTC); // might be useful to re-sync DMA with parser

  mibspiPmodeSet(mibspiREG3, PMODE_NORMAL, DATA_FORMAT0);
  mibspiREG3->DMACTRL[0] = ( 0ul << 31) /* Auto-disable of DMA channel after ICOUNT+1 transfers */
                         | ( 0ul << 24) /* trigger DMA transfer after this buffer was written into */
                         | ( 3ul << 20) /* RXDMA_MAPx, as specified in dmaReqAssign() */
                         | ( 0ul << 16) /* TXDMA_MAPx */
                         | ( 1ul << 15) /* Receive data DMA channel enable */
                         | ( 0ul << 14) /* Transmit data DMA channel enable */
                         | ( 0ul << 13) /* Non-interleaved DMA block transfer, applicable only for master mode */
                         | ( 8ul <<  8);/* ICOUNTx, reload value for DMACTRLx->COUNT (countdown of DMA reads) */
  /* Against HALCoGen wishes, CS_HOLD for 8th buffer is set to 1 to achieve desired behavior */
  mibspiRAM3->tx[7].control |= (uint16)((uint16)1U << 12U);
}

static void setupDMASpiMsgTx(uint32_t length, uint8_t * message){
  g_dmaCTRL xDmaSetup;         /* dma control packet configuration stack - Transmit Channels*/

  xDmaSetup.SADD      = (uint32)message;                     /* source address */
  xDmaSetup.DADD      = (uint32)(&mibspiRAM3->tx[0].data)+1; /* destination  address */

  xDmaSetup.CHCTRL    = 0;                                   /* channel control            */
  xDmaSetup.PORTASGN  = 4;                                   /* port b                     */
  xDmaSetup.TTYPE     = FRAME_TRANSFER;                      /* transfer type block/frame  */
  xDmaSetup.ADDMODERD = ADDR_INC1;                           /* address mode read          */
  xDmaSetup.ADDMODEWR = ADDR_FIXED;                         /* address mode write         */
  xDmaSetup.AUTOINIT  = AUTOINIT_ON;                         /* Auto-initiation mode       */
  
  xDmaSetup.ELCNT     = SPIFRAMESIZE;                        /* element count in a frame   */
  xDmaSetup.FRCNT     = length / SPIFRAMESIZE;               /* frame count in a block     */

  xDmaSetup.ELSOFFSET = SPIFRAMESIZE;                        /* element source offset      */
  xDmaSetup.ELDOFFSET = 0;                                   /* element destination offset */

  xDmaSetup.FRSOFFSET = 0;                                   /* frame destination offset   */
  xDmaSetup.FRDOFFSET = 0;                                   /* frame destination offset   */

  xDmaSetup.RDSIZE    = ACCESS_8_BIT;                        /* read size                  */
  xDmaSetup.WRSIZE    = ACCESS_8_BIT;                        /* write size                 */

  dmaSetCtrlPacket(DMA_CH1, xDmaSetup);
  /* set correct COUNT after which DMA requests are no longer issued */
  mibspiREG3->DMACOUNT[1] &= 0x0000FFFF;
  mibspiREG3->DMACOUNT[1] |= (length - 1) << 16;

  /* DMA req is disabled after COUNT reaches 0, re-enable for next transfer */
  mibspiREG3->DMACTRL[1] |= ( 1ul << 14); /* Transmit data DMA channel enable */
}

static uint64_t crcDMACalculate (uint8_t length, uint8_t * message){
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
  xDmaSetup.SADD      = (uint32)message;        /* source address             */
  xDmaSetup.DADD      = (uint32)(&(crcREG->PSA_SIGREGL1));         /* destination  address       */
  xDmaSetup.CHCTRL    = 0;               /* channel control            */
  xDmaSetup.FRCNT     = (length+1)/8 ;           /* frame count                */ /* TODO check this */
  xDmaSetup.ELCNT     = 1;               /* element count              */
  xDmaSetup.ELDOFFSET = 0;               /* element destination offset */
  xDmaSetup.ELSOFFSET = 0;               /* element source offset */
  xDmaSetup.FRDOFFSET = 0;               /* frame destination offset   */
  xDmaSetup.FRSOFFSET = 0;               /* frame source offset   */
  xDmaSetup.PORTASGN  = 4;               /* port b                     */
  xDmaSetup.RDSIZE    = ACCESS_64_BIT;     /* read size                  */
  xDmaSetup.WRSIZE    = ACCESS_64_BIT;   /* write size                 */
  xDmaSetup.TTYPE     = BLOCK_TRANSFER;  /* transfer type              */
  xDmaSetup.ADDMODERD = ADDR_INC1;     /* address mode read          */
  xDmaSetup.ADDMODEWR = ADDR_FIXED;     /* address mode write         */
  xDmaSetup.AUTOINIT  = AUTOINIT_OFF;     /* autoinit                   */

  crcChannelReset(crcREG,CRC_CH1);
  crcSetConfig(crcREG,&xCrcSetup);
  dmaSetCtrlPacket(DMA_CH3,xDmaSetup);
  dmaSetChEnable(DMA_CH3, DMA_SW);
  while((dmaREG->BTCFLAG & (1 << DMA_CH3)) == 0){
    /* wait while crc calculation finishes */
  }
  dmaREG->BTCFLAG = (1 << DMA_CH3);
  crc = crcGetSectorSig(crcREG, CRC_CH1);

  return crc;
}
