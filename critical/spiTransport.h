/*
 * spiTransport.h
 *
 *  Created on: Nov 24, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_SPITRANSPORT_H_
#define CRITICAL_SPITRANSPORT_H_

#include <stdint.h>

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "os_task.h"
#include "os_queue.h"
#include "os_semphr.h"

#include "cmCommunication.h"

/* FreeRTOS tasks */
void taskSpiRx (void *pvParameters);
void taskSpiTx (void *pvParameters);

uint8_t spiTxPush(uint8_t length, const uint8_t * message);
uint8_t spiTxPushUrgent(uint8_t length, const uint8_t * message);
uint8_t * spiTxPopUrgent(void);
uint8_t spiAckUrgent(uint8_t location);

extern SemaphoreHandle_t spiRxFrameCount;
extern SemaphoreHandle_t spiTxAvailable;

#endif /* CRITICAL_SPITRANSPORT_H_ */
