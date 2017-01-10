/*
 * Lights.h
 *
 *  Created on: Jan 10, 2017
 *      Author: lovro
 */

#ifndef CRITICAL_SUBSYSTEMS_LIGHTS_H_
#define CRITICAL_SUBSYSTEMS_LIGHTS_H_

#include "canbus.h"

void canbusRxBlinkerLights(const canMessage_t * msg);

#endif /* CRITICAL_SUBSYSTEMS_LIGHTS_H_ */
