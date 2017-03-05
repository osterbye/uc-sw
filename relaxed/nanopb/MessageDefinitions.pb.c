/* Automatically generated nanopb constant definitions */
/* Generated by nanopb-0.3.7 at Sat Mar  4 16:56:34 2017. */

#include "MessageDefinitions.pb.h"

/* @@protoc_insertion_point(includes) */
#if PB_PROTO_HEADER_VERSION != 30
#error Regenerate this file with the current version of nanopb generator.
#endif



const pb_field_t ContainerMessage_fields[4] = {
    PB_ONEOF_FIELD(message,   1, MESSAGE , ONEOF, STATIC  , FIRST, ContainerMessage, status, status, &StatusUpdate_fields),
    PB_ONEOF_FIELD(message,   2, MESSAGE , ONEOF, STATIC  , FIRST, ContainerMessage, commandRequest, commandRequest, &CommandRequest_fields),
    PB_ONEOF_FIELD(message,   3, MESSAGE , ONEOF, STATIC  , FIRST, ContainerMessage, commandResponse, commandResponse, &CommandResponse_fields),
    PB_LAST_FIELD
};

const pb_field_t StatusUpdate_fields[17] = {
    PB_FIELD(  1, INT32   , OPTIONAL, STATIC  , FIRST, StatusUpdate, timestamp, timestamp, 0),
    PB_FIELD(  4, FLOAT   , OPTIONAL, STATIC  , OTHER, StatusUpdate, locLongitude, timestamp, 0),
    PB_FIELD(  5, FLOAT   , OPTIONAL, STATIC  , OTHER, StatusUpdate, locLatitude, locLongitude, 0),
    PB_FIELD(  6, FLOAT   , OPTIONAL, STATIC  , OTHER, StatusUpdate, locAltitude, locLatitude, 0),
    PB_FIELD(  7, FLOAT   , OPTIONAL, STATIC  , OTHER, StatusUpdate, speedGPS, locAltitude, 0),
    PB_FIELD( 35, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, seatOccupiedFR, speedGPS, 0),
    PB_FIELD( 36, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, seatOccupiedFL, seatOccupiedFR, 0),
    PB_FIELD( 37, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, seatOccupiedRR, seatOccupiedFL, 0),
    PB_FIELD( 38, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, seatOccupiedRL, seatOccupiedRR, 0),
    PB_FIELD(200, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, blinkerLeft, seatOccupiedRL, 0),
    PB_FIELD(201, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, blinkerRight, blinkerLeft, 0),
    PB_FIELD(202, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, doorOpenFR, blinkerRight, 0),
    PB_FIELD(203, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, doorOpenFL, doorOpenFR, 0),
    PB_FIELD(204, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, doorOpenRR, doorOpenFL, 0),
    PB_FIELD(205, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, doorOpenRL, doorOpenRR, 0),
    PB_FIELD(206, BOOL    , OPTIONAL, STATIC  , OTHER, StatusUpdate, vehicleLocked, doorOpenRL, 0),
    PB_LAST_FIELD
};

const pb_field_t CommandRequest_fields[7] = {
    PB_FIELD(  1, INT32   , OPTIONAL, STATIC  , FIRST, CommandRequest, timestamp, timestamp, 0),
    PB_FIELD(  2, UENUM   , OPTIONAL, STATIC  , OTHER, CommandRequest, commandOrigin, timestamp, 0),
    PB_FIELD(  3, INT32   , OPTIONAL, STATIC  , OTHER, CommandRequest, counter, commandOrigin, 0),
    PB_FIELD(  4, UENUM   , OPTIONAL, STATIC  , OTHER, CommandRequest, type, counter, 0),
    PB_ONEOF_FIELD(argument,   5, MESSAGE , ONEOF, STATIC  , OTHER, CommandRequest, setDoorLock, type, &CommandRequest_SetDoorLock_fields),
    PB_ONEOF_FIELD(argument,   6, MESSAGE , ONEOF, STATIC  , OTHER, CommandRequest, ap102Control, type, &CommandRequest_Ap102Control_fields),
    PB_LAST_FIELD
};

const pb_field_t CommandRequest_SetDoorLock_fields[2] = {
    PB_FIELD(  1, BOOL    , OPTIONAL, STATIC  , FIRST, CommandRequest_SetDoorLock, locked, locked, 0),
    PB_LAST_FIELD
};

const pb_field_t CommandRequest_Ap102Control_fields[3] = {
    PB_FIELD(  1, FLOAT   , OPTIONAL, STATIC  , FIRST, CommandRequest_Ap102Control, speed, speed, 0),
    PB_FIELD(  2, FLOAT   , OPTIONAL, STATIC  , OTHER, CommandRequest_Ap102Control, direction, speed, 0),
    PB_LAST_FIELD
};

