/*
 * cm_communication.h
 *
 *  Created on: Aug 30, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_CMCOMMUNICATION_H_
#define CRITICAL_CMCOMMUNICATION_H_

/* FreeRTOS tasks */
void taskCmSendStatus (void *pvParameters);
void taskCmCommandExecution(void *pvParameters);

void cmStreamToProtobuf(uint8_t * message, uint16_t length);

#endif /* CRITICAL_CMCOMMUNICATION_H_ */
