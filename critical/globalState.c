/*
 * globalState.c
 *
 *  Created on: Aug 26, 2016
 *      Author: lovro
 */

#include "globalState.h"
#include "globalStateConfig.h"

//define the variables
#define X(type, name, default_value) static type name = default_value;
    VARIABLES
    STATUS_UPDATE
#undef X

// define the functions
#define X(type, name, dafault_value) \
    inline void Set_##name (type value) { \
    										name = value; \
    									}
    VARIABLES
    STATUS_UPDATE
#undef X
#define X(type, name, default_value) \
    inline type Get_##name () 	{ \
    								return name; \
    							}
    VARIABLES
    STATUS_UPDATE
#undef X
