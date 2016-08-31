/*
 * globalState.h
 *
 *  Created on: Aug 26, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_GLOBALSTATE_H_
#define CRITICAL_GLOBALSTATE_H_
#include "globalStateConfig.h"
/* Standard includes. */
#include <stdio.h>
#include <stdbool.h>

/* FreeRTOS includes */
#include "FreeRTOS.h"

#include "os_task.h"
#include "os_queue.h"
#include "os_semphr.h"

#define X(type, name, default_value) \
	inline void Set_##name (type value);
VARIABLES
#undef X
#define X(type, name, default_value) \
	inline type Get_##name ();
VARIABLES
#undef X


#endif /* CRITICAL_GLOBALSTATE_H_ */