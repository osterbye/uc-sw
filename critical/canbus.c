/* Halcogen includes */
#include "can.h"

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "os_task.h"

#include "canbus.h"
#include "logging.h"

canMessage_t receiveBuffer[CANBUS_RECEIVE_BUFFER_SIZE]; /* used as circular buffer */
static uint16_t writeIndex = 0;
static uint16_t readIndex  = 0;

static bool canbusIsMessageLost = false;

static inline uint32_t extractID(uint32_t arb) {
    if (arb & (1 << 29)) {                    /* standard/extended identifier in flag [30] */
        return arb & ((1 << 29) - 1);         /* bits [28:0] */
    } else {
        return (arb >> 18) & ((1 << 11) - 1); /* bits [28:18], right-shifted by 18 */
    }
}

static void setupCanInterface(enum canInterfaces interface, const canMessage_t * circularBuffer) {
    g_dmaCTRL dmaConfig;
    canBASE_t * canBase;
    enum dmaCHANNEL dmaChannel;
    uint32_t requestLine;

    if (interface == CANBUS1) {
        canBase = canREG1;
        dmaChannel = DMA_CH13;
        requestLine = DCAN1_IF3_DMAREQ;
    } else if (interface == CANBUS2) {
        canBase = canREG2;
        dmaChannel = DMA_CH14;
        requestLine = DCAN2_IF3_DMAREQ;
    } else if (interface == CANBUS3) {
        canBase = canREG3;
        dmaChannel = DMA_CH15;
        requestLine = DCAN3_IF3_DMAREQ;
    } else {
        LOG_WARN("Invalid CAN interface %d", interface);
        return;
    }

#if (CANBUS_LOOPBACK_ACTIVE)
    canEnableloopback(canBase, External_Lbk);
#endif

    /* Update Enable for message for first 63 message objects (mailboxes) for receiving */
    /* If CAN IDs need to be ignored, they should be put to first mailboxes and their flags
       removed from Update Enabled register */
    canBase->IF3UEy[0] = 0xFFFFFFFFU; /* enable first 32 mailboxes */
    canBase->IF3UEy[1] = 0x7FFFFFFFU; /* 64rd mailbox is transmit with UE disabled */
    canBase->CTL |= (1U << 20U); /* Enable DE3 bit to trigger DMA on IF3 data receive */
    canBase->IF3OBS = 0b11010;   /* Observation register set to read ARB, data A and data B */

    /* Configure DMA channel to copy any incoming message (automatically read into IF3) to circular
       buffer and raise interrupt on Frame Transfer Completed event */
    dmaEnableInterrupt(dmaChannel, FTC); /* Enable Interrupt after reception of data */
    /* source is IF3 registers (ARB, MCTL and DATA), destination is circular receive buffer */
    dmaConfig.SADD      = (uint32)(&(canBase->IF3ARB));  /* source address        */
    dmaConfig.DADD      = (uint32)(circularBuffer);      /* destination  address  */
    dmaConfig.CHCTRL    = 0;                 /* channel control                   */
    dmaConfig.FRCNT     = 1;                 /* frame count                       */
    dmaConfig.ELCNT     = 8;                 /* element count                     */
    dmaConfig.ELDOFFSET = 2;                 /* element destination offset        */
    dmaConfig.ELSOFFSET = 2;                 /* element source offset             */
    dmaConfig.FRDOFFSET = 0;                 /* frame destination offset          */
    dmaConfig.FRSOFFSET = 0;                 /* frame source offset               */
    dmaConfig.PORTASGN  = 0b100;             /* channel assigned to port B        */
    dmaConfig.RDSIZE    = ACCESS_16_BIT;     /* read size                         */
    dmaConfig.WRSIZE    = ACCESS_16_BIT;     /* write size                        */
    dmaConfig.TTYPE     = FRAME_TRANSFER ;   /* transfer type                     */
    dmaConfig.ADDMODERD = ADDR_INC1;         /* address mode read                 */
    dmaConfig.ADDMODEWR = ADDR_INC1;         /* address mode write                */
    dmaConfig.AUTOINIT  = AUTOINIT_ON;       /* autoinit                          */
    dmaSetCtrlPacket(dmaChannel, dmaConfig);
    dmaReqAssign(dmaChannel, requestLine);
    dmaSetChEnable(dmaChannel, DMA_HW);
}
/**
 * Initialising can bus interfaces
 * TODO all interfaces are using same input buffer, will they step on each others toes??
 */
void canbusInit() {
    canInit();
#if (CANBUS_INTERFACE_CAN1_ACTIVE)
    setupCanInterface(CANBUS1, &receiveBuffer[0]);
#endif
#if (CANBUS_INTERFACE_CAN2_ACTIVE)
    setupCanInterface(CANBUS2, &receiveBuffer[0]);
#endif
#if (CANBUS_INTERFACE_CAN3_ACTIVE)
    setupCanInterface(CANBUS3, &receiveBuffer[0]);
    /* Demonstration of ignoring specific CAN id (0x666) - in HALCoGen, the first mailbox is set to
       receive specific ID, and that mailbox is now configured not to trigger IF3 automatic update */
    canREG3->IF3UEy[0] &= ~(1 << 0);
#endif
}
/**
 * Function called from interrupt when DMA transfer finishes
 * @param inttype holds type of generated interrupt
 * @param channel holds DMA channel that generated the interrupt
 */
