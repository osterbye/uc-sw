#ifndef DOORLOCK_H
#define DOORLOCK_H

#include <stdbool.h>

void vDoorlock (void *pvParameters);
void doorlockRequestState(bool locked);

#endif /* DOORLOCK_H */
