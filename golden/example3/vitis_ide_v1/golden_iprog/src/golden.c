/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */


#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xintc.h"
#include "xil_types.h"
#include "xgpio.h"
#include "gpio_header.h"
//#include "xspi.h"
#include "xhwicap.h"
#include "hwicap_header.h"
#include "xtmrctr.h"


extern int fpga_iprog(u32);

int main() 
{


   Xil_ICacheEnable();
   Xil_DCacheEnable();

   print("---Entering main---\n\r");
   print("-G ADDR:0x00000000-\n\r");
   
   while (1)
   {
      u32 status;
      u32 DataRead = 0x00000008;
      
      status = GpioOutputExample(XPAR_AXI_GPIO_1_DEVICE_ID,4);
      //status = GpioInputExample(XPAR_AXI_GPIO_0_DEVICE_ID, &DataRead);
      
      if (status == 0) {
         xil_printf("GpioInputExample PASSED. Read data:0x%X\r\n", DataRead);
      print("fpga_iprog addr:0x00800000.\r\n");
      fpga_iprog(0x00800000); // IPROG to cause configuration error
      }
//	 if ( (DataRead & 0x00000001) == 0x00000001 )
//	 {
//	   fpga_iprog(0x00400000); // IPROG to GOOD BITSTREAM ,must match address in .prm
//	   print("fpga_iprog addr:0x00400000.\r\n");
//	 }
//	 if ( (DataRead & 0x00000008) == 0x00000008 )
//	 {
//	   fpga_iprog(0x00800000); // IPROG to cause configuration error
//	   print("fpga_iprog addr:0x00800000.\r\n");
//	 }
//      }
      else {
         print("GpioInputExample FAILED.\r\n");
      }
   }

   print("---Exiting main---\n\r");

   Xil_DCacheDisable();
   Xil_ICacheDisable();

   return 0;
}
