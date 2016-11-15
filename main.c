/*
 * main.c
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

#include "sys_core.h"
#include "os_task.h"
#include "os_queue.h"
#include "os_semphr.h"

/* other headers */
#include "globalState.h"
#include "logging.h"

#include "cm_communication.h"
#include "canbus.h"

#include "doorlock.h"

void vHeartbeat (void *pvParameters);

void main(void){
  loggingInit();
  gioInit(); // General input output
  dmaEnable();
  spiInit();
  canbusInit();
  // Enable SPI3 DMAreqs
  spiREG3->INT0 = (spiREG3->INT0 & 0xFFFEFFFFU) | (uint32)((uint32)1U << 16U);  /* ENABLE DMAREQ */
  
  //xTaskCreate( vTask1, "Task 1", 340, NULL, 2, NULL );
  LOG_INFO("Creating tasks");
  xTaskCreate( vHeartbeat, "HEARTBEAT", 400, NULL, 2, NULL );
  xTaskCreate( vSpiRx, "SPIRX", 400, NULL, 1 | portPRIVILEGE_BIT, NULL ); // privileged mode needed for dma
  xTaskCreate( vSpiTx, "SPITX", 400, NULL, 2 | portPRIVILEGE_BIT, NULL ); // privileged mode needed for dma
  //xTaskCreate( vSendStatus, "SENDSTATUS", 400, NULL, 2, NULL );
  xTaskCreate(canbusTask,   "CANBUS",    400, NULL, 2 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  xTaskCreate( vDoorlock,  "DOORLOCK", 100, NULL, 2, NULL );
  //vTaskStartTrace(&traceBuff[0], 255);

  /* Start the scheduler so our tasks start executing. */
  LOG_INFO("Starting scheduler");
  vTaskStartScheduler();

  /* If all is well we will never reach here as the scheduler will now be
     running.  If we do reach here then it is likely that there was insufficient
     heap available for the idle task to be created. */
  while (1);
}

void vHeartbeat (void *pvParameters){
  while(1){
	  gioToggleBit(gioPORTB, 1);
    vTaskDelay(500 / portTICK_PERIOD_MS);
  }
}
