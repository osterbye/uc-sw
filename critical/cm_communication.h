/*
 * cm_communication.h
 *
 *  Created on: Aug 30, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_CM_COMMUNICATION_H_
#define CRITICAL_CM_COMMUNICATION_H_

void vSendStatus (void *pvParameters);
void vTestMsgGen (void *pvParameters);
void vTestDma (void *pvParameters);
void vSpiGateway (void *pvParameters);
void vSpiTest (void *pvParameters);

extern SemaphoreHandle_t xSpiRxFrameCnt;
extern SemaphoreHandle_t xSpiTxAvailable;
#define SPIRXBUFFERSIZE 128
extern uint8_t SpiRxBuffer[SPIRXBUFFERSIZE];
extern uint8_t SpiTxBuffer[SPIRXBUFFERSIZE];

typedef enum{
	SPIRX_WAITINGFORPREAMBULE,
	SPIRX_TYPE,
	SPIRX_LENGTH,
	SPIRX_PAYLOAD,
	SPIRX_CRC,
} SpiRxSM_t;


#endif /* CRITICAL_CM_COMMUNICATION_H_ */
