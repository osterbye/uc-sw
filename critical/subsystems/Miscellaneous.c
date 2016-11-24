/*
 * Miscellaneous.c
 *
 *  Created on: Nov 18, 2016
 *      Author: lovro
 */


#include "commandExecution.h"
#include "doorlock.h"

/* door locking / unlocking command execution */
void commandExecution_SETDOORLOCK(const CommandRequest * request){
	if (CommandRequest_setDoorLock_tag == request->which_argument &&
		request->argument.setDoorLock.has_locked ) {
			bool lockedSetTo = request->argument.setDoorLock.locked;
			doorlockRequestState(lockedSetTo);
			// send response to CM
	}

}
