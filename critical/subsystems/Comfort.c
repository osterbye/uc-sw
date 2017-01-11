/*
 * Comfort.c
 *
 *  Created on: Nov 18, 2016
 *      Author: lovro
 */


#include "commandExecution.h"
#include "subsystems/Comfort.h"
#include "globalState.h"
#include "gio.h"
#include "het.h"
#include "logging.h"
#include "FreeRTOS.h"
#include "os_task.h"
#include "logging.h"

void commandExecution_COMFORT(const CommandRequest * request) {

}

/**
 * Polls the state of the seat sensor inputs
 */
void taskSeatSensors(void *pvParameters) {
	while(1) {
		uint8_t any[4] = {0};
		Set_seatOccupiedFL(gioGetBit(hetPORT1, 15));
		any[0] = Get_seatOccupiedFL();
		Set_seatOccupiedFR(gioGetBit(hetPORT1, 13));
		any[1] = Get_seatOccupiedFR();
		Set_seatOccupiedRL(gioGetBit(hetPORT1, 6));
		any[2] = Get_seatOccupiedRL();
		Set_seatOccupiedRR(gioGetBit(hetPORT1, 19));
		any[3] = Get_seatOccupiedRR();
		LOG_DEBUG("seats: %d %d %d %d", any[0], any[1], any[2], any[3]);
	    vTaskDelay(200 / portTICK_PERIOD_MS);
	}
}

/**
 * Parses the incomming can message for door open status
 */
void canbusRxDoorsOpen(const canMessage_t * msg) {
    uint8_t doorByte = msg->pdu[CBO(1)];
    Set_doorOpenFL((doorByte & (1u << 0)) != 0);
    Set_doorOpenFR((doorByte & (1u << 1)) != 0);
    Set_doorOpenRL((doorByte & (1u << 2)) != 0);
    Set_doorOpenRR((doorByte & (1u << 3)) != 0);
}

/**
 * Parses the incomming can message for vehicle lock status
 */
void canbusRxVehicleLocked(const canMessage_t * msg) {
    Set_vehicleLocked(msg->pdu[CBO(0)] == 2u);
}

enum doorRequest {
	DOOR_NOREQUEST = -1,
	DOOR_UNLOCK = 0,
	DOOR_LOCK = 1,
};

static enum doorRequest requestedDoorState = DOOR_NOREQUEST;
/**
 * Execution of door lock/unlock command
 * @param requrest incomming request
 */
void commandExecution_SETDOORLOCK(const CommandRequest * request){
	if (CommandRequest_setDoorLock_tag == request->which_argument &&
		request->argument.setDoorLock.has_locked ) {
			bool lockedSetTo = request->argument.setDoorLock.locked;
			doorlockRequestState(lockedSetTo);
			// send response to CM
	}

}

void doorlockRequestState(const bool lock) {
	if(lock){
		requestedDoorState = DOOR_LOCK;
		LOG_INFO("Locking door");
	} else {
		requestedDoorState = DOOR_UNLOCK;
		LOG_INFO("Unlocking door");
	}
}
/**
 * Task handling door locking / unlocking
 */
void doorlockTask (void *pvParameters) {
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
