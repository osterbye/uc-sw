/*
 * cm_communication.h
 *
 *  Created on: Aug 30, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_CMCOMMUNICATION_H_
#define CRITICAL_CMCOMMUNICATION_H_

/* FreeRTOS tasks */
void sendStatusTask (void *pvParameters);
void commandExecutionTest(void *pvParameters);


void streamToProtobuf(uint8_t * message, uint16_t length);

#endif /* CRITICAL_CMCOMMUNICATION_H_ */
