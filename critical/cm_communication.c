/*
 * cm_communication.c
 *
 *  Created on: Aug 30, 2016
 *      Author: lovro
 */

/* Standard includes. */
#include <stdio.h>

/* Halcogen includes */
#include "gio.h"
#include "crc.h"
#include "spi.h"

/* FreeRTOS includes */
#include "FreeRTOS.h"

/* nanopb */
#include "nanopb/pb_decode.h"
#include "nanopb/pb_encode.h"
#include "nanopb/CCU_internal.pb.h"

/* project includes */
#include "globalState.h"

void vFillStatusMessage (SpiriStatus * xSpiriStatus);

void vSendStatus (void *pvParameters){
	/* message buffer and other information */
	uint32_t i = 0;
	uint64_t crc = 0;
	SpiriStatus xSpiriStatus = SpiriStatus_init_zero;

	size_t message_length;
	bool status;

	// spi configuration
	spiDAT1_t xSpiConfig;
	xSpiConfig.CS_HOLD = FALSE;
	xSpiConfig.WDEL    = TRUE;
	xSpiConfig.DFSEL   = SPI_FMT_0;
	xSpiConfig.CSNR    = 0xFE;

	while(1){

		uint8_t buffer[128] = {0};
		/* crc configuration */
		crcModConfig_t xCrcModConfig;
		xCrcModConfig.crc_channel = CRC_CH1;
		xCrcModConfig.data_length = 2; // 2x64 bit
		xCrcModConfig.src_data_pat = (uint64 *)buffer;
		xCrcModConfig.mode = CRC_FULL_CPU;
		/* protobuf stream setup; place message at byte 9 */
		pb_ostream_t stream = pb_ostream_from_buffer(&buffer[8], sizeof(buffer)-8);

		/* Get all of the values needed*/
		vFillStatusMessage(&xSpiriStatus);

		/* Generate protobuf message */
		status = pb_encode(&stream, SpiriStatus_fields, &xSpiriStatus);
		message_length = stream.bytes_written;

		/* Generate and add header */
		/* 2 byte preambule AA55
		 * 1 byte frame type - protobuf 1
		 * 2 byte CRC
		 * 4 byte length
		 *
		 */
		buffer[0] = 0xAA;
		buffer[1] = 0x55;
		buffer[2] = 1; // message type / protobuf type
		buffer[3] = 0;
		for(i = 0; i<4; i++){
			buffer[i + 4] = (message_length >> ((4-i) * 8)) & 0xFF;
		}

		/* generate crc */
		xCrcModConfig.data_length = message_length / 8 + 1; // in 64bit increments
		crcChannelReset(crcREG,CRC_CH1);
		crcSignGen(crcREG,&xCrcModConfig);
		crc = crcGetPSASig(crcREG,CRC_CH1);
		/* copy crc to buffer, put it at the end of the message.
		 * The message is padded by zeros to be 64bit divisible */
		for (i = 0; i < 8; i++){
			buffer[i + 8 + xCrcModConfig.data_length * 8] = (crc >> ((8-i) * 8)) & 0xFF;
		}
		/* Send message via spi */
		//spiTransmitData(spiREG1, &xSpiConfig, (xCrcModConfig.data_length * 8 + 8 + 8) / 2, buffer );
//		spiTransmitData(spiREG1, &xSpiConfig, (xCrcModConfig.data_length + 2) * 4, (uint16_t*) buffer );
		vTaskDelay(1000 / portTICK_PERIOD_MS);
	}

}

void vFillStatusMessage(SpiriStatus * xSpiriStatus){

	xSpiriStatus->avgChargerCurrent = 32;
	xSpiriStatus->has_avgChargerCurrent = 1;
	xSpiriStatus->breakLight = 1;
	xSpiriStatus->has_breakLight = 1;
	xSpiriStatus->fanDCDCState = 1;
	xSpiriStatus->has_fanDCDCState = 1;
	xSpiriStatus->DRL = 1;
	xSpiriStatus->has_DRL = 1;

	return;
}
