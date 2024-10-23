/*****************************************************************************/
/**
*
* @file bpi_flash_rw.h
*
* Defines the functions and includes the proper headers for the Xapp1280.
*
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00 SSJ  04/22/2016 First release
******************************************************************************/
/******************************************************************************
*
* (c) Copyright 2013 Xilinx, Inc. All rights reserved.
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
/*****************************************************************************/
/**
*
* @file xilflash_properties.h
*
* This file contains various data common to flash devices most of which can be
* derived from the CFI query.
*
* @note
*
* There is no implementation file with this component.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes

* </pre>
*
***************************************************************************/
#ifndef __PLATFORM_H_
#define __PLATFORM_H_

void init_platform();
void cleanup_platform();

#endif

#ifndef XFLASH_PROPERTIES_H	/* prevent circular inclusions */
#define XFLASH_PROPERTIES_H	/* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xil_types.h"
#include "xstatus.h"

/************************** Constant Definitions *****************************/


/**************************** Type Definitions *******************************/

/**
 * Flash timing
 */
typedef struct {
	u16 WriteSingle_Us;	/**< Time to program a single word unit
				  *   Units are in microseconds */
	u16 WriteBuffer_Us;	/**< Time to program the contents of the
				  *  write buffer. Units are in microseconds
				  *  If the part does not support write
				  *  buffers, then this value should be
				  *  zero */
	u16 EraseBlock_Ms;	/**< Time to erase a single block
				  *  Units are in milliseconds */
	u16 EraseChip_Ms;	/**< Time to perform a chip erase
				  *  Units are in milliseconds */
} XFlashTiming;

/**
 * Flash identification
 */
typedef struct {
	u8 ManufacturerID;	/**< Manufacturer of parts */
	u16 DeviceID;		/**< Part number of manufacturer */
	u16 CommandSet;		/**< Command algorithm used by part. Choices
				  *  are defined in XFL_CMDSET constants */
} XFlashPartID;

/**
 * Programming parameters
 */
typedef struct {
	u32 WriteBufferSize;	 	/**< Number of bytes that can be
					  * programmed at once */
	u32 WriteBufferAlignmentMask;	/**< Alignment of the write buffer */
	u32 EraseQueueSize;		/**< Number of erase blocks that can be
					  *  queued up at once */
} XFlashProgCap;

/**
 * Consolidated parameters
 */
typedef struct {
	XFlashPartID PartID;		/**< Uniquely identifies the part */
	XFlashTiming TimeTypical;	/**< Typical timing data */
	XFlashTiming TimeMax;		/**< Worst case timing data */
	XFlashProgCap ProgCap;		/**< Programming capabilities */
} XFlashProperties;

/**
 * Flash Specific Command Set
 */
typedef struct {
	u32 WriteBufferCommand;
	u32 ProgramCommand;
} XFlashCommandSet;


/************************** Function Prototypes ******************************/


#ifdef __cplusplus
}
#endif

#endif /* end of protection macro */
