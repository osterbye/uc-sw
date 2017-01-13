/*
 * main.c
 */
/* Standard includes. */
#include <stdio.h>

/* Halcogen includes */
#include "gio.h"
#include "het.h"
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
#include "pinDescriptions.h"
#include "globalState.h"
#include "logging.h"
#include "cmCommunication.h"
#include "spiTransport.h"
#include "canbus.h"
#include "subsystems/Comfort.h"


void HeartbeatTask (void *pvParameters);
void taskCreate(TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth,
		void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask);


void main(void){
  loggingInit();
  gioInit(); // General input output
  dmaEnable();
  spiInit();
  hetInit();
  canbusInit();
  // Enable SPI3 DMAreqs
  spiREG3->INT0 = (spiREG3->INT0 & 0xFFFEFFFFU) | (uint32)((uint32)1U << 16U);  /* ENABLE DMAREQ */
  
  LOG_INFO("Creating tasks");
  taskCreate(HeartbeatTask, "HEARTBEAT", 400, NULL, 2, NULL);
  taskCreate(taskSpiRx, "SPIRX", 400, NULL, 1 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  taskCreate(taskSpiTx, "SPITX", 400, NULL, 2 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  taskCreate(taskCmSendStatus, "SENDSTATUS", 800, NULL, 2, NULL);
  taskCreate(taskSeatSensors, "SEATSENSORS", 400, NULL, 2, NULL);
  taskCreate(canbusTask,   "CANBUS",    400, NULL, 3 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  taskCreate(doorlockTask,  "DOORLOCK", 100, NULL, 2, NULL);
  /* tasks for testing parts of the code */
  //taskCreate(taskCmCommandExecutionTest, "COMMANDTEST", 100, NULL, 3, NULL);

  //vTaskStartTrace(&traceBuff[0], 255);

  /* Start the scheduler so our tasks start executing. */
  LOG_INFO("Starting scheduler");
  vTaskStartScheduler();

  /* If all is well we will never reach here as the scheduler will now be
     running.  If we do reach here then it is likely that there was insufficient
     heap available for the idle task to be created. */
  while (1);
}

/**
 * Blinks a LED to indicate funcitoning of the RTOS
 */
void HeartbeatTask(void *pvParameters) {
	while(1){
		gioToggleBit(ledGreen.port, ledGreen.pin);
		vTaskDelay(500 / portTICK_PERIOD_MS);
	}
}

/**
 * Hook for detecting and logging problems with allocation memory
 */
void vApplicationMallocFailedHook(void) {
	LOG_CRITICAL("Application malloc failed, bigger heap needed?");
}

/**
 * Wrapper around xTaskCreate to detect and log problems with creating tasks
 */
void taskCreate(TaskFunction_t pxTaskCode, const char * const pcName, const uint16_t usStackDepth,
		void * const pvParameters, UBaseType_t uxPriority, TaskHandle_t * const pxCreatedTask) {

    BaseType_t retval = xTaskCreate(pxTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pxCreatedTask);
    if (retval != pdPASS) {
        LOG_CRITICAL("Task %s could not be created, error %d", pcName, retval);
    }
}
