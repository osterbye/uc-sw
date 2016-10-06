#include "logging.h"

char loggingBuffer[LOGGING_BUFFER_LENGTH] = {0};

void loggingInit() {
    sciInit();
    LOG_INFO("Logging module initialized\n");
}
