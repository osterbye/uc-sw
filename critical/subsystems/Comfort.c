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

void commandExecution_COMFORT(const CommandRequest * request){

uint8_t i = 0;
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
