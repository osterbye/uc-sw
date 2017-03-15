/*
 * Miscellaneous.c
 *
 *  Created on: Nov 18, 2016
 *      Author: lovro
 */


#include "commandExecution.h"
#include "doorlock.h"
#include "globalState.h"
#include "het.h"

/* door locking / unlocking command execution */
void commandExecution_SETDOORLOCK(const CommandRequest * request){
	if (CommandRequest_setDoorLock_tag == request->which_argument &&
		request->argument.setDoorLock.has_locked ) {
			bool lockedSetTo = request->argument.setDoorLock.locked;
			doorlockRequestState(lockedSetTo);
			// send response to CM
	}

}

#define AP102_PWMCTRL

/*
 *  just random numbers at the moment
 *  these are the conversion factors from
 *  the values coming from the server
 *  into pwm values
 *  PWM - max value 2ms - duty cy. 10%
 *  PWM - max value 1ms - duty cy. 5%
 *  the het.c pwmSetDuty function is modified
 *  to allow duty cycle in floats
 */
#define AP102_COEF_STEERING	12.45f
#define AP102_COEF_SPEED	100.23f

void commandExecution_AP102CTRL(const CommandRequest * request){
	float pwmDuty = 0;

	if (CommandRequest_ap102Control_tag == request->which_argument) {
		if(request->argument.ap102Control.has_speed ) {
#ifdef AP102_PWMCTRL
		pwmDuty = request->argument.ap102Control.speed;
		pwmDuty *= AP102_COEF_SPEED;
		pwmSetDuty(hetRAM1,pwm0, pwmDuty);
		pwmSetDuty(hetRAM1,pwm1, pwmDuty);
#else
			Set_Ap102Speed(request->argument.ap102Control.speed);
#endif
		}
		if(request->argument.ap102Control.has_direction) {
#ifdef AP102_PWMCTRL
		pwmDuty = request->argument.ap102Control.direction;
		pwmDuty *= AP102_COEF_STEERING;
		pwmSetDuty(hetRAM1, pwm2, pwmDuty);
#else
			Set_Ap102Speed(request->argument.ap102Control.direction);
#endif
		}
		Set_Ap102Cnt(request->counter);
	}
}
