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

#include "cmCommunication.h"
#include "spiTransport.h"
#include "canbus.h"
#include "het.h"

#include "doorlock.h"

void vHeartbeat (void *pvParameters);
void vPwmTest (void *pvParameters);
void vSeatSensors(void *pvParameters);

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
  mibspiInit();
  hetInit();
  canbusInit();

  
  LOG_INFO("Creating tasks");
  task_create(vHeartbeat, "HEARTBEAT", 400, NULL, 2, NULL);
  task_create(vSpiRx, "SPIRX", 400, NULL, 1 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  task_create(vSpiTx, "SPITX", 400, NULL, 2 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  task_create(sendStatusTask, "SENDSTATUS", 800, NULL, 2, NULL);
  task_create(vSeatSensors, "SEATSENSORS", 400, NULL, 2, NULL);
  task_create(canbusTask,   "CANBUS",    400, NULL, 3 | portPRIVILEGE_BIT, NULL); // privileged mode needed for dma
  task_create(vDoorlock,  "DOORLOCK", 100, NULL, 2, NULL);

  //task_create(commandExecutionTest, "COMMANDTEST", 100, NULL, 3, NULL);
  task_create(vPwmTest, "SERVO_PWM_TEST", 100, NULL, 2, NULL);

  //vTaskStartTrace(&traceBuff[0], 255);

  /* Start the scheduler so our tasks start executing. */
  LOG_INFO("Starting scheduler");
  vTaskStartScheduler();

  /* If all is well we will never reach here as the scheduler will now be
     running.  If we do reach here then it is likely that there was insufficient
     heap available for the idle task to be created. */
  while (1);
}

void vHeartbeat(void *pvParameters) {
	while(1){
		gioToggleBit(gioPORTB, 1);
		vTaskDelay(500 / portTICK_PERIOD_MS);
	}
}
void vPwmTest(void *pvParameters) {

	pwmSetDuty(hetRAM1,pwm0, 10);
	pwmStart(hetRAM1,pwm0);


  while(1){
    gioToggleBit(gioPORTB, 1);
    pwmSetDuty(hetRAM1,pwm0, 5);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    pwmSetDuty(hetRAM1,pwm0, 10);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
  }
}

void vSeatSensors(void *pvParameters) {
	while(1) {
		uint8_t any[4] = {0};
		Set_seatOccupiedFL(0x1^gioGetBit(hetPORT1, 15));
		any[0] = Get_seatOccupiedFL();
		Set_seatOccupiedFR(0x1^gioGetBit(hetPORT1, 13));
		any[1] = Get_seatOccupiedFR();
		Set_seatOccupiedRL(0x1^gioGetBit(hetPORT1, 6));
		any[2] = Get_seatOccupiedRL();
		Set_seatOccupiedRR(0x1^gioGetBit(hetPORT1, 19));
		any[3] = Get_seatOccupiedRR();
		LOG_INFO("seats: %d %d %d %d\n", any[0], any[1], any[2], any[3]);
	    vTaskDelay(200 / portTICK_PERIOD_MS);
	}
}
