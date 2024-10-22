/*
 * main.h
 *
 *  Created on: 2021��5��26��
 *      Author: YF-FPGA2
 */

#ifndef SRC_UART_H_
#define SRC_UART_H_

#include "xil_types.h"
#include "xuartlite.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "sleep.h"
#include "user_spi.h"
#include "Ymodem.h"

#define FLASH_TEST_ADDRESS0			0x00000000
#define FLASH_TEST_ADDRESS1			0x00F50000
#define BINFILESIZE					2242764



int read_rs232 (char* buf, int nbytes);
unsigned int convertToDecimal(char const* hexstring);


#endif /* SRC_MAIN_H_ */
