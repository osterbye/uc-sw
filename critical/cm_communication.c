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

#define RX_BUFFER_SIZE 128

void vFillStatusMessage (SpiriStatus * xSpiriStatus);
void dmaSpiRxConfigCtrlPacket(g_dmaCTRL * G_dmaCTRLPKT, uint32 sadd,uint32 dadd,uint32 dsize);
void ParseSpiRx(UBaseType_t SpiRxFrameAvail);
void ParseSpiRxByte(uint8_t * ParseByte);

SemaphoreHandle_t xSpiRxFrameCnt = NULL;
SemaphoreHandle_t xSpiTxAvailable = NULL;
uint8_t SpiRxBuffer[SPIRXBUFFERSIZE] = {0};
uint8_t SpiTxBuffer[SPIRXBUFFERSIZE] = {0};

uint16 TX_Data_Slave[16]  = { 0xAA, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20 };
uint16 RX_Data_Slave[16]  = { 0 };

void vSpiGateway (void *pvParameters){
  /* rx variables */
  UBaseType_t SpiRxFrameAvail = 0;
  xSpiRxFrameCnt = xSemaphoreCreateCounting( SPIRXBUFFERSIZE , 0 );
  /* tx variables */
  xSpiTxAvailable = xSemaphoreCreateBinary();
  vQueueAddToRegistry( xSpiTxAvailable, "SPI TX avail" );
  xSemaphoreGive(xSpiTxAvailable);

  g_dmaCTRL g_dmaCTRLPKT;         /* dma control packet configuration stack - Transmit Channels*/
  uint8_t circularBuffer[128] = {0};
  uint8_t TxBuffer[128] = {0};
  uint8_t i = 0;
  uint64_t crc = 0;
  uint8_t messageLength = 10;
  uint8_t messageLocation = 10;


  /* crc configuration */
  crcConfig_t xCrcConfig;
  xCrcConfig.crc_channel = CRC_CH1;
  xCrcConfig.mode = CRC_SEMI_CPU;
  xCrcConfig.scount = 1;
  xCrcConfig.pcount = 11;
  xCrcConfig.block_preload = 0;
  xCrcConfig.wdg_preload = 0;

  // Enable SPI DMAreqs
  spiREG3->INT0 = (spiREG3->INT0 & 0xFFFEFFFFU) | (uint32)((uint32)1U << 16U);  /* ENABLE DMAREQ */

  InitDMASpiTx();
  InitDMASpiRx();

  while(1){
    if(xSemaphoreTake(xSpiTxAvailable,0)){ //

      // figure start of message and length

      TxBuffer[0]=0xbb;
      TxBuffer[1]+=0x11;
      TxBuffer[2]=0x22;
      TxBuffer[3]=0x33;
      TxBuffer[4]=0x44;
      TxBuffer[5]=0x55;
      TxBuffer[6]=0x66;
      TxBuffer[7]=0x77;

      SetupDMASpiMsgTx(8, TxBuffer);

 
    }
#if 0
    if(1){ // message for sending available and spi free for sending

      uint8_t TxBuffer[128] = {0};
      // setup preambule
      TxBuffer[0]=0xAA;
      TxBuffer[1]=0x55;
      TxBuffer[2]=0x00;
      TxBuffer[3]=0x00;
      TxBuffer[4]=0x00;
      TxBuffer[5]=0x00;
      TxBuffer[6]=0x00;
      TxBuffer[7]=messageLength;
      // copy payload to buffer
      for(i = 0; i < messageLength; i++){
        TxBuffer[i+8] = circularBuffer[i+messageLocation];
      }
      // calculate crc (DMA)
      crcInit();
      /* - configuring dma control packets for task 2  */
      g_dmaCTRLPKT.SADD      = (uint32)TxBuffer;        /* source address             */
      g_dmaCTRLPKT.DADD      = (uint32)(&(crcREG->PSA_SIGREGL1));         /* destination  address       */
      g_dmaCTRLPKT.CHCTRL    = 0;               /* channel control            */
      g_dmaCTRLPKT.FRCNT   = (messageLength+1)/8 ;           /* frame count                */
      g_dmaCTRLPKT.ELCNT     = 1;               /* element count              */
      g_dmaCTRLPKT.ELDOFFSET = 0;               /* element destination offset */
      g_dmaCTRLPKT.ELSOFFSET = 0;               /* element source offset */
      g_dmaCTRLPKT.FRDOFFSET = 0;               /* frame destination offset   */
      g_dmaCTRLPKT.FRSOFFSET = 0;               /* frame source offset   */
      g_dmaCTRLPKT.PORTASGN  = 4;               /* port b                     */
      g_dmaCTRLPKT.RDSIZE    = ACCESS_64_BIT;     /* read size                  */
      g_dmaCTRLPKT.WRSIZE    = ACCESS_64_BIT;   /* write size                 */
      g_dmaCTRLPKT.TTYPE     = BLOCK_TRANSFER;  /* transfer type              */
      g_dmaCTRLPKT.ADDMODERD = ADDR_INC1;     /* address mode read          */
      g_dmaCTRLPKT.ADDMODEWR = ADDR_FIXED;     /* address mode write         */
      g_dmaCTRLPKT.AUTOINIT  = AUTOINIT_OFF;     /* autoinit                   */
      crcChannelReset(crcREG,CRC_CH1);
      crcSetConfig(crcREG,&xCrcConfig);
      dmaSetCtrlPacket(DMA_CH3,g_dmaCTRLPKT);
      dmaSetChEnable(DMA_CH3, DMA_SW);
      while((dmaREG->BTCFLAG & (1 << DMA_CH3)) == 0){

      }
      dmaREG->BTCFLAG = (1 << DMA_CH3);
      crc = crcGetSectorSig(crcREG, CRC_CH1);
      // add crc to end of message
      for (i = 0; i < 8; i++){
        TxBuffer[messageLength+8+i] = (crc >> ((7-i) * 8)) & 0xFF;
      }
      // send msg through spi (DMA)
    }
#endif

    /* Receive part */
    SpiRxFrameAvail = uxQueueMessagesWaiting(xSpiRxFrameCnt); //
    if(SpiRxFrameAvail >= 5){
      i++;
    }
    if(SpiRxFrameAvail){
      //ParseSpiRx(SpiRxFrameAvail);
    }
    vTaskDelay(10 / portTICK_PERIOD_MS);

  }
}

