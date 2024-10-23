#define TESTAPP_GEN

/* $Id: hwicap_header.h,v 1.1.2.1 2011/08/11 09:23:07 vidhum Exp $ */
/******************************************************************************
*
* (c) Copyright 2005-2010 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
#ifndef CONSOLE_COLOUR_H		/* prevent circular inclusions */
#define CONSOLE_COLOUR_H		/* by using protection macros */

/***************************** Include Files *********************************/

#include <xparameters.h>
#include <xstatus.h>
#include <xil_types.h>
#include <xil_assert.h>
#include <stdio.h>
#include <xil_types.h>
#include <xil_assert.h>
#include "xstatus.h"

#include "xil_io.h"
#include <xil_assert.h>
#include <xstatus.h>
#include "xuartlite_l.h"
#include "xuartlite_l.h"

#include <stdlib.h>
#include <string.h>
#include "xil_exception.h"
#include "xintc.h"
#include <stdio.h>
#include <ctype.h>
#include <xil_types.h>
#include "xil_cache.h"
#include "xil_io.h"
#include "xtmrctr.h"
#include <xil_assert.h>
#include <xstatus.h>
#include <xhwicap_i.h>
#include <xhwicap_l.h>
#include "xhwicap.h"
// XMODEM protocol defines
#define ESC							0x1B		// introduce ESC sequence
#define BRAK						0x5B		// [ character
#define THREE						0x33		// 3 character
#define TWO							0x32		// 2 character
#define ONE							0x31		// 1 character
#define SEVEN						0x37		// 7 character
#define EIGHT						0x38		// 8 character
#define NINE						0x39		// 9 character
#define C							0x43		// C character
#define m							0x6D		// m character
#define J							0x4A		// J character
#define true 						1
//#define INITIAL_TIMEOUT 			0x020000
//#define FAST_TIMEOUT				0x01800  //A80  //340
//#define MAXERRORS 					0x08000
//#define IDLE						0x00000
//#define START						0x01
//#define BLK_NUM						0x02
//#define DATA						0x03
//#define CRC_LO						0x05
//#define CRC_CHK						0x06
//#define ERROR						0x07

void clear_console(void);
void console_colour_green(void);
void console_colour_red(void);
void console_colour_white(void);

void printf_usb(char *s);
void putnum(unsigned int num);
void printc_usb(char s);

#endif

