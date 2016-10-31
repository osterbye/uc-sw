/* Halcogen includes */
#include "can.h"
#include "sys_dma.h"

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "os_task.h"

#include "canbus.h"
#include "logging.h"

#define CAN_RX_DMA_CHANNEL DMA_CH15

uint8_t tx_data[16] = {0,1,2,3,4,5,6,7,8,9}; // "abcdefgh";

#define canRECEIVE_BUFFER_SIZE 20
CanMessage_t xReceiveBuffer[canRECEIVE_BUFFER_SIZE]; /* used as circular buffer */
static uint16_t uWriteIndex = 0;
static uint16_t uReadIndex  = 0;

static bool canIsMessageLost = false;

static void dmaConfigCtrlRxPacket(g_dmaCTRL * g_dmaCTRLPKT, uint32 sadd, uint32 dadd);

static inline uint32_t extractID(uint32_t arb) {
    if (arb & (1 << 29))                      /* standard/extended identifier in flag [30] */
        return arb & ((1 << 29) - 1);         /* bits [28:0] */
    else
        return (arb >> 18) & ((1 << 11) - 1); /* bits [28:18], right-shifted by 18 */
}

static void setupCanInterface(enum canInterfaces interface, const CanMessage_t * circularBuffer) {
    g_dmaCTRL dmaConfig;
    canBASE_t * canBase;
    enum dmaCHANNEL dmaChannel;
    uint32_t requestLine;

    if (interface == CANBUS1) {
        canBase = canREG1;
        dmaChannel = DMA_CH13;
        requestLine = DCAN1_IF3_DMAREQ;
    }
    else if (interface == CANBUS2) {
        canBase = canREG2;
        dmaChannel = DMA_CH14;
        requestLine = DCAN2_IF3_DMAREQ;
    }
    else if (interface == CANBUS3) {
        canBase = canREG3;
        dmaChannel = DMA_CH15;
        requestLine = DCAN3_IF3_DMAREQ;
    }
    else {
        LOG_WARN("Invalid CAN interface %d", interface);
        return;
    }

#if (CANBUS_ENABLE_LOOPBACK == 1)
    canEnableloopback(canBase, Internal_Silent_Lbk);
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

void canbusInit() {
    canInit();
#if (CANBUS_USE_INTERFACE_CAN1 == 1)
    setupCanInterface(CANBUS1, &xReceiveBuffer[0]);
#endif
#if (CANBUS_USE_INTERFACE_CAN2 == 1)
    setupCanInterface(CANBUS2, &xReceiveBuffer[0]);
#endif
#if (CANBUS_USE_INTERFACE_CAN3 == 1)
    setupCanInterface(CANBUS3, &xReceiveBuffer[0]);
    /* Demonstration of ignoring specific CAN id (0x666) - in HALCoGen, the first mailbox is set to
       receive specific ID, and that mailbox is now configured not to trigger IF3 automatic update */
    canREG3->IF3UEy[0] &= ~(1 << 0);
#endif
    dmaEnable();
}

void dmaGroupANotification(dmaInterrupt_t inttype, uint32 channel) {
    /* DMA actually copies arbitration register, so here ID is extracted from it */
    xReceiveBuffer[uWriteIndex].id = extractID(xReceiveBuffer[uWriteIndex].id);
    /* if recieved message was written over unread message, set global flag */
    canIsMessageLost |= (xReceiveBuffer[uWriteIndex].mctl >> 14) & 1U;

    /* calculate the destination address for next message and update DMA unit */
    uWriteIndex = (uWriteIndex + 1) % canRECEIVE_BUFFER_SIZE;
    CanMessage_t * dest = &xReceiveBuffer[0] + (uWriteIndex);
    /* Instead of using dmaSetCtrlPacket() to change single register, it is done
     * more efficiently by directly changing the IDADDR in control packet */
    dmaRAMREG->PCP[DMA_CH13].IDADDR = (uint32) dest;
    dmaRAMREG->PCP[DMA_CH14].IDADDR = (uint32) dest;
    dmaRAMREG->PCP[DMA_CH15].IDADDR = (uint32) dest;
}

uint8_t canGetDLC(const CanMessage_t * msg) {
    return msg->mctl & 0b1111; /* extract lowest four bits from MCTL, they contain DLC */
}

uint8_t canGetEoB(const CanMessage_t * msg) {
    return (msg->mctl >> 7) & 1U; /* End of Block flag */
}

static void toHexString(char * dst, const uint8_t * src, unsigned length) {
	*dst = '\0'; /* in case length is 0 */
    while (length) {
        snprintf(dst, 4, "%02X ", *src);
        dst += 3;
        src++;
        length--;
    }
}

static void canbusDumpReceivedUART() {
    char hexMsg[8*3 + 1];
    /* dump whole CAN buffer to UART */
    uint16_t i = uWriteIndex;
    LOG_INFO("CAN receive buffer dump:");
    /* iterate messages from oldest to most recent */
    do {
        toHexString(hexMsg, &(xReceiveBuffer[i].pdu), canGetDLC(&xReceiveBuffer[i]));
        LOG_DEBUG("%03X: %s\r\n", xReceiveBuffer[i].id, hexMsg);
        i  = (i + 1) % canRECEIVE_BUFFER_SIZE;
    } while (i != uWriteIndex);
}

static void canbusSendMessage(enum canInterfaces interface, uint32_t canID, uint8_t dlc, const uint8_t * pdu) {
    uint32_t success;
    canBASE_t * canBase;
    if (interface == CANBUS1)
        canBase = canREG1;
    else if (interface == CANBUS2)
        canBase = canREG2;
    else if (interface == CANBUS3)
        canBase = canREG3;
    else
        LOG_WARN("Invalid CAN interface %d", interface);
    /* TODO: extended identifier can be supported by flag 1 << 30 */
    canUpdateID(canBase, canMESSAGE_BOX64, canID << 18 | (1 << 29));
    success = canTransmit(canBase, canMESSAGE_BOX64, pdu);
    if (success != 1)
        LOG_WARN("CAN message not sent (another message already pending?)");
}

#include "globalState.h"

/* Example CAN bus message handler for ID 0x351,
   vehicle speed in bytes 2 and 3 to be divided by 192 */
static void handlerVehicleSpeed(const CanMessage_t * msg) {
    uint16_t canSpeed = msg->pdu[2] + ((uint16_t) msg->pdu[3] << 8);
    float speed = canSpeed / 192;
    Set_fSpeedMPH(speed);
}

typedef struct {
    uint32_t id;
    void (* handlerFunction)(const CanMessage_t *);
} CanbusMessageHandler_t;

CanbusMessageHandler_t handlers[] = {
    {0x351, handlerVehicleSpeed},
};

static void handleReceivedMessages() {
    int i;
    const int handlersCount = sizeof(handlers) / sizeof(CanbusMessageHandler_t);
    if (uReadIndex != uWriteIndex) { /* new messages pending */
        /* execute all handlers with same ID */
        for (i = 0; i < handlersCount; i++) {
            if (xReceiveBuffer[uReadIndex].id == handlers[i].id) {
                handlers[i].handlerFunction(&xReceiveBuffer[uReadIndex]); 
            }
        }
        uReadIndex = (uReadIndex + 1) % canRECEIVE_BUFFER_SIZE;
    }
}

void canbusTask(void *pvParameters) {
    uint16_t counter = 0x660;
    float speed;
    uint8_t canBusNum = 3;
    //canbusDumpReceivedUART();

    while(1){
    	counter++;
        /*tx_data[2] = 0x12 + counter;
        tx_data[3] = 0x34;
        tx_data[6] = '0' + (counter++ % 10);*/
        canbusSendMessage(canBusNum, counter, 8, tx_data); // + (counter % 3)
        LOG_INFO("sent CAN msg");

        if (counter % canRECEIVE_BUFFER_SIZE == 0)
            canbusDumpReceivedUART();

        vTaskDelay(100 / portTICK_PERIOD_MS);
        handleReceivedMessages();
        speed = Get_fSpeedMPH();
    }
}