void ParseSpiRx(UBaseType_t SpiRxFrameAvail){
  static UBaseType_t SpiRxBufferPosition = 0;
  uint32_t i = 0;

  /* Parse, parse parse*/
  for(i = 0; i < SpiRxFrameAvail; i++){
    ParseSpiRxByte(&SpiRxBuffer[SpiRxBufferPosition + i]);
    //xSemaphoreAltTake(xSpiRxFrameCnt,0);
    SpiRxBufferPosition += SpiRxFrameAvail;
    if(SPIRXBUFFERSIZE <= SpiRxBufferPosition ){
      SpiRxBufferPosition -= SPIRXBUFFERSIZE;
    }
  }
  /* figure new buffer position */
  SpiRxBufferPosition += SpiRxFrameAvail;
  if(SpiRxBufferPosition > SPIRXBUFFERSIZE){
    SpiRxBufferPosition -= SPIRXBUFFERSIZE;
  }

}
void ParseSpiRxByte(uint8_t * ParseByte){
  SpiRxSM_t state = SPIRX_WAITINGFORPREAMBULE;
  /* Sparsing state machine*/

  switch (state){
  case SPIRX_WAITINGFORPREAMBULE:
    break;
  case SPIRX_TYPE:
    break;
  case SPIRX_LENGTH:
    break;
  case SPIRX_PAYLOAD:
    break;
  case SPIRX_CRC:
    break;
  default:
    state = SPIRX_WAITINGFORPREAMBULE;
    break;
  }
}
void vTestMsgGen (void *pvParameters){

  uint8_t msgBuffer[RX_BUFFER_SIZE] = {0};
  uint64_t crc = 0;

  uint8_t cnt = 0;

  /* crc configuration */
  crcConfig_t xCrcConfig;
  xCrcConfig.crc_channel = CRC_CH1;
  xCrcConfig.mode = CRC_SEMI_CPU;
  xCrcConfig.scount = 1;
  xCrcConfig.pcount = 11;
  xCrcConfig.block_preload = 0;
  xCrcConfig.wdg_preload = 0;

  uint8_t i = 0;
  g_dmaCTRL g_dmaCTRLPKTTX;         /* dma control packet configuration stack - Transmit Channels*/

  msgBuffer[0] = 0xAA;
  msgBuffer[1] = 0x55;
  msgBuffer[2] = 0x1;
  msgBuffer[3] = 0x2;
  msgBuffer[4] = 0x3;
  msgBuffer[5] = 0x4;
  msgBuffer[6] = 0x5;
  msgBuffer[7] = 0x6;

  // generate dummy data
  for (i = 0; i < (8*10); i++ ){
    msgBuffer[8+i] = i;
  }
  // crc should start from msgBuffer[88]

  while(1) {vTaskDelay(1000 / portTICK_PERIOD_MS);}
  while(1){
    cnt++;
    if (cnt > 3) { msgBuffer[0] = 0xBB; }
    crcInit();
    dmaEnable();
    /* - configuring dma control packets for task 2  */
    g_dmaCTRLPKTTX.SADD      = (uint32)msgBuffer;         /* source address             */
    g_dmaCTRLPKTTX.DADD      = (uint32)(&(crcREG->PSA_SIGREGL1));         /* destination  address       */
    g_dmaCTRLPKTTX.CHCTRL    = 0;               /* channel control            */
    g_dmaCTRLPKTTX.FRCNT   = 11;           /* frame count                */
    g_dmaCTRLPKTTX.ELCNT     = 1;               /* element count              */
    g_dmaCTRLPKTTX.ELDOFFSET = 0;               /* element destination offset */
    g_dmaCTRLPKTTX.ELSOFFSET = 0;               /* element source offset */
    g_dmaCTRLPKTTX.FRDOFFSET = 0;               /* frame destination offset   */
    g_dmaCTRLPKTTX.FRSOFFSET = 0;               /* frame source offset   */
    g_dmaCTRLPKTTX.PORTASGN  = 4;               /* port b                     */
    g_dmaCTRLPKTTX.RDSIZE    = ACCESS_64_BIT;     /* read size                  */
    g_dmaCTRLPKTTX.WRSIZE    = ACCESS_64_BIT;   /* write size                 */
    g_dmaCTRLPKTTX.TTYPE     = BLOCK_TRANSFER;  /* transfer type              */
    g_dmaCTRLPKTTX.ADDMODERD = ADDR_INC1;     /* address mode read          */
    g_dmaCTRLPKTTX.ADDMODEWR = ADDR_FIXED;     /* address mode write         */
    g_dmaCTRLPKTTX.AUTOINIT  = AUTOINIT_OFF;     /* autoinit                   */
    crcChannelReset(crcREG,CRC_CH1);
    crcSetConfig(crcREG,&xCrcConfig);
    dmaSetCtrlPacket(DMA_CH3,g_dmaCTRLPKTTX);
    dmaSetChEnable(DMA_CH3, DMA_SW);
    while((dmaREG->BTCFLAG & (1 << DMA_CH3)) == 0);
    dmaREG->BTCFLAG = (1 << DMA_CH3);
    crc = crcGetSectorSig(crcREG, CRC_CH1);
    for (i = 0; i < 8; i++){
      msgBuffer[88+i] = (crc >> ((7-i) * 8)) & 0xFF;
    }
    vTaskDelay(1000 / portTICK_PERIOD_MS);
  }


}

