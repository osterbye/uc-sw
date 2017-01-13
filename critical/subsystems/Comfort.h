/*
 * Comfort.h
 *
 *  Created on: Jan 10, 2017
 *      Author: lovro
 */

#ifndef CRITICAL_SUBSYSTEMS_COMFORT_H_
#define CRITICAL_SUBSYSTEMS_COMFORT_H_

#include <stdbool.h>
#include "canbus.h"

void doorlockTask (void *pvParameters);
void doorlockRequestState(bool locked);
void canbusRxDoorsOpen(const canMessage_t * msg);
void canbusRxVehicleLocked(const canMessage_t * msg);
void taskSeatSensors(void *pvParameters);

#endif /* CRITICAL_SUBSYSTEMS_COMFORT_H_ */
