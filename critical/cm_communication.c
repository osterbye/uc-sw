/*
 * cm_communication.c
 *
 *  Created on: Aug 30, 2016
 *      Author: lovro
 */

/* Standard includes. */
#include <stdio.h>

/* Halcogen includes */
#include "gio.h"
#include "crc.h"
#include "spi.h"
#include "sys_dma.h"

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "os_task.h"
#include "os_queue.h"
#include "os_semphr.h"

/* nanopb */
#include "nanopb/pb_decode.h"
#include "nanopb/pb_encode.h"
#include "nanopb/CCU_internal.pb.h"

/* project includes */
#include "globalState.h"
#include "cm_communication.h"

#include "system.h"
#include "sys_common.h"

#include "cbuffer.h"
#include "logging.h"

inline void ParseSpiRxByte(uint8_t data);

void InitDMASpiRx(void);
void InitDMASpiTx(void);
void SetupDMASpiMsgTx(uint32_t length, uint8_t * message);
uint64_t CrcDMACalculate (uint8_t length, uint8_t * message);

SemaphoreHandle_t xSpiRxFrameCnt = NULL;
SemaphoreHandle_t xSpiTxAvailable = NULL;
// Spi Rx buffers 
uint8_t spiRxBuffer[SPIRXBUFFERSIZE] = {0};

// Spi Tx buffers
#define SPITXFASTNR 10 /* number of fast spi slots available*/
#define SPITXFASTMESSAGESIZEMAX 10 /*maximum message size*/
typedef struct{
  uint8_t message[SPITXFASTMESSAGESIZEMAX];
  uint8_t available;
  uint8_t ackTimer;
}spiTxFast_t;
spiTxFast_t spiTxFast[SPITXFASTNR] = {0};

#define SPITXSLOWBUFFERSIZE 100

uint8_t spiTxSlowBuffer[SPITXSLOWBUFFERSIZE] = {0};
CBuffer_t spiTxSlow = {
  .size = SPITXSLOWBUFFERSIZE,
  .head = 1,
  .tail = 0,
  .data = spiTxSlowBuffer
};


void vSpiTx(void *pvParameters){
  uint8_t txBuffer[SPITXBUFFERSIZE] = {0};
  uint8_t i = 0;

  LOG_INFO("Entering SPI TX task \n\r");

  /* Semaphore to signal end of transmission */
  xSpiTxAvailable = xSemaphoreCreateBinary();
  vQueueAddToRegistry( xSpiTxAvailable, "SPI TX available" );
  xSemaphoreGive(xSpiTxAvailable);

  InitDMASpiTx();
  uint8_t txMessageAvailable = TRUE;



  while(1){

    if(pdTRUE == xSemaphoreTake(xSpiTxAvailable,portMAX_DELAY)){ /*Transmission finished?*/

      uint16_t length = 0x2244;
      uint8_t * FastMessage = 0;

      uint8_t type = 0;

      FastMessage = GetFromSPITxFast();
      if(NULL != FastMessage){ 
        length = SPITXFASTMESSAGESIZEMAX;
        memcpy(&txBuffer[8], FastMessage, length);
        txMessageAvailable = TRUE;
      } else if(CBufferTaken(&spiTxSlow)){ // check if a message is available
        length = CBufferPop(&spiTxSlow);
        /* TODO check if message is longer than tx buffer size */
        CBufferPopMultiple(&spiTxSlow, length, &txBuffer[8]);
        txMessageAvailable = TRUE;
      } else { // nothing available try again in a few miliseconds
        //xSemaphoreGive(xSpiTxAvailable);
        vTaskDelay(10 / portTICK_PERIOD_MS);
      }

      //if(1){
      if(txMessageAvailable){

        uint64_t crc = 0;

        txMessageAvailable = FALSE;

        txBuffer[0]=0xAA; /*preambule*/
        txBuffer[1]=0x55; /*preambule*/
        txBuffer[2]=type; /*TODO check this in the documentation !!*/
        txBuffer[3]=0x11;
        txBuffer[4]=0x11;
        txBuffer[5]=0x11;
        txBuffer[6]=(uint8_t)(length & 0xFF);
        txBuffer[7]=(uint8_t)((length >> 8) & 0xFF);

        length = 0; // todo delete this

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
        length+=8;
        LOG_DEBUG("Starting transmission\n\r");
        gioSetBit(gioPORTB,1,1); // set request to transmitt to active
        SetupDMASpiMsgTx(length, txBuffer);
      }
    }
  }
}



