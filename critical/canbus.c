/* Halcogen includes */
#include "can.h"
#include "sys_dma.h"

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "os_task.h"

#include "canbus.h"
#include "logging.h"

#define CAN_RX_DMA_CHANNEL DMA_CH15

uint8_t tx_data[16] = "abcdefgh";

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

void canbusInit() {
    g_dmaCTRL dmaConfig;

    canInit();
    canEnableloopback(canREG1, Internal_Lbk);

    canREG1->IF3UEy[0]= 0b1111;  /* Update Enable for message objects 1 to 4 */
    canREG1->CTL |= (1U << 20U); /* Enable DE3 bit to trigger DMA on IF3 data receive */
    canREG1->IF3OBS = 0b11010;   /* Observation register set to read ARB, data A and data B */

    dmaEnableInterrupt(DMA_CH15, FTC); /* Enable Interrupt after reception of data */

    /* source is IF3 registers (ARB, MCTL and DATA), destination is circular receive buffer */
    dmaConfigCtrlRxPacket(&dmaConfig,
                          (uint32)(&(canREG1->IF3ARB)),
                          (uint32)(&xReceiveBuffer[0]));

    dmaSetCtrlPacket(DMA_CH15, dmaConfig);
    dmaReqAssign(DMA_CH15, DCAN1_IF3_DMAREQ);
    dmaSetChEnable(DMA_CH15, DMA_HW);
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
    dmaRAMREG->PCP[DMA_CH15].IDADDR = (uint32) dest;
}

uint8_t canGetDLC(const CanMessage_t * msg) {
    return msg->mctl & 0b1111; /* extract lowest four bits from MCTL, they contain DLC */
}

uint8_t canGetEoB(const CanMessage_t * msg) {
    return (msg->mctl >> 7) & 1U; /* End of Block flag */
}

void canMessageNotification(canBASE_t *node, uint32 messageBox) {
    tx_data[7]++;
}

static void dmaConfigCtrlRxPacket(g_dmaCTRL * g_dmaCTRLPKT, uint32 sadd, uint32 dadd) {
    g_dmaCTRLPKT->SADD      = sadd;              /* source address             */
    g_dmaCTRLPKT->DADD      = dadd;              /* destination  address       */
    g_dmaCTRLPKT->CHCTRL    = 0;                 /* channel control            */
    g_dmaCTRLPKT->FRCNT     = 1;                 /* frame count                */
    g_dmaCTRLPKT->ELCNT     = 8;                 /* element count              */
    g_dmaCTRLPKT->ELDOFFSET = 2;                 /* element destination offset */
    g_dmaCTRLPKT->ELSOFFSET = 2;                 /* element source offset      */
    g_dmaCTRLPKT->FRDOFFSET = 0;                 /* frame destination offset   */
    g_dmaCTRLPKT->FRSOFFSET = 0;                 /* frame source offset        */
    g_dmaCTRLPKT->PORTASGN  = 0b100;             /* channel assigned to port B */
    g_dmaCTRLPKT->RDSIZE    = ACCESS_16_BIT;     /* read size                  */
    g_dmaCTRLPKT->WRSIZE    = ACCESS_16_BIT;     /* write size                 */
    g_dmaCTRLPKT->TTYPE     = FRAME_TRANSFER ;   /* transfer type              */
    g_dmaCTRLPKT->ADDMODERD = ADDR_INC1;         /* address mode read          */
    g_dmaCTRLPKT->ADDMODEWR = ADDR_INC1;         /* address mode write         */
    g_dmaCTRLPKT->AUTOINIT  = AUTOINIT_ON;      /* autoinit                   */
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
    LOG_INFO("CAN receive buffer dump:\n");
    /* iterate messages from oldest to most recent */
    do {
        toHexString(hexMsg, &(xReceiveBuffer[i].pdu), canGetDLC(&xReceiveBuffer[i]));
        LOG_INFO("%03X: %s\n", xReceiveBuffer[i].id, hexMsg);
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
        LOG_WARN("Invalid CAN interface %d\n", interface);
    /* TODO: extended identifier can be supported by flag 1 << 30 */
    canUpdateID(canBase, canMESSAGE_BOX64, canID << 18 | (1 << 29));
    success = canTransmit(canBase, canMESSAGE_BOX64, pdu);
    if (success != 1)
        LOG_WARN("CAN message not sent (another message already pending?)\n");
}

void canbusTask(void *pvParameters) {
    uint8_t counter = 0;

    canbusDumpReceivedUART();
    while(1){
        tx_data[6] = '0' + (counter++ % 10);
        canbusSendMessage(CANBUS1, counter, 8, tx_data);
        //canUpdateID(canREG1, canMESSAGE_BOX64, (counter) << 18 | (1 << 29) | (0  << 30));
        //success = canTransmit(canREG1, canMESSAGE_BOX64, tx_data);
        LOG_DEBUG("sent CAN msg\n");

        if (counter % 50 == 0) canbusDumpReceivedUART();

        vTaskDelay(100 / portTICK_PERIOD_MS);
    }
}
