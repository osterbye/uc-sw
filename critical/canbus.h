#ifndef CANBUS_H
#define CANBUS_H

enum canInterfaces {
    CANBUS1 = 1,
    CANBUS2 = 2,
    CANBUS3 = 3    
};

/* as per "Table 4-3. DMA Request Line Connection" from uC datasheet */
enum canDmaRequests {
    DCAN1_IF3_DMAREQ = 16,
    DCAN2_IF3_DMAREQ = 4,
    DCAN3_IF3_DMAREQ = 21
};

typedef struct {
    uint32_t id;        /* CAN ID extracted from arbitration register (11- or 29-bit) */
    uint32_t mctl;      /* message control register with various flags describing message */
    uint8_t  pdu[8];    /* actual payload of CAN message */
} CanMessage_t;

void canbusInit();
void canbusTask(void *pvParameters);

#endif /* CANBUS_H */
