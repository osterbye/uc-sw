#include "pinDescriptions.h"

#include "gio.h"
#include "het.h"
#include "spi.h"

const pinDescription_t ledGreen  = {hetPORT1, 10};
const pinDescription_t ledOrange = {hetPORT1, 12};
const pinDescription_t ledRed    = {hetPORT1, 11};

const pinDescription_t userButton = {hetPORT1, 9};

const pinDescription_t seatSensorFL = {hetPORT1, 15};
const pinDescription_t seatSensorFR = {hetPORT1, 13};
const pinDescription_t seatSensorRL = {hetPORT1, 6};
const pinDescription_t seatSensorRR = {hetPORT1, 19};

const pinDescription_t doorLock   = {gioPORTA, 0};
const pinDescription_t doorUnlock = {gioPORTB, 2};

const pinDescription_t spiRequestTransmit = {spiPORT4, 0};

const pinDescription_t can1Standby  = {gioPORTA, 0};
const pinDescription_t can1Shutdown = {gioPORTA, 1};
const pinDescription_t can2Standby  = {gioPORTA, 2};
const pinDescription_t can2Shutdown = {gioPORTA, 5};
const pinDescription_t can3Standby  = {gioPORTA, 6};
const pinDescription_t can3Shutdown = {gioPORTA, 7};
