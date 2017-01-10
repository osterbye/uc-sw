/*
 * Comfort.h
 *
 *  Created on: Jan 10, 2017
 *      Author: lovro
 */

#ifndef CRITICAL_SUBSYSTEMS_COMFORT_H_
#define CRITICAL_SUBSYSTEMS_COMFORT_H_

#include "canbus.h"

void canbusRxDoorsOpen(const canMessage_t * msg);
void canbusRxVehicleLocked(const canMessage_t * msg);
void taskSeatSensors(void *pvParameters);

#endif /* CRITICAL_SUBSYSTEMS_COMFORT_H_ */
