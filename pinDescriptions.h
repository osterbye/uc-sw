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

extern const pinDescription_t digitalInput0;
extern const pinDescription_t digitalInput1;
extern const pinDescription_t digitalInput2;
extern const pinDescription_t digitalInput3;
extern const pinDescription_t digitalInput4;
extern const pinDescription_t digitalInput5;
extern const pinDescription_t digitalInput6;
extern const pinDescription_t digitalInput7;

extern const pinDescription_t digitalOutput0;
extern const pinDescription_t digitalOutput1;
extern const pinDescription_t digitalOutput2;
extern const pinDescription_t digitalOutput3;
extern const pinDescription_t digitalOutput4;
extern const pinDescription_t digitalOutput5;
extern const pinDescription_t digitalOutput6;
extern const pinDescription_t digitalOutput7;

extern const pinDescription_t cmReset;
extern const pinDescription_t cmWake;
extern const pinDescription_t cmSpiM2SInt;
extern const pinDescription_t cmSpiS2MInt;
extern const pinDescription_t cmFlashMode;
extern const pinDescription_t cmAuxSignal;

extern const pinDescription_t gpsWheelTick;
extern const pinDescription_t gpsWheelDirection;

#endif /* PINDESCRIPTIONS_H_ */
