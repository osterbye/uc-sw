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
#include "../pinDescriptions.h"
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
		Set_seatOccupiedFL(gioGetBit(seatSensorFL.port, seatSensorFL.pin));
		Set_seatOccupiedFR(gioGetBit(seatSensorFR.port, seatSensorFR.pin));
		Set_seatOccupiedRL(gioGetBit(seatSensorRL.port, seatSensorRL.pin));
		Set_seatOccupiedRR(gioGetBit(seatSensorRR.port, seatSensorRR.pin));
		LOG_DEBUG("seats: %d %d %d %d", Get_seatOccupiedFL(), Get_seatOccupiedFR(), Get_seatOccupiedRL(), Get_seatOccupiedRR());
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
			gioSetBit(doorLock.port, doorLock.pin, 1);
			gioSetBit(doorUnlock.port, doorUnlock.pin, 0);
			vTaskDelay(500 / portTICK_PERIOD_MS);
			if (requestedDoorState == DOOR_LOCK) {
				requestedDoorState = DOOR_NOREQUEST;
			}
		}

		if (requestedDoorState == DOOR_UNLOCK) {
			gioSetBit(doorUnlock.port, doorUnlock.pin, 1);
			gioSetBit(doorLock.port, doorLock.pin, 0);
			vTaskDelay(500 / portTICK_PERIOD_MS);
			if (requestedDoorState == DOOR_UNLOCK) {
				requestedDoorState = DOOR_NOREQUEST;
			}
		}

		if (requestedDoorState == DOOR_NOREQUEST) {
			gioSetBit(doorLock.port, doorLock.pin, 0);
			gioSetBit(doorUnlock.port, doorUnlock.pin, 0);
			vTaskDelay(50 / portTICK_PERIOD_MS);
		}
	}
}

/**
 * Task handling door locking / unlocking
 * TODO needs testing
 */
/*
void doorlockTask (void *pvParameters) {
	while(1){
		switch (requestedDoorState){
		case (DOOR_UNLOCK):
		case (DOOR_LOCK):
			gioSetBit(doorUnlock.port, doorUnlock.pin, !requestedDoorState);
			gioSetBit(doorLock.port, doorLock.pin, requestedDoorState);
			vTaskDelay(500 / portTICK_PERIOD_MS);
			requestedDoorState = DOOR_NOREQUEST;
			break;
		case (DOOR_NOREQUEST):
		default:
			gioSetBit(doorLock.port, doorLock.pin, 0);
			gioSetBit(doorUnlock.port, doorUnlock.pin, 0);
			vTaskDelay(50 / portTICK_PERIOD_MS);
			break;
		}
	}

}
*/
