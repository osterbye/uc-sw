/*
 * Lights.c
 *
 *  Created on: Nov 18, 2016
 *      Author: lovro
 */


#include "commandExecution.h"
#include "subsystems/Lights.h"
#include "globalState.h"

void commandExecution_LIGHTS(const CommandRequest * request){


}

void canbusRxBlinkerLights(const canMessage_t * msg) {
  uint8_t blinkerByte = msg->pdu[CBO(0)];
  Set_blinkerLeft( blinkerByte & (1u << 0) != 0);
  Set_blinkerRight(blinkerByte & (1u << 1) != 0);
}
