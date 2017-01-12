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
} cbufferError_t;

typedef struct {
    size_t size;
    size_t head;
    size_t tail;
    CBUFFERTYPE * data;
} cbuffer_t;

size_t cbufferFree(const cbuffer_t * buffer);
size_t cbufferTaken(const cbuffer_t * buffer);
cbufferError_t cbufferPushMultiple(cbuffer_t * buffer, CBUFFERTYPE length, const CBUFFERTYPE * data);
cbufferError_t cbufferPush(cbuffer_t * buffer, CBUFFERTYPE data);
cbufferError_t cbufferPopMultiple(cbuffer_t * buffer, CBUFFERTYPE length, CBUFFERTYPE * result);
CBUFFERTYPE cbufferPop(cbuffer_t * buffer);

#endif /* CRITICAL_CBUFFER_H_ */
