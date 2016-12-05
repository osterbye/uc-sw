#include "doorlock.h"
#include "FreeRTOS.h"
#include "os_task.h"
#include "gio.h"
#include "logging.h"

enum doorRequest {
	DOOR_NOREQUEST = -1,
	DOOR_UNLOCK = 0,
	DOOR_LOCK = 1,
};

static enum doorRequest requestedDoorState = DOOR_NOREQUEST;

void doorlockRequestState(bool locked) {
	if (locked)
		LOG_INFO("Locking door");
	else
		LOG_INFO("Unlocking door");
	requestedDoorState = locked ? DOOR_LOCK : DOOR_UNLOCK;
}

void vDoorlock (void *pvParameters){

	while (1) {
		if (requestedDoorState == DOOR_LOCK) {
			gioSetBit(DOOR_LOCK_PORT, DOOR_LOCK_NUM, 1);
			gioSetBit(DOOR_UNLOCK_PORT, DOOR_UNLOCK_NUM, 0);
			vTaskDelay(500 / portTICK_PERIOD_MS);
			if (requestedDoorState == DOOR_LOCK) {
				requestedDoorState = DOOR_NOREQUEST;
			}
		}

		if (requestedDoorState == DOOR_UNLOCK) {
			gioSetBit(DOOR_UNLOCK_PORT, DOOR_UNLOCK_NUM, 1);
			gioSetBit(DOOR_LOCK_PORT, DOOR_LOCK_NUM, 0);
			vTaskDelay(500 / portTICK_PERIOD_MS);
			if (requestedDoorState == DOOR_UNLOCK) {
				requestedDoorState = DOOR_NOREQUEST;
			}
		}

		if (requestedDoorState == DOOR_NOREQUEST) {
			gioSetBit(DOOR_LOCK_PORT, DOOR_LOCK_NUM, 0);
			gioSetBit(DOOR_UNLOCK_PORT, DOOR_UNLOCK_NUM, 0);
			vTaskDelay(50 / portTICK_PERIOD_MS);
		}
	}
}
