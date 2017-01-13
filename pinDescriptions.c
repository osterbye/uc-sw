#include "pinDescriptions.h"

#include "gio.h"
#include "het.h"
#include "spi.h"

const pinDescription_t ledGreen = {gioPORTB, 1};

const pinDescription_t seatSensorFL = {hetPORT1, 15};
const pinDescription_t seatSensorFR = {hetPORT1, 13};
const pinDescription_t seatSensorRL = {hetPORT1, 6};
const pinDescription_t seatSensorRR = {hetPORT1, 19};

const pinDescription_t doorLock   = {gioPORTA, 0};
const pinDescription_t doorUnlock = {gioPORTB, 2};

const pinDescription_t spiRequestTransmit = {spiPORT4, 0};
