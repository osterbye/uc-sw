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
#include "ti_fee.h"
#include "subsystems.h"
#include "logging.h"

/* door locking / unlocking command execution */
void commandExecution_SETDOORLOCK(const CommandRequest * request) {
  if (CommandRequest_setDoorLock_tag == request->which_argument &&
          request->argument.setDoorLock.has_locked ) {
    bool lockedSetTo = request->argument.setDoorLock.locked;
    doorlockRequestState(lockedSetTo);
    // send response to CM
  }

}

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
#define CALIBRATION_PATTERN 0xCA11B38D

struct MotorCalibration {
  float steerGain;
  float steerOffset;
  float speedGain;
  float speedOffset;
  uint32_t calibrationPattern;  // used to validate calibration in FEE
};

static struct MotorCalibration calibration = { 12.45f,
                                               100.23f,
                                               0.00f,
                                               0.00f,
                                               CALIBRATION_PATTERN};

static void printMotorConstants() {
  LOG_PRINTF(" steerOffset = %+3.2f\r\n", calibration.steerOffset);
  LOG_PRINTF(" steerOffset = %+3.2f\r\n", calibration.steerOffset);
  LOG_PRINTF(" speedGain   = %+3.2f\r\n", calibration.speedGain);
  LOG_PRINTF(" speedOffset = %+3.2f\r\n", calibration.speedOffset);
}

volatile bool trigger = false;
void initializeMotors() {
  struct MotorCalibration calibrationFEE;
  Std_ReturnType ret;

  TI_Fee_Init();

  /* try to read calibration constants from FEE */
  ret = TI_Fee_ReadSync(1, 0, (uint8*) &calibrationFEE, sizeof(struct MotorCalibration));
  /* validate the calibration pattern and apply constants */
  if (ret == E_OK && calibrationFEE.calibrationPattern == CALIBRATION_PATTERN) {
    LOG_INFO("Loading motor calibration from FEE");
    memcpy(&calibration, &calibrationFEE, sizeof(calibration));
  } else {
    LOG_INFO("No motor calibration in FEE, loading defaults");
  }
  // printMotorConstants();
}

void commandExecution_AP102CTRL(const CommandRequest * request) {
  float pwmDuty = 0;

  if (CommandRequest_ap102Control_tag == request->which_argument) {
    if (request->argument.ap102Control.has_speed ) {
      pwmDuty = request->argument.ap102Control.speed;
      pwmDuty = pwmDuty * calibration.speedGain + calibration.speedOffset;
      pwmSetDutyFloat(hetRAM1, pwm0, pwmDuty);
      pwmSetDutyFloat(hetRAM1, pwm1, pwmDuty);
    }
    if (request->argument.ap102Control.has_direction) {
      pwmDuty = request->argument.ap102Control.direction;
      pwmDuty = pwmDuty * calibration.steerGain + calibration.steerOffset;
      pwmSetDutyFloat(hetRAM1, pwm2, pwmDuty);
    }
    Set_Ap102Cnt(request->counter);
  }
}

void commandExecution_SETMOTORCALIBRATION(const CommandRequest * request) {
  if (CommandRequest_setMotorCalibration_tag == request->which_argument) {
    if (request->argument.setMotorCalibration.has_steerGain) {
      calibration.steerGain   = request->argument.setMotorCalibration.steerGain;
    }
    if (request->argument.setMotorCalibration.has_speedGain) {
      calibration.speedGain   = request->argument.setMotorCalibration.speedGain;
    }
    if (request->argument.setMotorCalibration.has_steerOffset) {
      calibration.steerOffset = request->argument.setMotorCalibration.steerOffset;
    }
    if (request->argument.setMotorCalibration.has_speedOffset) {
      calibration.speedOffset = request->argument.setMotorCalibration.speedOffset;
    }
    // printMotorConstants();
    /* save constants to FEE */
    if (TI_Fee_WriteSync(1, (uint8*) &calibration) == E_OK) {
      LOG_INFO("Motor calibration saved to FEE");
    } else {
      LOG_WARN("Motor calibration could not be saved to FEE");
    }
  }
}
