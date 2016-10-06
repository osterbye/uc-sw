#ifndef LOGGING_H
#define LOGGING_H

#include "sci.h"
#include "string.h"
#include "stdio.h"

#define LOGGING_ENABLED             1
#define LOGGING_SRCPATH_INCLUDED    0
#define LOGGING_BUFFER_LENGTH       200

#if (LOGGING_ENABLED == 0)                              /* release target, logging disabled so LIN bus can operate */
    #define LOG_DEBUG(...)      do {} while(0)
    #define LOG_INFO(...)       do {} while(0)
    #define LOG_WARN(...)       do {} while(0)
    #define LOG_CRITICAL(...)   do {} while(0)

#elif (LOGGING_SRCPATH_INCLUDED == 0)                   /* debug target, full log output */
    extern char loggingBuffer[LOGGING_BUFFER_LENGTH];
    /* do {} while(0) form is used so macro can be safely applied in if-else context */
    #define LOG_DEBUG(fmt, ...)    do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "D " fmt, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)
    #define LOG_INFO(fmt, ...)     do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "I " fmt, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)
    #define LOG_WARN(fmt, ...)     do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "W!" fmt, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)
    #define LOG_CRITICAL(fmt, ...) do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "C!" fmt, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)                                 

#else                                                   /* debug target, full log output with source filename and line included */
    extern char loggingBuffer[LOGGING_BUFFER_LENGTH];
    /* do {} while(0) form is used so macro can be safely applied in if-else context */
    #define LOG_DEBUG(fmt, ...)    do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "D " __FILE__ ":%d " fmt, __LINE__, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)
    #define LOG_INFO(fmt, ...)     do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "I " __FILE__ ":%d " fmt, __LINE__, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)
    #define LOG_WARN(fmt, ...)     do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "W!" __FILE__ ":%d " fmt, __LINE__, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)
    #define LOG_CRITICAL(fmt, ...) do { snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "C!" __FILE__ ":%d " fmt, __LINE__, ##__VA_ARGS__); \
                                     sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); } while(0)
#endif

void loggingInit();

#endif /* LOGGING_H */
