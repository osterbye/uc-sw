/*
 * Miscellaneous.c
 *
 *  Created on: Nov 18, 2016
 *      Author: lovro
 */


#include "commandExecution.h"
#include "doorlock.h"
#include "globalState.h"

/* door locking / unlocking command execution */
void commandExecution_SETDOORLOCK(const CommandRequest * request){
	if (CommandRequest_setDoorLock_tag == request->which_argument &&
		request->argument.setDoorLock.has_locked ) {
			bool lockedSetTo = request->argument.setDoorLock.locked;
			doorlockRequestState(lockedSetTo);
			// send response to CM
	}

}

void commandExecution_AP102CTRL(const CommandRequest * request){
	if (CommandRequest_ap102Control_tag == request->which_argument) {
		if(request->argument.ap102Control.has_speed ) {
			Set_Ap102Speed(request->argument.ap102Control.speed);
		}
		if(request->argument.ap102Control.has_direction) {
			Set_Ap102Speed(request->argument.ap102Control.direction);
		}
		Set_Ap102Cnt(request->counter);
	}
}
