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

#include "os_task.h"
#include "os_queue.h"
#include "os_semphr.h"

#include "cm_communication.h"

/* other headers */
#include "globalState.h"

#define RX_BUFFER_SIZE 128

void vHeartbeat (void *pvParameters);

void main(void){

	gioInit(); // General input output
	dmaEnable();
	spiInit();

	//xTaskCreate( vTask1, "Task 1", 340, NULL, 2, NULL );

	xTaskCreate( vHeartbeat, "HEARTBEAT", 400, NULL, 2, NULL );
	xTaskCreate( vSpiGateway, "SPIGATEWAY", 400, NULL, 2 | portPRIVILEGE_BIT, NULL ); // privileged mode needed for dma

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
