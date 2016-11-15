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
																									\
void vApplicationMallocFailedHook( void ) {
	LOG_CRITICAL("Application malloc failed, bigger heap needed?");
}

void task_create(TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth,
		void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask) {

    BaseType_t retval = xTaskCreate(pxTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pxCreatedTask);
    if (retval != pdPASS) {
        LOG_CRITICAL("Task %s could not be created, error %d", pcName, retval);
    }
}


void main(void){
  loggingInit();
  gioInit(); // General input output
  dmaEnable();
  spiInit();
  canbusInit();
  // Enable SPI3 DMAreqs
  spiREG3->INT0 = (spiREG3->INT0 & 0xFFFEFFFFU) | (uint32)((uint32)1U << 16U);  /* ENABLE DMAREQ */
  
  LOG_INFO("Creating tasks");
  task_create(vHeartbeat, "HEARTBEAT", 400, NULL, 2, NULL);
  task_create(vSpiRx, "SPIRX", 400, NULL, 1 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  task_create(vSpiTx, "SPITX", 400, NULL, 2 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  //task_create(vSendStatus, "SENDSTATUS", 400, NULL, 2, NULL);
  task_create(canbusTask,   "CANBUS",    400, NULL, 3 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  task_create(vDoorlock,  "DOORLOCK", 100, NULL, 2, NULL);
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
