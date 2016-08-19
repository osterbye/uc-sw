/*
 * main.c
 */
/* Standard includes. */
#include <stdio.h>

/* Halcogen includes */
#include "gio.h"

/* FreeRTOS includes */
#include "FreeRTOS.h"

#include "os_task.h"
#include "os_queue.h"
#include "os_semphr.h"



void vHeartbeat (void *pvParameters);

void main(void){

	gioInit(); // General input output

	//xTaskCreate( vTask1, "Task 1", 340, NULL, 2, NULL );

	xTaskCreate( vHeartbeat, "HEARTBEAT", 400, NULL, 2, NULL );

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
		gioToggleBit(gioPORTA, 2);
		vTaskDelay(500 / portTICK_PERIOD_MS);
	}
}
