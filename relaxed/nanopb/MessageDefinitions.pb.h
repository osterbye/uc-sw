/* Automatically generated nanopb header */
/* Generated by nanopb-0.3.8-dev at Tue Nov  1 12:36:16 2016. */

#ifndef PB_MESSAGEDEFINITIONS_PB_H_INCLUDED
#define PB_MESSAGEDEFINITIONS_PB_H_INCLUDED
#include <pb.h>

/* @@protoc_insertion_point(includes) */
#if PB_PROTO_HEADER_VERSION != 30
#error Regenerate this file with the current version of nanopb generator.
#endif

#ifdef __cplusplus
extern "C" {
#endif

/* Enum definitions */
typedef enum _COMMAND_ORIGIN {
    COMMAND_ORIGIN_UC_POWER_MANAGER = 1,
    COMMAND_ORIGIN_CM_VEHICLE_MONITOR = 2,
    COMMAND_ORIGIN_SERVER_FLEET_MANAGER = 3
} COMMAND_ORIGIN;
#define _COMMAND_ORIGIN_MIN COMMAND_ORIGIN_UC_POWER_MANAGER
#define _COMMAND_ORIGIN_MAX COMMAND_ORIGIN_SERVER_FLEET_MANAGER
#define _COMMAND_ORIGIN_ARRAYSIZE ((COMMAND_ORIGIN)(COMMAND_ORIGIN_SERVER_FLEET_MANAGER+1))

typedef enum _StatusUpdate_SPIRIERRORS {
    StatusUpdate_SPIRIERRORS_ERR_HV_CELL_UNDER_VOLTAGE = 1,
    StatusUpdate_SPIRIERRORS_ERR_HV_CELL_OVER_VOLTAGE = 2,
    StatusUpdate_SPIRIERRORS_ERR_OTHER_ERRORS = 3
} StatusUpdate_SPIRIERRORS;
#define _StatusUpdate_SPIRIERRORS_MIN StatusUpdate_SPIRIERRORS_ERR_HV_CELL_UNDER_VOLTAGE
#define _StatusUpdate_SPIRIERRORS_MAX StatusUpdate_SPIRIERRORS_ERR_OTHER_ERRORS
#define _StatusUpdate_SPIRIERRORS_ARRAYSIZE ((StatusUpdate_SPIRIERRORS)(StatusUpdate_SPIRIERRORS_ERR_OTHER_ERRORS+1))

typedef enum _CommandRequest_TYPE {
    CommandRequest_TYPE_SETDOORLOCK = 1
} CommandRequest_TYPE;
#define _CommandRequest_TYPE_MIN CommandRequest_TYPE_SETDOORLOCK
#define _CommandRequest_TYPE_MAX CommandRequest_TYPE_SETDOORLOCK
#define _CommandRequest_TYPE_ARRAYSIZE ((CommandRequest_TYPE)(CommandRequest_TYPE_SETDOORLOCK+1))

typedef enum _CommandResponse_RESULT {
    CommandResponse_RESULT_SUCCESS = 1,
    CommandResponse_RESULT_UNAUTHORIZED = 2,
    CommandResponse_RESULT_UNSUPPORTED = 3,
    CommandResponse_RESULT_TIMEOUT = 4,
    CommandResponse_RESULT_BLOCKED = 5
} CommandResponse_RESULT;
#define _CommandResponse_RESULT_MIN CommandResponse_RESULT_SUCCESS
#define _CommandResponse_RESULT_MAX CommandResponse_RESULT_BLOCKED
#define _CommandResponse_RESULT_ARRAYSIZE ((CommandResponse_RESULT)(CommandResponse_RESULT_BLOCKED+1))

/* Struct definitions */
typedef struct _CommandRequest_SetDoorLock {
    bool has_locked;
    bool locked;
/* @@protoc_insertion_point(struct:CommandRequest_SetDoorLock) */
} CommandRequest_SetDoorLock;

typedef struct _CommandResponse_SoftwareVersion {
    bool has_minor;
    uint32_t minor;
    bool has_major;
    uint32_t major;
/* @@protoc_insertion_point(struct:CommandResponse_SoftwareVersion) */
} CommandResponse_SoftwareVersion;

typedef struct _StatusUpdate {
    bool has_timestamp;
    int32_t timestamp;
    bool has_voltageLV;
    float voltageLV;
    bool has_voltageHV;
    float voltageHV;
    bool has_locLongitude;
    float locLongitude;
    bool has_locLatitude;
    float locLatitude;
    bool has_locAltitude;
    float locAltitude;
    bool has_speedGPS;
    float speedGPS;
    bool has_speedInverter;
    float speedInverter;
    bool has_speedWheelSensor;
    float speedWheelSensor;
    bool has_speedDisplayed;
    float speedDisplayed;
    bool has_minInverterCurr;
    float minInverterCurr;
    bool has_maxInverterCurr;
    float maxInverterCurr;
    bool has_avgInverterCurr;
    float avgInverterCurr;
    bool has_tempInverter;
    float tempInverter;
    bool has_tempMotor;
    float tempMotor;
    bool has_minChargerCurrent;
    float minChargerCurrent;
    bool has_maxChargerCurrent;
    float maxChargerCurrent;
    bool has_avgChargerCurrent;
    float avgChargerCurrent;
    bool has_tempCharger;
    float tempCharger;
    bool has_tempDCDC;
    float tempDCDC;
    bool has_fanDCDCState;
    bool fanDCDCState;
    bool has_frontLong;
    bool frontLong;
    bool has_frontShort;
    bool frontShort;
    bool has_DRL;
    bool DRL;
    bool has_frontFog;
    bool frontFog;
    bool has_backFog;
    bool backFog;
    bool has_breakLight;
    bool breakLight;
    bool has_hazardButton;
    bool hazardButton;
    bool has_panicButton;
    bool panicButton;
    bool has_seatHeaterFR;
    bool seatHeaterFR;
    bool has_seatHeaterFL;
    bool seatHeaterFL;
    bool has_seatHeaterRR;
    bool seatHeaterRR;
    bool has_seatHeaterRL;
    bool seatHeaterRL;
    bool has_seatSensorFR;
    bool seatSensorFR;
    bool has_seatSensorFL;
    bool seatSensorFL;
    bool has_seatSensorRR;
    bool seatSensorRR;
    bool has_seatSensorRL;
    bool seatSensorRL;
    bool has_blinkerLeft;
    bool blinkerLeft;
    bool has_blinkerRight;
    bool blinkerRight;
    bool has_doorOpenFR;
    bool doorOpenFR;
    bool has_doorOpenFL;
    bool doorOpenFL;
    bool has_doorOpenRR;
    bool doorOpenRR;
    bool has_doorOpenRL;
    bool doorOpenRL;
    bool has_doorLockedFR;
    bool doorLockedFR;
    bool has_doorLockedFL;
    bool doorLockedFL;
    bool has_doorLockedRR;
    bool doorLockedRR;
    bool has_doorLockedRL;
    bool doorLockedRL;
    pb_callback_t activeError;
/* @@protoc_insertion_point(struct:StatusUpdate) */
} StatusUpdate;

typedef struct _CommandRequest {
    bool has_timestamp;
    int32_t timestamp;
    bool has_commandOrigin;
    COMMAND_ORIGIN commandOrigin;
    bool has_counter;
    int32_t counter;
    bool has_type;
    CommandRequest_TYPE type;
    pb_size_t which_argument;
    union {
        CommandRequest_SetDoorLock setDoorLock;
    } argument;
/* @@protoc_insertion_point(struct:CommandRequest) */
} CommandRequest;

typedef struct _CommandResponse {
    bool has_timestamp;
    int32_t timestamp;
    bool has_commandOrigin;
    COMMAND_ORIGIN commandOrigin;
    bool has_counter;
    int32_t counter;
    bool has_result;
    CommandResponse_RESULT result;
    pb_callback_t error_message;
    pb_size_t which_retval;
    union {
        CommandResponse_SoftwareVersion softwareVersion;
    } retval;
/* @@protoc_insertion_point(struct:CommandResponse) */
} CommandResponse;

typedef struct _ContainerMessage {
    pb_size_t which_message;
    union {
        StatusUpdate status;
        CommandRequest commandRequest;
        CommandResponse commandResponse;
    } message;
/* @@protoc_insertion_point(struct:ContainerMessage) */
} ContainerMessage;

/* Default values for struct fields */

/* Initializer values for message structs */
#define ContainerMessage_init_default            {0, {StatusUpdate_init_default}}
#define StatusUpdate_init_default                {false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, {{NULL}, NULL}}
#define CommandRequest_init_default              {false, 0, false, (COMMAND_ORIGIN)0, false, 0, false, (CommandRequest_TYPE)0, 0, {CommandRequest_SetDoorLock_init_default}}
#define CommandRequest_SetDoorLock_init_default  {false, 0}
#define CommandResponse_init_default             {false, 0, false, (COMMAND_ORIGIN)0, false, 0, false, (CommandResponse_RESULT)0, {{NULL}, NULL}, 0, {CommandResponse_SoftwareVersion_init_default}}
#define CommandResponse_SoftwareVersion_init_default {false, 0, false, 0}
#define ContainerMessage_init_zero               {0, {StatusUpdate_init_zero}}
#define StatusUpdate_init_zero                   {false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, 0, {{NULL}, NULL}}
#define CommandRequest_init_zero                 {false, 0, false, (COMMAND_ORIGIN)0, false, 0, false, (CommandRequest_TYPE)0, 0, {CommandRequest_SetDoorLock_init_zero}}
#define CommandRequest_SetDoorLock_init_zero     {false, 0}
#define CommandResponse_init_zero                {false, 0, false, (COMMAND_ORIGIN)0, false, 0, false, (CommandResponse_RESULT)0, {{NULL}, NULL}, 0, {CommandResponse_SoftwareVersion_init_zero}}
#define CommandResponse_SoftwareVersion_init_zero {false, 0, false, 0}

/* Field tags (for use in manual encoding/decoding) */
#define CommandRequest_SetDoorLock_locked_tag    1
#define CommandResponse_SoftwareVersion_minor_tag 1
#define CommandResponse_SoftwareVersion_major_tag 2
#define StatusUpdate_timestamp_tag               1
#define StatusUpdate_voltageLV_tag               2
#define StatusUpdate_voltageHV_tag               3
#define StatusUpdate_locLongitude_tag            4
#define StatusUpdate_locLatitude_tag             5
#define StatusUpdate_locAltitude_tag             6
#define StatusUpdate_speedGPS_tag                7
#define StatusUpdate_speedInverter_tag           8
#define StatusUpdate_speedWheelSensor_tag        9
#define StatusUpdate_speedDisplayed_tag          10
#define StatusUpdate_minInverterCurr_tag         11
#define StatusUpdate_maxInverterCurr_tag         12
#define StatusUpdate_avgInverterCurr_tag         13
#define StatusUpdate_tempInverter_tag            14
#define StatusUpdate_tempMotor_tag               15
#define StatusUpdate_minChargerCurrent_tag       16
#define StatusUpdate_maxChargerCurrent_tag       17
#define StatusUpdate_avgChargerCurrent_tag       18
#define StatusUpdate_tempCharger_tag             19
#define StatusUpdate_tempDCDC_tag                20
#define StatusUpdate_fanDCDCState_tag            21
#define StatusUpdate_frontLong_tag               22
#define StatusUpdate_frontShort_tag              23
#define StatusUpdate_DRL_tag                     24
#define StatusUpdate_frontFog_tag                25
#define StatusUpdate_backFog_tag                 26
#define StatusUpdate_breakLight_tag              27
#define StatusUpdate_hazardButton_tag            29
#define StatusUpdate_panicButton_tag             30
#define StatusUpdate_seatHeaterFR_tag            31
#define StatusUpdate_seatHeaterFL_tag            32
#define StatusUpdate_seatHeaterRR_tag            33
#define StatusUpdate_seatHeaterRL_tag            34
#define StatusUpdate_seatSensorFR_tag            35
#define StatusUpdate_seatSensorFL_tag            36
#define StatusUpdate_seatSensorRR_tag            37
#define StatusUpdate_seatSensorRL_tag            38
#define StatusUpdate_blinkerLeft_tag             39
#define StatusUpdate_blinkerRight_tag            40
#define StatusUpdate_doorOpenFR_tag              41
#define StatusUpdate_doorOpenFL_tag              42
#define StatusUpdate_doorOpenRR_tag              43
#define StatusUpdate_doorOpenRL_tag              44
#define StatusUpdate_doorLockedFR_tag            45
#define StatusUpdate_doorLockedFL_tag            46
#define StatusUpdate_doorLockedRR_tag            47
#define StatusUpdate_doorLockedRL_tag            48
#define StatusUpdate_activeError_tag             49
#define CommandRequest_setDoorLock_tag           5
#define CommandRequest_timestamp_tag             1
#define CommandRequest_commandOrigin_tag         2
#define CommandRequest_counter_tag               3
#define CommandRequest_type_tag                  4
#define CommandResponse_softwareVersion_tag      6
#define CommandResponse_timestamp_tag            1
#define CommandResponse_commandOrigin_tag        2
#define CommandResponse_counter_tag              3
#define CommandResponse_result_tag               4
#define CommandResponse_error_message_tag        5
#define ContainerMessage_status_tag              1
#define ContainerMessage_commandRequest_tag      2
#define ContainerMessage_commandResponse_tag     3

/* Struct field encoding specification for nanopb */
extern const pb_field_t ContainerMessage_fields[4];
extern const pb_field_t StatusUpdate_fields[49];
extern const pb_field_t CommandRequest_fields[6];
extern const pb_field_t CommandRequest_SetDoorLock_fields[2];
extern const pb_field_t CommandResponse_fields[7];
extern const pb_field_t CommandResponse_SoftwareVersion_fields[3];

/* Maximum encoded size of messages (where known) */
/* ContainerMessage_size depends on runtime parameters */
/* StatusUpdate_size depends on runtime parameters */
#define CommandRequest_size                      30
#define CommandRequest_SetDoorLock_size          2
/* CommandResponse_size depends on runtime parameters */
#define CommandResponse_SoftwareVersion_size     12

/* Message IDs (where set with "msgid" option) */
#ifdef PB_MSGID

#define MESSAGEDEFINITIONS_MESSAGES \


#endif

#ifdef __cplusplus
} /* extern "C" */
#endif
/* @@protoc_insertion_point(eof) */

#endif
