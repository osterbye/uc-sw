/*
 * logging.c
 *
 *  Created on: Oct 5, 2016
 *      Author: lovro
 */

#include "logging.h"

char loggingBuffer[LOGGING_BUFFER_LENGTH] = {0};

void loggingInit() {
	uint8 character = 0x0A;

	sciInit();
    sciSend(scilinREG, 1, &character);
    LOG_INFO("--------------------------");
    LOG_INFO("Logging module initialized");
}

