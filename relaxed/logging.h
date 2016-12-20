/*
 * logging.h
 *
 *  Created on: Oct 5, 2016
 *      Author: lovro
 */

/* Usage:

Macros are used to print logging information to SCI2. The same interface is shared
with LIN bus, so they cannot be used at the same time. Most of macros add prefix
(D, I, W!, C!) so category can be distinguished in output, and add newline sufix.
Depending on LOGGING_SRCPATH_INCLUDED, the filename and source line number is also
included in output.

LOG_PRINTF can be used in same way as printf; it doesn't add anything to output
LOG_DEBUG is used for outputting temporary state, usually removed later
LOG_INFO is used for useful announcements of normal processes
LOG_WARN can notify any unusual state or conditions
LOG_CRITICAL is reserved for errors from which system cannot recover
*/

#ifndef RELAXED_LOGGING_H_
#define RELAXED_LOGGING_H_

#include "sci.h"
#include "string.h"
#include "stdio.h"

#define LOGGING_ENABLED             1
#define LOGGING_SRCPATH_INCLUDED    0
#define LOGGING_BUFFER_LENGTH       200

#if (LOGGING_ENABLED == 0)                              /* release target, logging disabled so LIN bus can operate */
    #define LOG_PRINTF(...)     do {} while(0)
    #define LOG_DEBUG(...)      do {} while(0)
    #define LOG_INFO(...)       do {} while(0)
    #define LOG_WARN(...)       do {} while(0)
    #define LOG_CRITICAL(...)   do {} while(0)

#elif (LOGGING_SRCPATH_INCLUDED == 0)                   /* debug target, full log output */
    extern char loggingBuffer[LOGGING_BUFFER_LENGTH];
    /* do {} while(0) form is used so macro can be safely applied in if-else context */
    #define LOG_PRINTF(fmt, ...)   do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, fmt, ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_DEBUG(fmt, ...)    do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "D " fmt "\r\n", ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_INFO(fmt, ...)     do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "I " fmt "\r\n", ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_WARN(fmt, ...)     do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "W!" fmt "\r\n", ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_CRITICAL(fmt, ...) do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "C!" fmt "\r\n", ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
#else                                                   /* debug target, full log output with source filename and line included */
    extern char loggingBuffer[LOGGING_BUFFER_LENGTH];
    /* do {} while(0) form is used so macro can be safely applied in if-else context */
    #define LOG_PRINTF(fmt, ...)   do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, fmt, ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_DEBUG(fmt, ...)    do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "D " __FILE__ ":%d " fmt "\r\n", __LINE__, ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_INFO(fmt, ...)     do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "I " __FILE__ ":%d " fmt "\r\n", __LINE__, ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_WARN(fmt, ...)     do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "W!" __FILE__ ":%d " fmt "\r\n", __LINE__, ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
    #define LOG_CRITICAL(fmt, ...) do { \
    									snprintf(loggingBuffer, LOGGING_BUFFER_LENGTH, "C!" __FILE__ ":%d " fmt "\r\n", __LINE__, ##__VA_ARGS__); \
    									sciSend(scilinREG, strlen(loggingBuffer), (uint8 *) loggingBuffer); \
    									} while(0)
#endif

void loggingInit();

#endif /* RELAXED_LOGGING_H_ */
