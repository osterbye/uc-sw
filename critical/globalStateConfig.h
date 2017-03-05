/*
 * globalStateConfig.h
 *
 *  Created on: Aug 26, 2016
 *      Author: lovro
 */

#ifndef CRITICAL_GLOBALSTATECONFIG_H_
#define CRITICAL_GLOBALSTATECONFIG_H_

#include "stdint.h"

#define VARIABLES 								\
	X(int,		iWheelTick, 		    1) 		\
	X(int,		iHVSoC,				   90)		\
	X(float, 	fSpeedMPH,				0)  	\
	/* test comment */ 							\
	X(bool,	 	bSeatSensorFR,			0)      \
	X(float,    Ap102Speed,				0)      \
	X(float,    Ap102Direction,     	0)      \
	X(int, 		Ap102Cnt,     			0)


#endif /* CRITICAL_GLOBALSTATECONFIG_H_ */
