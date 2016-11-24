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

/* FreeRTOS tasks */
void vSpiRx (void *pvParameters);
void vSpiTx (void *pvParameters);



#include "cmCommunication.h"

uint8_t ackSPITxFast(uint8_t location);
uint8_t addToSPITxFast(uint8_t length, uint8_t * message);
uint8_t addToSPITxSlow(uint8_t length, uint8_t * message);
uint8_t * getFromSPITxFast(void);

typedef enum{
	SPIRX_WAITINGFORPREAMBULE1BYTE, /*0xAA*/
	SPIRX_WAITINGFORPREAMBULE2BYTE, /*0x55*/
	SPIRX_TYPE,
	SPIRX_LENGTH,
	SPIRX_PAYLOAD,
	SPIRX_CRC,
} SpiRxSM_t;

extern SemaphoreHandle_t xSpiRxFrameCnt;
extern SemaphoreHandle_t xSpiTxAvailable;

#define SPIRXMESSAGENRMAX 100
#define SPIRXMESSAGELENMAX 100
#define RX_BUFFER_SIZE 128
#define SPIRXBUFFERSIZE 10
#define SPITXBUFFERSIZE 128

#endif /* CRITICAL_SPITRANSPORT_H_ */