void canbusDmaNotification(dmaInterrupt_t inttype, uint32 channel) {
    /* DMA actually copies arbitration register, so here ID is extracted from it */
    receiveBuffer[writeIndex].id = extractID(receiveBuffer[writeIndex].id);
    /* if recieved message was written over unread message, set global flag */
    canbusIsMessageLost |= (receiveBuffer[writeIndex].mctl >> 14) & 1U;

    /* calculate the destination address for next message and update DMA unit */
    writeIndex = (writeIndex + 1) % CANBUS_RECEIVE_BUFFER_SIZE;
    canMessage_t * dest = &receiveBuffer[0] + (writeIndex);
    /* Instead of using dmaSetCtrlPacket() to change single register, it is done
     * more efficiently by directly changing the IDADDR in control packet */
    dmaRAMREG->PCP[DMA_CH13].IDADDR = (uint32) dest;
    dmaRAMREG->PCP[DMA_CH14].IDADDR = (uint32) dest;
    dmaRAMREG->PCP[DMA_CH15].IDADDR = (uint32) dest;
}
/**
 * Fetches the Data Load Count ( number of bytes in payload )
 */
uint8_t canGetDLC(const canMessage_t * msg) {
    return msg->mctl & 0b1111; /* extract lowest four bits from MCTL, they contain DLC */
}
/**
 * Fetches the End of Block flag
 */
uint8_t canGetEoB(const canMessage_t * msg) {
    return (msg->mctl >> 7) & 1U;
}

/**
 * Sends a message to can bus
 * @param interface interface throught which to send the message
 * @param canID ID that the message should have
 * @param dlc number of bytes in the payload
 * @param pdu points to data that should be sent
 */
static void canbusSendMessage(enum canInterfaces interface, uint32_t canID, uint8_t dlc, const uint8_t * pdu) {
    uint32_t success;
    canBASE_t * canBase;
    if (interface == CANBUS1){
#if (CANBUS_INTERFACE_CAN1_ACTIVE)
        canBase = canREG1;
#else
        LOG_WARN("CAN interface not in use %d", interface);
        return;
#endif
    } else if (interface == CANBUS2) {
#if (CANBUS_INTERFACE_CAN2_ACTIVE)
        canBase = canREG2;
#else
        LOG_WARN("CAN interface not in use %d", interface);
        return;
#endif
    } else if (interface == CANBUS3) {
#if (CANBUS_INTERFACE_CAN3_ACTIVE)
        canBase = canREG3;
#else
        LOG_WARN("CAN interface not in use %d", interface);
        return;
#endif
    } else {
        LOG_WARN("Invalid CAN interface %d", interface);
        return;
    }
    /* TODO: extended identifier can be supported by flag 1 << 30 */
    canUpdateID(canBase, canMESSAGE_BOX64, canID << 18 | (1 << 29));
    success = canTransmit(canBase, canMESSAGE_BOX64, pdu);
    if (success != 1)
        LOG_WARN("CAN message not sent (another message already pending?)");
}

// CAN handlers configuration
#include "subsystems/Comfort.h"
#include "subsystems/Lights.h"
canbusMessageHandler_t handlers[] = {
    {0x4b9, canbusRxVehicleLocked},
    {0x470, canbusRxDoorsOpen},
    {0x470, canbusRxBlinkerLights},
};

/**
 * Dispatches CAN message to registered CAN handlers with same ID as incomming message
 * @param msg pointer to CAN message
 */
static void dispatchToHandler(const canMessage_t * msg) {
    int i;
    const int handlersCount = sizeof(handlers) / sizeof(canbusMessageHandler_t);
    /* execute all handlers with same ID */
    for (i = 0; i < handlersCount; i++) {
        if (msg->id == handlers[i].id) {
            handlers[i].handlerFunction(msg);
        }
    }
}


static void handleReceivedMessages() {
    if (readIndex != writeIndex) { /* new messages pending */
    	dispatchToHandler(&receiveBuffer[readIndex]);
#if (CANBUS_RX_DUMP)
        loggingToHex(loggingStr, &(receiveBuffer[readIndex].pdu), canGetDLC(&receiveBuffer[readIndex]));
#endif
        LOG_DEBUG("%03X: %s", receiveBuffer[readIndex].id, loggingStr);
        readIndex = (readIndex + 1) % CANBUS_RECEIVE_BUFFER_SIZE;
    }
}
/**
 * Turns the crank for handling incomming and outgoing can messages
 */
void canbusTask(void *pvParameters) {
    uint16_t counter = 0x660;
    uint8_t tx_data[16] = {0,1,2,3,4,5,6,7,8,9};

    while(1){
    	counter++;
        /*tx_data[2] = 0x12 + counter;
        tx_data[3] = 0x34;
        tx_data[6] = '0' + (counter++ % 10);*/
        //canbusSendMessage(canBusNum, counter, 8, tx_data); // + (counter % 3)
        //LOG_INFO("sent CAN msg");

        vTaskDelay(10 / portTICK_PERIOD_MS);
        handleReceivedMessages();
    }
}
