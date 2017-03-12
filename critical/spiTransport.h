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
	SPIRX_FRAMEID,
	SPIRX_LENGTH,
	SPIRX_PAYLOAD,
	SPIRX_CRC,
} SpiRxSM_t;

/* as per "Table 6-32. DMA Request Line Connection" from uC datasheet */
enum spiDmaRequests {
    MIBSPI3_3_DMAREQ = 5,
    MIBSPI3_4_DMAREQ = 8,
};

extern SemaphoreHandle_t xSpiRxFrameCnt;
extern SemaphoreHandle_t xSpiTxAvailable;

#define SPIRXMESSAGENRMAX 100u

#define SPITXFRAMEOVERHEAD 16u /* preamble, type, reserved, length, crc */

#define SPIRXBUFFERSIZE 128u
#define SPITXBUFFERSIZE 128u

#define SPIFRAMESIZE    1u /* size of DMA transfer chunk */

#endif /* CRITICAL_SPITRANSPORT_H_ */
