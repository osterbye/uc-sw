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

#define DOOR_LOCK_PORT gioPORTA
#define DOOR_LOCK_NUM  0

#define DOOR_UNLOCK_PORT gioPORTB
#define DOOR_UNLOCK_NUM  2

void doorlockTask (void *pvParameters);
void doorlockRequestState(bool locked);
void canbusRxDoorsOpen(const canMessage_t * msg);
void canbusRxVehicleLocked(const canMessage_t * msg);
void taskSeatSensors(void *pvParameters);

#endif /* CRITICAL_SUBSYSTEMS_COMFORT_H_ */