const pb_field_t CommandResponse_fields[7] = {
    PB_FIELD(  1, INT32   , OPTIONAL, STATIC  , FIRST, CommandResponse, timestamp, timestamp, 0),
    PB_FIELD(  2, UENUM   , OPTIONAL, STATIC  , OTHER, CommandResponse, commandOrigin, timestamp, 0),
    PB_FIELD(  3, INT32   , OPTIONAL, STATIC  , OTHER, CommandResponse, counter, commandOrigin, 0),
    PB_FIELD(  4, UENUM   , OPTIONAL, STATIC  , OTHER, CommandResponse, result, counter, 0),
    PB_FIELD(  5, STRING  , OPTIONAL, CALLBACK, OTHER, CommandResponse, error_message, result, 0),
    PB_ONEOF_FIELD(retval,   6, MESSAGE , ONEOF, STATIC  , OTHER, CommandResponse, softwareFileVersion, error_message, &CommandResponse_SoftwareFileVersion_fields),
    PB_LAST_FIELD
};

const pb_field_t CommandResponse_SoftwareFileVersion_fields[3] = {
    PB_FIELD(  1, UINT32  , OPTIONAL, STATIC  , FIRST, CommandResponse_SoftwareFileVersion, minor, minor, 0),
    PB_FIELD(  2, UINT32  , OPTIONAL, STATIC  , OTHER, CommandResponse_SoftwareFileVersion, major, minor, 0),
    PB_LAST_FIELD
};

typedef struct {
    FieldEndPoint source;
} source_struct;

static const pb_field_t source_field = 
      PB_FIELD(50000, ENUM    , OPTEXT, STATIC  , FIRST, source_struct, source, source, 0);

const pb_extension_type_t source = {
    NULL,
    NULL,
    &source_field
};

typedef struct {
    FieldEndPoint sink;
} sink_struct;

static const pb_field_t sink_field = 
      PB_FIELD(50001, ENUM    , OPTEXT, STATIC  , FIRST, sink_struct, sink, sink, 0);

const pb_extension_type_t sink = {
    NULL,
    NULL,
    &sink_field
};

typedef struct {
    uint32_t FileVersionMajor;
} FileVersionMajor_struct;

static const pb_field_t FileVersionMajor_field = 
      PB_FIELD(50010, UINT32  , OPTEXT, STATIC  , FIRST, FileVersionMajor_struct, FileVersionMajor, FileVersionMajor, 0);

const pb_extension_type_t FileVersionMajor = {
    NULL,
    NULL,
    &FileVersionMajor_field
};

typedef struct {
    uint32_t FileVersionMinor;
} FileVersionMinor_struct;

static const pb_field_t FileVersionMinor_field = 
      PB_FIELD(50011, UINT32  , OPTEXT, STATIC  , FIRST, FileVersionMinor_struct, FileVersionMinor, FileVersionMinor, 0);

const pb_extension_type_t FileVersionMinor = {
    NULL,
    NULL,
    &FileVersionMinor_field
};


/* Check that field information fits in pb_field_t */
#if !defined(PB_FIELD_32BIT)
/* If you get an error here, it means that you need to define PB_FIELD_32BIT
 * compile-time option. You can do that in pb.h or on compiler command line.
 * 
 * The reason you need to do this is that some of your messages contain tag
 * numbers or field sizes that are larger than what can fit in 8 or 16 bit
 * field descriptors.
 */
PB_STATIC_ASSERT((pb_membersize(ContainerMessage, message.status) < 65536 && pb_membersize(ContainerMessage, message.commandRequest) < 65536 && pb_membersize(ContainerMessage, message.commandResponse) < 65536 && pb_membersize(CommandRequest, argument.setDoorLock) < 65536 && pb_membersize(CommandRequest, argument.ap102Control) < 65536 && pb_membersize(CommandResponse, retval.softwareFileVersion) < 65536), YOU_MUST_DEFINE_PB_FIELD_32BIT_FOR_MESSAGES_ContainerMessage_StatusUpdate_CommandRequest_CommandRequest_SetDoorLock_CommandRequest_Ap102Control_CommandResponse_CommandResponse_SoftwareFileVersion)
#endif

#if !defined(PB_FIELD_16BIT) && !defined(PB_FIELD_32BIT)
/* If you get an error here, it means that you need to define PB_FIELD_16BIT
 * compile-time option. You can do that in pb.h or on compiler command line.
 * 
 * The reason you need to do this is that some of your messages contain tag
 * numbers or field sizes that are larger than what can fit in the default
 * 8 bit descriptors.
 */
PB_STATIC_ASSERT((pb_membersize(ContainerMessage, message.status) < 256 && pb_membersize(ContainerMessage, message.commandRequest) < 256 && pb_membersize(ContainerMessage, message.commandResponse) < 256 && pb_membersize(CommandRequest, argument.setDoorLock) < 256 && pb_membersize(CommandRequest, argument.ap102Control) < 256 && pb_membersize(CommandResponse, retval.softwareFileVersion) < 256), YOU_MUST_DEFINE_PB_FIELD_16BIT_FOR_MESSAGES_ContainerMessage_StatusUpdate_CommandRequest_CommandRequest_SetDoorLock_CommandRequest_Ap102Control_CommandResponse_CommandResponse_SoftwareFileVersion)
#endif


/* @@protoc_insertion_point(eof) */
