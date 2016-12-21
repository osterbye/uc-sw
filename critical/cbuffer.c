/*
 * cbuffer.c
 *
 *  Created on: Oct 4, 2016
 *      Author: lovro
 */

#include "cbuffer.h"
#include "stdio.h"

size_t cbufferFree(const cbuffer_t * buffer) {
  return buffer->size - cbufferTaken(buffer);
}

size_t cbufferTaken(const cbuffer_t * buffer) {
  size_t taken = buffer->head + buffer->size - buffer->tail;
  taken = taken % buffer->size - 1;
  return taken;
}

cbufferError_t cbufferPushMultiple(cbuffer_t * buffer, CBUFFERTYPE length, const CBUFFERTYPE * data) {
  CBUFFERTYPE i = 0;
  if (cbufferFree(buffer) > length) {
    for (i = 0; i < length; i++) {
      *( buffer->data + buffer->head ) = *(data + i);
      buffer->head++;
      if (buffer->head >= buffer->size) {
        buffer->head = 0;
      }
    }
  } else {
    return NOT_ENOUGH_SPACE;
  }
  return NO_ERROR;
}

cbufferError_t cbufferPush(cbuffer_t * buffer, CBUFFERTYPE data) {
  return cbufferPushMultiple(buffer, 1, &data);
}

cbufferError_t cbufferPopMultiple(cbuffer_t * buffer, CBUFFERTYPE length, CBUFFERTYPE * result) {
  uint8_t i = 0;
  if (cbufferTaken(buffer) >= length) {
    for (i = 0; i < length; i++) {
      buffer->tail++;
      if (buffer->tail >= buffer->size) {
        buffer->tail = 0;
      }
      *(result + i) = *(buffer->data + buffer->tail);
    }
  } else {
    return NOT_ENOUGH_DATA;
  }
  return NO_ERROR;
}

CBUFFERTYPE cbufferPop(cbuffer_t * buffer) {
  CBUFFERTYPE result = 0;
  cbufferPopMultiple(buffer, 1, &result);
  return result;
}
