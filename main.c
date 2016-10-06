/*
 * main.c
 */
/* Standard includes. */
#include <stdio.h>

/* Halcogen includes */
#include "gio.h"

/* FreeRTOS includes */
#include "FreeRTOS.h"

#include "sys_core.h"
#include "os_task.h"
#include "os_queue.h"
#include "os_semphr.h"

#include "cm_communication.h"

/* other headers */
#include "globalState.h"
#include "canbus.h"
#include "logging.h"

void vHeartbeat (void *pvParameters);

void main(void){
	_enable_interrupt_();
	gioInit(); // General input output
	loggingInit();
	canbusInit();

	//xTaskCreate( vTask1, "Task 1", 340, NULL, 2, NULL );
	LOG_INFO("Starting HEARTBEAT task\n");
	xTaskCreate( vHeartbeat,  "HEARTBEAT", 400, NULL, 2, NULL );
	LOG_INFO("Starting SENDSTATUS task\n");
	xTaskCreate( vSendStatus, "SENDSTATUS", 400, NULL, 2, NULL );
	LOG_INFO("Starting CANBUS task\n");
	xTaskCreate(canbusTask,   "CANBUS",    400, NULL, 2 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma

	//vTaskStartTrace(&traceBuff[0], 255);

	/* Start the scheduler so our tasks start executing. */
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
