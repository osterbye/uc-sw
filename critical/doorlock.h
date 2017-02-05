#ifndef DOORLOCK_H
#define DOORLOCK_H

#include <stdbool.h>

#define DOOR_UNLOCK_PORT gioPORTA
#define DOOR_UNLOCK_NUM  0

#define DOOR_LOCK_PORT gioPORTB
#define DOOR_LOCK_NUM  2

void vDoorlock (void *pvParameters);
void doorlockRequestState(bool locked);

#endif /* DOORLOCK_H */