void vSpiRx(void *pvParameters){
  uint8_t i = 0;
  /* rx variables */
  UBaseType_t spiRxFrameAvail = 0;
  UBaseType_t spiRxBufferPosition = 0;

  LOG_INFO("Entering SPI RX task \n\r");

  xSpiRxFrameCnt = xSemaphoreCreateCounting( SPIRXBUFFERSIZE , 0 );
  vQueueAddToRegistry( xSpiRxFrameCnt, "SPI RX byte count" );

  InitDMASpiRx();

  uint8_t testMsg[100]={0xFF,0x11,0xAA,
                        0xAA,0x55, 0x77 /*type*/,0x11,0x22,0x33,0x00,0x10/*16bytes payload length*/,
                        0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,
                        0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F,
                        0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F, /*CRC*/
                        };

  for(i = 0; i < 35; i++){
    ParseSpiRxByte(testMsg[i]);
  }

  //while(1);

  while(1){
    /* number of available frames/bytes */
    spiRxFrameAvail = uxQueueMessagesWaiting(xSpiRxFrameCnt); //
    if(spiRxFrameAvail){
      /* Parse the next spiRxFrameAvail bytes*/
      for(i = 0; i < spiRxFrameAvail; i++){
        ParseSpiRxByte(spiRxBuffer[spiRxBufferPosition]);
        xSemaphoreTake(xSpiRxFrameCnt,0);
        LOG_DEBUG("Received SPI byte: %02X \n\r", spiRxBuffer[spiRxBufferPosition]);
        /*update buffer end position*/
        spiRxBufferPosition++;
        if(spiRxBufferPosition >= SPIRXBUFFERSIZE){
          spiRxBufferPosition = 0;
        }
      }
    }

    vTaskDelay(10 / portTICK_PERIOD_MS);

  }

}


