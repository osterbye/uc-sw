#include "pinDescriptions.h"

#include "gio.h"
#include "het.h"
#include "spi.h"

const pinDescription_t ledGreen  = {hetPORT1, PIN_HET_10};
const pinDescription_t ledOrange = {hetPORT1, PIN_HET_12};
const pinDescription_t ledRed    = {hetPORT1, PIN_HET_11};

const pinDescription_t userButton = {hetPORT1, PIN_HET_9};

const pinDescription_t seatSensorFL = {hetPORT1, PIN_HET_15};
const pinDescription_t seatSensorFR = {hetPORT1, PIN_HET_13};
const pinDescription_t seatSensorRL = {hetPORT1, PIN_HET_6};
const pinDescription_t seatSensorRR = {hetPORT1, PIN_HET_19};

const pinDescription_t doorLock   = {gioPORTA, 0};
const pinDescription_t doorUnlock = {gioPORTB, 2};

const pinDescription_t spiRequestTransmit = {spiPORT4, SPI_PIN_CS0};

const pinDescription_t can1Standby  = {gioPORTA, 0};
const pinDescription_t can1Shutdown = {gioPORTA, 1};
const pinDescription_t can2Standby  = {gioPORTA, 2};
const pinDescription_t can2Shutdown = {gioPORTA, 5};
const pinDescription_t can3Standby  = {gioPORTA, 6};
const pinDescription_t can3Shutdown = {gioPORTA, 7};

const pinDescription_t digitalInput0 = {hetPORT1, PIN_HET_15};
const pinDescription_t digitalInput1 = {hetPORT1, PIN_HET_16};
const pinDescription_t digitalInput2 = {hetPORT1, PIN_HET_18};
const pinDescription_t digitalInput3 = {hetPORT1, PIN_HET_20};
const pinDescription_t digitalInput4 = {hetPORT1, PIN_HET_22};
const pinDescription_t digitalInput5 = {hetPORT1, PIN_HET_24};
const pinDescription_t digitalInput6 = {hetPORT1, PIN_HET_26};
const pinDescription_t digitalInput7 = {hetPORT1, PIN_HET_28};

const pinDescription_t digitalOutput0 = {spiPORT1, SPI_PIN_CS0}; /* will be swapped with CM_SPI_CS in next revision */
const pinDescription_t digitalOutput1 = {spiPORT1, SPI_PIN_CS2};
const pinDescription_t digitalOutput2 = {spiPORT3, SPI_PIN_CS0};
const pinDescription_t digitalOutput3 = {spiPORT3, SPI_PIN_CS1};
const pinDescription_t digitalOutput4 = {spiPORT3, SPI_PIN_CS2};
const pinDescription_t digitalOutput5 = {spiPORT3, SPI_PIN_CS3};
const pinDescription_t digitalOutput6 = {spiPORT5, SPI_PIN_CS0};
const pinDescription_t digitalOutput7 = {spiPORT5, SPI_PIN_SIMO};

const pinDescription_t cmReset     = {hetPORT1, PIN_HET_0};
const pinDescription_t cmWake      = {hetPORT1, PIN_HET_1};
const pinDescription_t cmSpiM2SInt = {hetPORT1, PIN_HET_2};
const pinDescription_t cmSpiS2MInt = {hetPORT1, PIN_HET_3};
const pinDescription_t cmFlashMode = {hetPORT1, PIN_HET_4};
const pinDescription_t cmAuxSignal = {hetPORT1, PIN_HET_5};

const pinDescription_t gpsWheelTick      = {hetPORT1, PIN_HET_6};
const pinDescription_t gpsWheelDirection = {hetPORT1, PIN_HET_7};