void vSendStatus (void *pvParameters){
  /* message buffer and other information */
  uint32_t i = 0;
  uint64_t crc = 0;
  SpiriStatus xSpiriStatus = SpiriStatus_init_zero;

  size_t message_length;
  bool status;

  // spi configuration
  spiDAT1_t xSpiConfig;
  xSpiConfig.CS_HOLD = FALSE;
  xSpiConfig.WDEL    = TRUE;
  xSpiConfig.DFSEL   = SPI_FMT_0;
  xSpiConfig.CSNR    = 0xFE;

  while(1){vTaskDelay(1000 / portTICK_PERIOD_MS);};

  while(1){

    uint8_t buffer[128] = {0};
    uint8_t tmp8 = 0;

    /* crc configuration */
    crcModConfig_t xCrcModConfig;
    xCrcModConfig.crc_channel = CRC_CH1;
    xCrcModConfig.data_length = 2; // 2x64 bit
    xCrcModConfig.src_data_pat = (uint64 *)buffer;
    xCrcModConfig.mode = CRC_SEMI_CPU;
    /* protobuf stream setup; place message at byte 9 */
    pb_ostream_t stream = pb_ostream_from_buffer(&buffer[8], sizeof(buffer)-8);

    /* Get all of the values needed*/
    vFillStatusMessage(&xSpiriStatus);

    /* Generate protobuf message */
    status = pb_encode(&stream, SpiriStatus_fields, &xSpiriStatus);
    message_length = stream.bytes_written;

    /* Generate and add header */
    /* 2 byte preambule AA55
     * 1 byte frame type - protobuf 1
     * 2 byte CRC
     * 4 byte length
     *
     */
    buffer[0] = 0xAA;
    buffer[1] = 0x55;
    buffer[2] = 1; // message type / protobuf type
    buffer[3] = 0;
    for(i = 0; i<4; i++){
      buffer[i + 4] = (message_length >> ((3-i) * 8)) & 0xFF;
    }

    /* generate crc */
    xCrcModConfig.data_length = message_length / 8 + 1; // in 64bit increments
    crcChannelReset(crcREG,CRC_CH1);
    crcSignGen(crcREG,&xCrcModConfig);
    crc = crcGetPSASig(crcREG,CRC_CH1);
    /* copy crc to buffer, put it at the end of the message.
     * The message is padded by zeros to be 64bit divisible */
    for (i = 0; i < 8; i++){
      tmp8 = (crc >> ((7-i) * 8)) & 0xFF;
      //buffer[i + 8 + xCrcModConfig.data_length * 8] = (crc >> ((7-i) * 8)) & 0xFF;
      buffer[i + 8 + xCrcModConfig.data_length * 8] = tmp8;
    }
    /* Send message via spi */
    //spiTransmitData(spiREG1, &xSpiConfig, (xCrcModConfig.data_length * 8 + 8 + 8) / 2, buffer );
    //    spiTransmitData(spiREG1, &xSpiConfig, (xCrcModConfig.data_length + 2) * 4, (uint16_t*) buffer );
    vTaskDelay(1000 / portTICK_PERIOD_MS);
  }

}