inline void ParseSpiRxByte(uint8_t data){
  static SpiRxSM_t state = SPIRX_WAITINGFORPREAMBULE1BYTE;
  static uint8_t miscCnt = 0;
  static uint8_t globalCnt = 0;
  static uint64_t crc = 0;
  static uint16_t length = 0;
  static uint8_t message[SPIRXMESSAGENRMAX] = {0};

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
    state = SPIRX_LENGTH;
    break;
  case SPIRX_LENGTH:
    message[globalCnt] = data;
    globalCnt++;
    miscCnt++;
    if(4 == miscCnt){
      length = data << 8; /* TODO check big/little endian*/
    } else if(5 == miscCnt){
      length = length | data;
      miscCnt = 0;
      state = SPIRX_PAYLOAD;
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
      // TranslateToProtobuf(&message[8], length);
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

/* Stream to protobuff decoding */
TranslateToProtobuf(uint8_t * message, uint16_t length){
  pb_istream_t stream = pb_istream_from_buffer(message, length);
}



/* ----------------------------------------- TX buffer handling */

uint8_t AddToSPITxSlow(uint8_t length, uint8_t * message){

  /*add message to circular buffer if there is enough space*/
  if(CBufferFree(&spiTxSlow) > (length + 1)){
    CBufferPush(&spiTxSlow, length);
    CBufferPushMultiple(&spiTxSlow, length, message);
  } else { // not engough space  
    return 1; 
  }
	return 0;
}
uint8_t AddToSPITxFast(uint8_t length, uint8_t * message){
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

uint8_t AckSPITxFast(uint8_t location){
  spiTxFast[location].available = 0;
  return 0;
}

uint8_t * GetFromSPITxFast(void){
  uint8_t i = 0;

  for(i = 0; i < SPITXFASTNR; i++){
    if(1 == spiTxFast[i].available){ // slot taken
      return  spiTxFast[i].message;
    }
  }
  return NULL;
}


/* ----------------------------------------- DMA setup */
void InitDMASpiTx(void){
  /* - assigning dma request: channel-1 with request line - 15 (SPI3 Transmit DMA Request) */
  dmaReqAssign(DMA_CH1,15);
  dmaEnableInterrupt(DMA_CH1, BTC);

}

void InitDMASpiRx(void){
  g_dmaCTRL xDmaSetup;         /* dma control packet configuration stack - Transmit Channels*/

  /* - assigning dma request: channel-0 with request line - 14 (SPI3 Receive DMA Request)*/
  dmaReqAssign(DMA_CH0,14);
  dmaEnableInterrupt(DMA_CH0, FTC);

  xDmaSetup.SADD      = (uint32)(&spiREG3->BUF)+3;    /* source address             */
  xDmaSetup.DADD      = (uint32)spiRxBuffer;          /* destination  address       */
  xDmaSetup.CHCTRL    = 0;                 /* channel control            */
  xDmaSetup.FRCNT     = SPIRXBUFFERSIZE;                 /* frame count                */
  //xDmaSetup.FRCNT     = 8;                 /* frame count                */
  xDmaSetup.ELCNT     = 1;                 /* element count              */
  xDmaSetup.ELDOFFSET = 0;                 /* element destination offset */
  xDmaSetup.ELSOFFSET = 0;                   /* element source offset      */
  xDmaSetup.FRDOFFSET = 0;                   /* frame destination offset   */
  xDmaSetup.FRSOFFSET = 0;                 /* frame destination offset   */
  xDmaSetup.PORTASGN  = 4;                 /* port b                     */
  xDmaSetup.RDSIZE    = ACCESS_8_BIT;      /* read size                  */
  xDmaSetup.WRSIZE    = ACCESS_8_BIT;        /* write size                 */
  xDmaSetup.TTYPE     = FRAME_TRANSFER ;   /* transfer type              */
  xDmaSetup.ADDMODERD = ADDR_FIXED;        /* address mode read          */
  xDmaSetup.ADDMODEWR = ADDR_INC1;         /* address mode write         */
  xDmaSetup.AUTOINIT  = AUTOINIT_ON;       /* autoinit                   */
  // - setting DMA control packets
  dmaSetCtrlPacket(DMA_CH0,xDmaSetup);
  // - setting the DMA channel to trigger on h/w request */
  dmaSetChEnable(DMA_CH0, DMA_HW);

}

void SetupDMASpiMsgTx(uint32_t length, uint8_t * message){
  g_dmaCTRL xDmaSetup;         /* dma control packet configuration stack - Transmit Channels*/

  xDmaSetup.SADD      = (uint32)message + 1;        /* source address */
  xDmaSetup.DADD      = (uint32)(&spiREG3->DAT0)+3;  /* destination  address */
  xDmaSetup.CHCTRL    = 0;                 /* channel control            */
  xDmaSetup.FRCNT     = length;            /* frame count                */
  xDmaSetup.ELCNT     = 1;                 /* element count              */
  xDmaSetup.ELDOFFSET = 0;                 /* element destination offset */
  xDmaSetup.ELSOFFSET = 0;                 /* element source offset      */
  xDmaSetup.FRDOFFSET = 0;                 /* frame destination offset   */
  xDmaSetup.FRSOFFSET = 0;                 /* frame destination offset   */
  xDmaSetup.PORTASGN  = 4;                 /* port b                     */
  xDmaSetup.RDSIZE    = ACCESS_8_BIT;      /* read size                  */
  xDmaSetup.WRSIZE    = ACCESS_8_BIT;      /* write size                 */
  xDmaSetup.TTYPE     = FRAME_TRANSFER ;   /* transfer type block/frame  */
  xDmaSetup.ADDMODERD = ADDR_INC1;         /* address mode read          */
  xDmaSetup.ADDMODEWR = ADDR_FIXED;        /* address mode write         */
  xDmaSetup.AUTOINIT  = AUTOINIT_OFF;      /* autoinit                   */
  // - setting DMA control packets
  dmaSetCtrlPacket(DMA_CH1,xDmaSetup);
  // - setting the DMA channel to trigger on h/w request */
  dmaSetChEnable(DMA_CH1, DMA_HW);
  // start the transmission
  spiREG3->DAT0 = (uint32)*message;
}

uint64_t CrcDMACalculate (uint8_t length, uint8_t * message){
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
