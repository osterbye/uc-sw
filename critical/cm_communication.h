/*
 * cm_communication.h
 *
 *  Created on: Aug 30, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_CM_COMMUNICATION_H_
#define CRITICAL_CM_COMMUNICATION_H_


uint8_t AckSPITxFast(uint8_t location);
uint8_t AddToSPITxFast(uint8_t length, uint8_t * message);
uint8_t AddToSPITxSlow(uint8_t length, uint8_t * message);
uint8_t * GetFromSPITxFast(void);

void vSpiRx (void *pvParameters);
void vSpiTx (void *pvParameters);

#define SPIRXMESSAGENRMAX 100
#define SPIRXMESSAGELENMAX 100
#define RX_BUFFER_SIZE 128
#define SPIRXBUFFERSIZE 10
#define SPITXBUFFERSIZE 128

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

#endif /* CRITICAL_CM_COMMUNICATION_H_ */