void vFillStatusMessage(SpiriStatus * xSpiriStatus){

  xSpiriStatus->avgChargerCurrent = 32;
  xSpiriStatus->has_avgChargerCurrent = 1;
  xSpiriStatus->breakLight = 1;
  xSpiriStatus->has_breakLight = 1;
  xSpiriStatus->fanDCDCState = 1;
  xSpiriStatus->has_fanDCDCState = 1;
  xSpiriStatus->DRL = 1;
  xSpiriStatus->has_DRL = 1;

  return;
}

void dmaSpiRxConfigCtrlPacket(g_dmaCTRL * g_dmaCTRLPKT, uint32 sadd,uint32 dadd,uint32 dsize)
{
  g_dmaCTRLPKT->SADD      = sadd+2;         /* source address             */
  g_dmaCTRLPKT->DADD      = dadd;         /* destination  address       */
  g_dmaCTRLPKT->CHCTRL    = 0;                 /* channel control            */
  g_dmaCTRLPKT->FRCNT    = 8;                 /* frame count                */
  g_dmaCTRLPKT->ELCNT     = dsize;             /* element count              */
  g_dmaCTRLPKT->ELDOFFSET = 0;                 /* element destination offset */
  g_dmaCTRLPKT->ELSOFFSET = 0;              /* element source offset      */
  g_dmaCTRLPKT->FRDOFFSET = 0;              /* frame destination offset   */
  g_dmaCTRLPKT->FRSOFFSET = 0;                 /* frame destination offset   */
  g_dmaCTRLPKT->PORTASGN  = 4;                 /* port b                     */
  g_dmaCTRLPKT->RDSIZE    = ACCESS_16_BIT;    /* read size                  */
  g_dmaCTRLPKT->WRSIZE    = ACCESS_64_BIT;      /* write size                 */
  g_dmaCTRLPKT->TTYPE     = FRAME_TRANSFER ;   /* transfer type              */
  g_dmaCTRLPKT->ADDMODERD = ADDR_FIXED;        /* address mode read          */
  g_dmaCTRLPKT->ADDMODEWR = ADDR_INC1;         /* address mode write         */
  g_dmaCTRLPKT->AUTOINIT  = AUTOINIT_ON;       /* autoinit                   */
}

void InitDMASpiTx(void){
  /* - assigning dma request: channel-1 with request line - 15 (SPI3 Transmit DMA Request) */
  dmaReqAssign(DMA_CH1,15);
  dmaEnableInterrupt(DMA_CH1, BTC);

}

