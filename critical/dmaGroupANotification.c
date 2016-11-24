#include "esm.h"
#include "sys_selftest.h"
#include "adc.h"
#include "can.h"
#include "gio.h"
#include "sci.h"
#include "spi.h"
#include "het.h"
#include "dcc.h"
#include "i2c.h"
#include "crc.h"
#include "etpwm.h"
#include "eqep.h"
#include "ecap.h"
#include "sys_dma.h"

#include "FreeRTOS.h"
#include "os_queue.h"
#include "os_semphr.h"

#include "canbus.h"
#include "spiTransport.h"
#include "cmCommunication.h"
#include "dmaGroupANotification.h"


/* DMA interrupt request routine is shared between different modules:

    CH0   SPI Rx
    CH1   SPI Tx
    CH13  DCAN1 Rx
    CH14  DCAN2 Rx
    CH15  DCAN3 Rx
*/

void dmaGroupANotification(dmaInterrupt_t inttype, uint32 channel)
{
/*  enter user code between the USER CODE BEGIN and USER CODE END. */
/* USER CODE BEGIN (54) */
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    switch (channel){
    case DMA_CH0: // SPI RX DMA channel
        if(FTC == inttype){ /* Frame transfer complete interrupt*/
            xSemaphoreGiveFromISR(xSpiRxFrameCnt,&xHigherPriorityTaskWoken); // XXX todo check waking up of the task
        }
        break;
    case DMA_CH1: // SPI TX DMA channel
        if(BTC == inttype){
            gioSetBit(gioPORTB,1,0); // set request to transmit to active
            xSemaphoreGiveFromISR(xSpiTxAvailable,&xHigherPriorityTaskWoken); // XXX todo check waking up of the task
        }
        break;
    case DMA_CH13: // fall-through
    case DMA_CH14: // fall-through
    case DMA_CH15:
        canbusDmaNotification(inttype, channel);
        break;
    default:
        break;
    }
/* USER CODE END */
}
