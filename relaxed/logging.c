/*
 * logging.c
 *
 *  Created on: Oct 5, 2016
 *      Author: lovro
 */

#include "logging.h"

char loggingBuffer[LOGGING_BUFFER_LENGTH] = {0};
char loggingStr[LOGGING_BUFFER_LENGTH] = {0};

void loggingInit() {
	uint8 character = 0x0A;

	sciInit();
    sciSend(scilinREG, 1, &character);
    LOG_INFO("--------------------------");
    LOG_INFO("Logging module initialized");
}

void loggingToHex(char * dst, const uint8_t * src, unsigned length) {
    *dst = '\0'; /* in case length is 0 */
    while (length) {
        snprintf(dst, 4, "%02X ", *src);
        dst += 3;
        src++;
        length--;
    }
}