void InitDMASpiRx(void){
	g_dmaCTRL g_dmaCTRLPKT;         /* dma control packet configuration stack - Transmit Channels*/

  /* - assigning dma request: channel-0 with request line - 14 (SPI3 Receive DMA Request)*/
  dmaReqAssign(DMA_CH0,14);
  dmaEnableInterrupt(DMA_CH0, FTC);

  g_dmaCTRLPKT.SADD      = (uint32)(&spiREG3->BUF)+3;    /* source address             */
  g_dmaCTRLPKT.DADD      = (uint32)SpiRxBuffer;          /* destination  address       */
  g_dmaCTRLPKT.CHCTRL    = 0;                 /* channel control            */
  //g_dmaCTRLPKT.FRCNT     = SPIRXBUFFERSIZE / 8;                 /* frame count                */
  g_dmaCTRLPKT.FRCNT     = 8;                 /* frame count                */
  g_dmaCTRLPKT.ELCNT     = 1;                 /* element count              */
  g_dmaCTRLPKT.ELDOFFSET = 0;                 /* element destination offset */
  g_dmaCTRLPKT.ELSOFFSET = 0;                   /* element source offset      */
  g_dmaCTRLPKT.FRDOFFSET = 0;                   /* frame destination offset   */
  g_dmaCTRLPKT.FRSOFFSET = 0;                 /* frame destination offset   */
  g_dmaCTRLPKT.PORTASGN  = 4;                 /* port b                     */
  g_dmaCTRLPKT.RDSIZE    = ACCESS_8_BIT;      /* read size                  */
  g_dmaCTRLPKT.WRSIZE    = ACCESS_8_BIT;        /* write size                 */
  g_dmaCTRLPKT.TTYPE     = FRAME_TRANSFER ;   /* transfer type              */
  g_dmaCTRLPKT.ADDMODERD = ADDR_FIXED;        /* address mode read          */
  g_dmaCTRLPKT.ADDMODEWR = ADDR_INC1;         /* address mode write         */
  g_dmaCTRLPKT.AUTOINIT  = AUTOINIT_ON;       /* autoinit                   */
  // - setting DMA control packets
  dmaSetCtrlPacket(DMA_CH0,g_dmaCTRLPKT);
  // - setting the DMA channel to trigger on h/w request */
  dmaSetChEnable(DMA_CH0, DMA_HW);

}

void SetupDMASpiMsgTx(uint32_t length, uint8_t * message){
	g_dmaCTRL g_dmaCTRLPKT;         /* dma control packet configuration stack - Transmit Channels*/

     g_dmaCTRLPKT.SADD      = (uint32)message + 1;        /* source address */
      g_dmaCTRLPKT.DADD      = (uint32)(&spiREG3->DAT0)+3;  /* destination  address       */
      g_dmaCTRLPKT.CHCTRL    = 0;                 /* channel control            */
      g_dmaCTRLPKT.FRCNT     = length - 1;        /* frame count                */
      g_dmaCTRLPKT.ELCNT     = 1;                 /* element count              */
      g_dmaCTRLPKT.ELDOFFSET = 0;                 /* element destination offset */
      g_dmaCTRLPKT.ELSOFFSET = 0;                 /* element source offset      */
      g_dmaCTRLPKT.FRDOFFSET = 0;                 /* frame destination offset   */
      g_dmaCTRLPKT.FRSOFFSET = 0;                 /* frame destination offset   */
      g_dmaCTRLPKT.PORTASGN  = 4;                 /* port b                     */
      g_dmaCTRLPKT.RDSIZE    = ACCESS_8_BIT;      /* read size                  */
      g_dmaCTRLPKT.WRSIZE    = ACCESS_8_BIT;        /* write size                 */
      g_dmaCTRLPKT.TTYPE     = FRAME_TRANSFER ;   /* transfer type block/frame  */
      g_dmaCTRLPKT.ADDMODERD = ADDR_INC1;         /* address mode read          */
      g_dmaCTRLPKT.ADDMODEWR = ADDR_FIXED;        /* address mode write         */
      g_dmaCTRLPKT.AUTOINIT  = AUTOINIT_OFF;      /* autoinit                   */
      // - setting DMA control packets
      dmaSetCtrlPacket(DMA_CH1,g_dmaCTRLPKT);
      // - setting the DMA channel to trigger on h/w request */
      dmaSetChEnable(DMA_CH1, DMA_HW);
      // start the transmission
      spiREG3->DAT0 = (uint32)*message;
}

void vSpiTest (void *pvParameters){

  /* Works with bus pirate settings
   * SPI 125kHZ
   * Clock polarity idle high
   * Output clock edge Active to idle
   * Input sample phase End
   * /CS
   * Open drain
   */

  uint8_t i = 0;

  spiDAT1_t dataconfig1_t;

  dataconfig1_t.CS_HOLD = FALSE;
  dataconfig1_t.WDEL    = FALSE;
  dataconfig1_t.DFSEL   = SPI_FMT_0;
  dataconfig1_t.CSNR    = 0xFE;

  spiInit();

  while(1){
    i++;
    //spiSendAndGetData(spiREG3, &dataconfig1_t, 3, TX_Data_Slave, RX_Data_Slave);
    spiTransmitAndReceiveData(spiREG3, &dataconfig1_t, 3, TX_Data_Slave, RX_Data_Slave);

    vTaskDelay(1000 / portTICK_PERIOD_MS);
  }


}

