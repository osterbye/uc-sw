/*
 * cm_communication.c
 *
 *  Created on: Aug 30, 2016
 *      Author: lovro
 */

/* Standard includes. */
#include <stdio.h>

/* nanopb */
#include "pb_decode.h"
#include "pb_encode.h"
#include "MessageDefinitions.pb.h"

#include "buildStatusUpdate.h"

/* project includes */
#include "system.h"
#include "sys_common.h"

#include "cmCommunication.h"
#include "globalState.h"
#include "cbuffer.h"
#include "logging.h"
#include "commandExecution.h"

static void commandDispatch(const CommandRequest * request);

typedef void (*commandExecutioner_t)(const CommandRequest *);

// function pointer list
#define X(commandType) &commandExecution_##commandType,
commandExecutioner_t  commandExecutioniersList [_CommandRequest_TYPE_MAX] = { \
                                                                              COMMAND_EXECUTION_TYPES
                                                                            };
#undef X

/**
 * Tests the command execution mechanism
 */
void taskCmCommandExecutionTest(void *pvParameters) {
    //SETDOORLOCK argument lock door
    uint8_t message[] = {0x12, 0x0D, 0x08, 0xE8, 0x07, 0x10, 0x02, 0x18, 0x00, 0x20, 0x01, 0x2A, 0x02, 0x08, 0x01};
    cmStreamToProtobuf(message, sizeof(message));
    while (1) {
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    };
}
/**
 * Dispatches the incomming command requests
 * @param request Command request to be dispatched
 */
static void commandDispatch(const CommandRequest * request) {
    commandResponse_t response = 0;
    // check if it has type
    if (!request->has_type) {
        LOG_WARN("Could not execute command -> It has no type!");
        return;
    }
    // check if type is in range
    if ((request->type > _CommandRequest_TYPE_MAX) ||
            (request->type < _CommandRequest_TYPE_MIN)) {
        LOG_WARN("Could not execute command -> Type not supported!");
        // send command response - UNSUPPORTED
        return;
    }
    //execute command
    LOG_INFO("Sent command of %d type for execution", request->type - 1);
    commandExecutioniersList[request->type - 1 ](request);
    // send response to CM
}

/**
 * Transforms byte stream of the incomming message to a protobuf structure and calls an apropriate dispatcher
 * @param message points to the incomming message
 * @param length holds lenght of the incomming message
 */
void cmStreamToProtobuf(uint8_t * message, uint16_t length) {
    bool status;
    pb_istream_t stream = pb_istream_from_buffer(message, length);
    ContainerMessage container;
    status = pb_decode(&stream, ContainerMessage_fields, &container);
    if (!status) {
        LOG_WARN("PB Decode error, message unparsable");
        return;
        // TODO: handle decode error
    }

    switch (container.which_message) {
    case ContainerMessage_commandRequest_tag:
        LOG_INFO("Executing command request");
        commandDispatch(&container.message.commandRequest);
        break;
    case ContainerMessage_commandResponse_tag:
        LOG_WARN("Command response handling not implemented");
        break;
    case ContainerMessage_status_tag:
        LOG_WARN("CM shouldn't send status and command response messages");
        break;
    default:
        LOG_WARN("Received unknown message type %d", container.which_message);
        break;
    }
}
/**
 * Task that periodically sends status messages to the computation module
 */
void taskCmSendStatus (void *pvParameters) {
    bool status;
    uint8_t buffer[256];
    LOG_INFO("Entering SendStatus task");
    ContainerMessage container = ContainerMessage_init_zero;
    container.which_message = ContainerMessage_status_tag;
    while (1) {
        pb_ostream_t stream = pb_ostream_from_buffer(buffer, sizeof(buffer));
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        buildStatusUpdate(&container.message.status);
        status = pb_encode(&stream, ContainerMessage_fields, &container);
        if (!status)
            LOG_WARN("PB encoding failed: %s", PB_GET_ERROR(&stream));
        else {
#ifdef DUMP_STATUS_UPDATE
            int i;
            LOG_PRINTF("Sending: ");
            for (i = 0; i < stream.bytes_written; i++)
                LOG_PRINTF("%02x ", buffer[i]);
            LOG_PRINTF("\r\n");
#endif
            if (spiTxPush(stream.bytes_written, buffer))
                LOG_WARN("not enough space in SPI tx buffer");
        }
    }
}
