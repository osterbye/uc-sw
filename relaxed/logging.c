/*
 * logging.c
 *
 *  Created on: Oct 5, 2016
 *      Author: lovro
 */

#include "logging.h"

char loggingBuffer[LOGGING_BUFFER_LENGTH] = {0};
static char loggingDump[LOGGING_BUFFER_LENGTH] = {0};

void loggingInit() {
    sciInit();
    uint8 character = 0x0A;
    sciSend(scilinREG, 1, &character);
    LOG_INFO("--------------------------");
    LOG_INFO("Logging module initialized");
}

void loggingCollectAndDump(char c) {
	int i = strlen(loggingDump);
	ASSERT(LOGGING_BUFFER_LENGTH > i);
	snprintf(loggingDump + i, LOGGING_BUFFER_LENGTH - i, " %02X", c);
	if(strlen(loggingDump) > LOGGING_BUFFER_LENGTH - 3) {
		sciSend(scilinREG, strlen(loggingDump), (uint8 *) loggingDump);
		LOG_PRINTF("\r\n");
		loggingDump[0] = 0; // mark string as empty
	}
}
