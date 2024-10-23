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
#ifndef HWICAP_HEADER_H		/* prevent circular inclusions */
#define HWICAP_HEADER_H		/* by using protection macros */

/***************************** Include Files *********************************/

#include <xparameters.h>
#include <xstatus.h>
#include <xil_types.h>
#include <xil_assert.h>
#include <xhwicap_i.h>
#include <xhwicap_l.h>
#include <stdio.h>
#include <xil_types.h>
#include <xil_assert.h>
#include "xstatus.h"
#include "xhwicap.h"
#include "hwicap_header.h"
#include "xil_io.h"
#include <xil_assert.h>
#include <xstatus.h>


/************************** HWICAPConstants *****************************/
#define HWICAP_BASEADDR         XPAR_HWICAP_0_BASEADDR
#define HWICAP_IDCODE_SIZE		    1
#define HWICAP_IPROG_BITSTREAM_LENGTH     8
#define HWICAP_DEVICEID     XPAR_HWICAP_0_DEVICE_ID

static XHwIcap HwIcap;
static u32 int_sync_flg =0x0;
// Reusing IDCODE array and code to send IPROG
// Information on IPROG in UG570
//static u32 ReadId[HWICAP_IPROG_BITSTREAM_LENGTH] =
//{
//	0xFFFFFFFF, /* Dummy Word */
//	0xAA995566, /* Sync Word*/
//	0x20000000, /* Type 1 NO OP */
//	0x30020001, /* Write WBSTAR cmd */
//	0x00400000, /* Addr in BPI Flash for Multiboot bitstream */
//	0x30008001, /* Write CMD */
//	0x0000000F, /* Write IPROG */
//	0x20000000, /* Type 1 NO OP  */
//};

u32 HwIcapLowLevelIPROG(u32 BaseAddress, u32 *IdCode);
XStatus HwIcapTestAppExample(u16 DeviceId);
static int HwIcapReadConfigReg(u16 DeviceId);
int fpga_iprog(u32 iprog_address);
#endif

