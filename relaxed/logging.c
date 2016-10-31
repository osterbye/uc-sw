/*
 * logging.c
 *
 *  Created on: Oct 5, 2016
 *      Author: lovro
 */

#include "logging.h"

char loggingBuffer[LOGGING_BUFFER_LENGTH] = {0};

void loggingInit() {
    sciInit();
    uint8 character = 0x0A;
    sciSend(scilinREG, 1, &character);
    LOG_INFO("--------------------------\n\r");
    LOG_INFO("Logging module initialized\n\r");
}

