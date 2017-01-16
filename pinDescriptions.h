/*
 * pin_descriptions.h
 *
 *  Created on: 13 Jan 2017
 *      Author: josip
 */

#ifndef PINDESCRIPTIONS_H_
#define PINDESCRIPTIONS_H_

#include <stdint.h>
#include "gio.h"

typedef struct {
	gioPORT_t * port;
	uint32_t pin;
} pinDescription_t;

extern const pinDescription_t ledGreen;
extern const pinDescription_t ledOrange;
extern const pinDescription_t ledRed;

extern const pinDescription_t userButton;

extern const pinDescription_t seatSensorFL;
extern const pinDescription_t seatSensorFR;
extern const pinDescription_t seatSensorRL;
extern const pinDescription_t seatSensorRR;

extern const pinDescription_t doorLock;
extern const pinDescription_t doorUnlock;

extern const pinDescription_t spiRequestTransmit;

extern const pinDescription_t can1Standby;
extern const pinDescription_t can1Shutdown;
extern const pinDescription_t can2Standby;
extern const pinDescription_t can2Shutdown;
extern const pinDescription_t can3Standby;
extern const pinDescription_t can3Shutdown;

#endif /* PINDESCRIPTIONS_H_ */
