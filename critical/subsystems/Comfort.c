/*
 * Comfort.c
 *
 *  Created on: Nov 18, 2016
 *      Author: lovro
 */


#include "commandExecution.h"
#include "subsystems/Comfort.h"
#include "globalState.h"

void commandExecution_COMFORT(const CommandRequest * request){

uint8_t i = 0;
}

void canbusRxDoorsOpen(const canMessage_t * msg) {
    uint8_t doorByte = msg->pdu[CBO(1)];
    Set_doorOpenFL((doorByte & (1u << 0)) != 0);
    Set_doorOpenFR((doorByte & (1u << 1)) != 0);
    Set_doorOpenRL((doorByte & (1u << 2)) != 0);
    Set_doorOpenRR((doorByte & (1u << 3)) != 0);
}


void canbusRxVehicleLocked(const canMessage_t * msg) {
    Set_vehicleLocked(msg->pdu[CBO(0)] == 2u);
}
