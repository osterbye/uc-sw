/*
 * cbuffer.h
 *
 *  Created on: Oct 4, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_CBUFFER_H_
#define CRITICAL_CBUFFER_H_

#include "stdint.h"

#define CBUFFERTYPE uint8_t

typedef struct{
  CBUFFERTYPE size;
  CBUFFERTYPE head;
  CBUFFERTYPE tail;
  CBUFFERTYPE * data;
} CBuffer_t;

CBUFFERTYPE CBufferFree(CBuffer_t * buffer);
CBUFFERTYPE CBufferTaken(CBuffer_t * buffer);
CBUFFERTYPE CBufferPushMultiple(CBuffer_t * buffer, CBUFFERTYPE length, CBUFFERTYPE * data);
CBUFFERTYPE CBufferPush(CBuffer_t * buffer, CBUFFERTYPE data);
CBUFFERTYPE CBufferPopMultiple(CBuffer_t * buffer, CBUFFERTYPE length, CBUFFERTYPE * result);
CBUFFERTYPE CBufferPop(CBuffer_t * buffer);

#endif /* CRITICAL_CBUFFER_H_ */
