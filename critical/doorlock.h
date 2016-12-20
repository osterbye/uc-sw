#ifndef DOORLOCK_H
#define DOORLOCK_H

#include <stdbool.h>

#define DOOR_LOCK_PORT gioPORTA
#define DOOR_LOCK_NUM  0

#define DOOR_UNLOCK_PORT gioPORTB
#define DOOR_UNLOCK_NUM  2

void doorlockTask (void *pvParameters);
void doorlockRequestState(bool locked);

#endif /* DOORLOCK_H */
