/*
 * cbuffer.h
 *
 *  Created on: Oct 4, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_CBUFFER_H_
#define CRITICAL_CBUFFER_H_

#include "stdint.h"
#include "stddef.h"

#define CBUFFERTYPE uint8_t

typedef enum {
    NO_ERROR = 0,
    NOT_ENOUGH_SPACE = 1,
    NOT_ENOUGH_DATA = 2
} CBufferError_t;

typedef struct{
  size_t size;
  size_t head;
  size_t tail;
  CBUFFERTYPE * data;
} CBuffer_t;

size_t CBufferFree(const CBuffer_t * buffer);
size_t CBufferTaken(const CBuffer_t * buffer);
CBufferError_t CBufferPushMultiple(CBuffer_t * buffer, CBUFFERTYPE length, const CBUFFERTYPE * data);
CBufferError_t CBufferPush(CBuffer_t * buffer, CBUFFERTYPE data);
CBufferError_t CBufferPopMultiple(CBuffer_t * buffer, CBUFFERTYPE length, CBUFFERTYPE * result);
CBUFFERTYPE CBufferPop(CBuffer_t * buffer);

#endif /* CRITICAL_CBUFFER_H_ */
