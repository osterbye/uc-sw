/*
 * cbuffer->c
 *
 *  Created on: Oct 4, 2016
 *      Author: lovro
 */



#include "cbuffer.h"

size_t CBufferFree(const CBuffer_t * buffer){
  return buffer->size - CBufferTaken(buffer);
}
#include "stdio.h"
size_t CBufferTaken(const CBuffer_t * buffer){
  size_t taken = buffer->head + buffer->size - buffer->tail;
  taken = taken % buffer->size - 1;
  return taken;
}

CBufferError_t CBufferPushMultiple(CBuffer_t * buffer, CBUFFERTYPE length, const CBUFFERTYPE * data){
  CBUFFERTYPE i = 0;

  if(CBufferFree(buffer) > length){
    for (i = 0; i < length; i++){
      *( buffer->data + buffer->head ) = *(data + i);
      buffer->head++;
      if(buffer->head >= buffer->size){
        buffer->head = 0;
      }
    }
  } else {
    return NOT_ENOUGH_SPACE;
  }
  return NO_ERROR;
}

CBufferError_t CBufferPush(CBuffer_t * buffer, CBUFFERTYPE data){
  return CBufferPushMultiple(buffer, 1, &data);
}

CBufferError_t CBufferPopMultiple(CBuffer_t * buffer, CBUFFERTYPE length, CBUFFERTYPE * result){
  uint8_t i = 0;

  if(CBufferTaken(buffer)>= length){
    for(i = 0; i < length; i++){
      buffer->tail++;
      if(buffer->tail >= buffer->size){
        buffer->tail = 0;
      }
      *(result + i) = *(buffer->data + buffer->tail);
    }
  } else { 
    return NOT_ENOUGH_DATA;
  }
  return NO_ERROR;
}

CBUFFERTYPE CBufferPop(CBuffer_t * buffer){
  CBUFFERTYPE result = 0;

  CBufferPopMultiple(buffer, 1, &result);

  return result;
}
