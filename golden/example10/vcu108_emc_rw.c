/*****************************************************************************/
/**
*
* @file vcu108_emc_rw.c
*
* Defines the functions and includes the proper headers for the Xapp1280.
*
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00 SSJ  04/22/2016 First release
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"	/* defines XPAR values */
#include "xuartlite_l.h"
#include <stdlib.h>
#include <string.h>
#include "xil_exception.h"
#include "xintc.h"
#include <stdio.h>
#include <ctype.h>
#include <xil_types.h>
#include "xil_cache.h"
#include <xilflash.h>
#include "xil_io.h"
#include "xtmrctr.h"
#include <xil_assert.h>
#include <xstatus.h>
#include <xhwicap_i.h>
#include <xhwicap_l.h>
#include "xhwicap.h"
#include "vcu108_emc_rw.h"

/************************** Constant Definitions ****************************/
/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are only defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define INTC_BASEADDR 		XPAR_INTC_0_BASEADDR
#define UART_CLOCK_HZ		XPAR_UARTNS550_0_CLOCK_FREQ_HZ
#define UART_DEVICE_ID		XPAR_UARTNS550_0_DEVICE_ID
#define UART_IRPT_INTR		XPAR_INTC_0_UARTNS550_0_VEC_ID
#define	UART_INTR			XPAR_MICROBLAZE_0_AXI_INTC_AXI_UART16550_0_IP2INTC_IRPT_INTR
#define UART_INTR_MASK 		XPAR_AXI_UART16550_0_IP2INTC_IRPT_MASK
#define UART_BASEADDR		XPAR_UARTNS550_0_BASEADDR
#define TMRCTR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define TIMER_INTR			XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR
#define TMRCTR_INTERRUPT_ID	XPAR_INTC_0_TMRCTR_0_VEC_ID
#define TIMER_INTR_MASK 	XPAR_AXI_TIMER_0_INTERRUPT_MASK
#define	TIMER_BASEADDR		XPAR_TMRCTR_0_BASEADDR
#define HWICAP_DEVICEID     XPAR_HWICAP_0_DEVICE_ID

/*****************************************************************************************/
#define INTC_HANDLER		XIntc_InterruptHandler
#define TIMER_BASE_ADDR		XPAR_AXI_TIMER_0_BASEADDR
#define TIMER_CNTR_0	 	0
#define UART_BAUDRATE		115200
#define STDOUT_BASEADDR XPAR_AXI_UART16550_0_BASEADDR
/*****************************************************************************************/
#define STDOUT_IS_16550
#ifndef ENABLE_ICACHE
#define ENABLE_ICACHE()		Xil_ICacheEnable()
#endif
#ifndef	ENABLE_DCACHE
#define ENABLE_DCACHE()		Xil_DCacheEnable()
#endif
#ifndef	DISABLE_ICACHE
#define DISABLE_ICACHE()	Xil_ICacheDisable()
#endif
#ifndef DISABLE_DCACHE
#define DISABLE_DCACHE()	Xil_DCacheDisable()
#endif
/*************************************************************************************************
*
* This definitions specify the EXTRA bytes in each of the command
* transactions. This count includes Command byte, address bytes and any don't care bytes needed.
* EMC definition
**************************************************************************************************/

#define FLASH_BASE_ADDRESS			XPAR_EMC_0_S_AXI_MEM0_BASEADDR
#define FLASH_MEM_WIDTH				2
#define BINFILESIZE					2242764
#define	FLASH_TEST_ADDRESS0			0x00000000
#define MAX_OFFSET_FLASH_BYTES		0x03FFFFFF
#define	TOTAL_NO_OF_BLOCKS			512
#define	TOTAL_PAGES_BPI_FLASH		8
#define	NO_OF_BLOCKS_PER_PAGE		64
#define	MAX_PAGE_SIZE_BYTES			0x07FFFFF
#define	NO_OF_BYTES_PER_BLOCKS		0x03FFFF
#define BLOCK_OFFSET_ADDR			0x040000				//	0x01FFFF +1 = 0x20000
#define FLASH_BUFFER_SIZE			1024					//	(0x20000 = 256*32)
#define FLASH_MAX_SIZE				0x7FFFFFF
/*************************************************************************************************/
#define DDR_ADDR0 					0xC0000000
#define DDR_ADDR1 					0xC0030000
#define true 						1
// XMODEM protocol defines
#define SOH 						0x01
#define STX 						0x02
#define EOT 						0x04
#define ACK 						0x06
#define NAK 						0x15		//
#define NAKC 						0x43		// C Character
#define ETB							0x17		//
#define CAN 						0x18
#define BS							0x08		// move cursor one position left
#define XEOF       					0x1A
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
#define INITIAL_TIMEOUT 			0x020000
#define FAST_TIMEOUT				0x01800  //A80  //340
#define MAXERRORS 					0x08000
#define IDLE						0x00000
#define START						0x01
#define BLK_NUM						0x02
#define DATA						0x03
#define CRC_LO						0x05
#define CRC_CHK						0x06
#define ERROR						0x07
/*************************************************************************************************/
/* XFL_TO_ASYNCMODE flag constant defines the commands and register offsets in order to change
 * the flash from Sync to Async Mode. */
 /*		Change the value of XFL_TO_ASYNCMODE to 1, inorder to operate
*		the Micron Flash in async mode,if it was set to sync mode. */
#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
	#define XFL_TO_ASYNCMODE				0
	#define ASYNC_ADDR						0x17BBE
	#define SYNC_ADDR						0x07BBE
	#define INTEL_CMD_CONFIG_REG_SETUP		0x60606060
	#define INTEL_CMD_CONFIG_REG_CONFIRM	0x03030303
#endif
/**************************************************************************************************/
#define BRAM0_BASE_ADDR		XPAR_BRAM_0_BASEADDR
#define BRAM0_HIGH_ADDR		XPAR_BRAM_0_HIGHADDR
#define BRAM1_BASE_ADDR		XPAR_BRAM_1_BASEADDR
#define BRAM1_HIGH_ADDR		XPAR_BRAM_1_HIGHADDR
/**************************************************************************************************/
#define TMRCTR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define TMRCTR_INTERRUPT_ID	XPAR_INTC_0_TMRCTR_0_VEC_ID
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#define TIMER_CNTR_0	 	0
#define INTC				XIntc
#define INTC_HANDLER		XIntc_InterruptHandler
#define RESET_VALUE	 		0xEFE82080		// 1Sec0xFAA2B580 // 1sec - 0xFE363C80
/************************** HWICAPConstants *****************************/
#define HWICAP_BASEADDR         XPAR_HWICAP_0_BASEADDR
#define HWICAP_IDCODE_SIZE		    1
#define HWICAP_IPROG_BITSTREAM_LENGTH     8

// Reusing IDCODE array and code to send IPROG
// Information on IPROG in UG570
static u32 ReadId[HWICAP_IPROG_BITSTREAM_LENGTH] =
{
	0xFFFFFFFF, /* Dummy Word */
	0xAA995566, /* Sync Word*/
	0x20000000, /* Type 1 NO OP */
	0x30020001, /* Write WBSTAR cmd */
	0x00400000, /* Addr in BPI Flash for Multiboot bitstream */
	0x30008001, /* Write CMD */
	0x0000000F, /* Write IPROG */
	0x20000000, /* Type 1 NO OP  */
};
/************************** Variable Definitions *****************************/
u32 HwIcapLowLevelIPROG(u32 BaseAddress, u32 *IdCode);
void init_platform(void);
char inbyte(void);
unsigned int convertToDecimal(char const* hexstring);
int read_rs232 (char* buf, int nbytes);
int BPIFlashReadGeometry(void);
int emc_init_startup(void);
int bpi_flash_erase_main(u32 StartAddr, u32 NoByteToWrite);
int bpi_flash_erase_1024(u32 StartAddr, u32 NoByteToWrite);
int bpi_flash_read(u32 StartAddr, u32 NoByteToRead);
int bpi_program_flash(u32 StartAddr,u32 NoByteToRead, u32 NoOfPage);
int bpi_program_flash_xmodem(u32 StartAddr,u32 NoByteToRead);
int bpi_readback_flash(u32 StartAddr,  u32 NoByteToRead);
int bpiFlashWrite_File(u32 Addr, u32 ByteCount, u32 ddrvector);
int bpiFlashWrite_1024(u32 Addr, u32 ByteCount);
int xmodem_packet_receive(u32 dest_addr);
int xmodem(unsigned int dest_addr);
//int Timeout_xtmrctr_int(void);
static int  xmodem_File_Rec (u32 StartAddr );
void clear_console(void);
void console_colour_green(void);
void console_colour_red(void);
void console_colour_white(void);
int fpga_iprog(u32 iprog_address);
void cleanup_platform(void);
void init_uart(void);
void disable_caches(void);
void enable_caches();
void printf_uart(char *s);
void printf_usb(char *s);
void putnum(unsigned int num);
void flush_usb_uart();
void printc_usb(char s);
int read_usb_timeout(int timeout);
int read_usb_uart();
int rc_byte_nb(uint32_t BaseAddress);
void erase();
void green();
static int HwIcapReadConfigReg(u16 DeviceId);
/************************** Variable Definitions *****************************/
XStatus HwIcapTestAppExample(u16 DeviceId);
XFlash FlashInstance; 					/* XFlash Instance. */
u8 ReadBuffer[FLASH_BUFFER_SIZE]; 		/* Buffer used to store the data read. */
u8 WriteBuffer[FLASH_BUFFER_SIZE];		/* Write buffer. */
u8 buffer_array[FLASH_BUFFER_SIZE];
volatile static int TransferInProgress;
volatile static u64 FileByteCount;
volatile static int TimerExpired;
volatile static u8 TIMEPUTFLAG;
volatile static u8 sync_flag_internal = 0x1;
volatile static int TransferInProgress;
unsigned char *DDR_MEMB1 = (unsigned char* )DDR_ADDR0;
u8 static CPMEOF =0x0;
volatile static u64 NoOfblockperPartition=0;
volatile static u64 NoOf1024Packets=0;
INTC InterruptController;  /* The instance of the Interrupt Controller */
XTmrCtr TimerCounterInst;   /* The instance of the Timer Counter */
static XHwIcap HwIcap;
static u32 int_sync_flg =0x0;
/*****************************************************************************/
/**
*
* Main function to run the BPI flash update.
*
* @param	None
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None
*
******************************************************************************/
int main(void)
{
    int choice, exit_flag = 0;
    int Status;
   	u32 StartAddr, NoByteToRead, NoByteToWrite;
   	char* hex= FLASH_TEST_ADDRESS0;
	int nbytes_temp=16;
	int input_deci_data=0;
	StartAddr = FLASH_TEST_ADDRESS0;
	NoByteToRead = 512;
	NoByteToWrite = 512;
	init_platform();
	int_sync_flg = HwIcapReadConfigReg(HWICAP_DEVICEID);
	emc_init_startup();
	while(exit_flag != 1) {
			xil_printf("%c[2J",27);
			print("\n\r********************************************************************");
			print("\n\r**** XAPP1282 (V1.0): UltraScale FPGA Post-Configuration Access ****");
			print("\n\r********* of Parallel NOR Flash Memory using ");
			if (int_sync_flg != 0x1) console_colour_red();
			else console_colour_white();
			print ("STARTUPE3");
			console_colour_white();
			print (" *************");
			print("\n\r********************************************************************\n\r");
    		print("\n\rChoose from Parallel NOR flash operations below: \r\n");
    	    print("1: Read ID\r\n");
    	    print("2: Erase \r\n");
    	    print("3: Program (*.bin via XMODEM_1K)\r\n");
    	    print("4: Read \r\n");
    	    print("5: Reconfigure from IPROG\r\n");
    	    choice = inbyte();
        	if (isalpha(choice)) {
        	    choice = toupper(choice);
        	}
    switch(choice) {
			case '1':
				{
					Status = BPIFlashReadGeometry();
					if (Status != XST_SUCCESS) {
						return XST_FAILURE;
					}
					print("\n\rPress any Key to Main Menu\r\n");
					inbyte();
				}
				break;
			case '2':
				{
					xil_printf("\n\rParallel NOR Flash Erase:\n\r");
					print("\n\r\tStart Offset address (hex):");
					hex[0] = '\0';
					input_deci_data = read_rs232 (hex, nbytes_temp);
					StartAddr = convertToDecimal(hex);
					print("\n\r\tNumber of Bytes to erase (hex):");
					input_deci_data = read_rs232 (hex, nbytes_temp);
					NoByteToWrite = convertToDecimal(hex);
					hex[0] = '\0';
					if (StartAddr !=0) {
								StartAddr = (StartAddr*2);
							}
					if (NoByteToWrite !=0){
							NoByteToWrite = (NoByteToWrite);
					}
					Status = bpi_flash_erase_main(StartAddr, NoByteToWrite);
					if(Status != XST_SUCCESS) {
							print("\n\rErase Operation ");
							console_colour_red();
							print("Fail!");
							console_colour_white();
						} else print("Parallel NOR Flash Erased Successful\n\r");

					print("\n\rPress any Key to Main Menu\r\n");
					inbyte();
					break;
				}
				break;
			case '3':
					print("\r\nProgram Binary File Via XMODEM_1K (*.bin)\r\n");
					print("\n\rProgramming Start Address (hex): ");
					input_deci_data = read_rs232 (hex, nbytes_temp);
						if (input_deci_data !=0)
							{
								StartAddr = convertToDecimal(hex);
								input_deci_data =0;
							}
						else
							{
								print("\n\rWrong Hex Address Entered\r\n");
								inbyte();
								break;
							}
							if (StartAddr !=0) {
									StartAddr = (StartAddr*2);
								}
							NoByteToWrite = xmodem_File_Rec (StartAddr);
							if(Status != XST_SUCCESS)
								{
									print("\n\rXMODEM File Operation ");
									console_colour_red();
									print ("Fail!");
									console_colour_white();

								}
								else
								{
									print("\n\r\n\rXMODEM File received & programmed successful\r\n");
									}
									print("\n\r\n\rPress any key to continue...\n\r\n\r");
									inbyte();
									break;
			case '4':
				{
					print ("\n\r\n\rRead Parallel NOR flash:");
					print("\n\rStart Address (hex): ");
					input_deci_data = read_rs232 (hex, nbytes_temp);
					if (input_deci_data !=0)
						{
								StartAddr = convertToDecimal(hex);
								print("\n\rNumber of Bytes to read (hex):");
								input_deci_data = 0;
						} else
							{
								print("\n\rWrong Hex Address Entered\r\n");
								inbyte();
								break;
							}
					input_deci_data = read_rs232 (hex, nbytes_temp);
					if (input_deci_data !=0)
						{
							NoByteToRead = convertToDecimal(hex);
							if (StartAddr !=0)
								{
									StartAddr = (StartAddr*2);
									}
							if (NoByteToRead !=0)
								{
									NoByteToRead = (NoByteToRead*2);
									}
							Status = bpi_flash_read(StartAddr, NoByteToRead);
							input_deci_data = 0;
						}
						else
							{
								print("\n\rWrong Hex Address Entered\r\n");
								inbyte();
								break;
							}
					print("\n\rPress any Key to Main Menu\r\n");
					inbyte();
					break;
				}
			case '5':
				{
					print("\n\r\n\rMultiBoot with IPROG from Parallel NOR Flash Address:\t");
					hex[0] = '\0';
					input_deci_data = read_rs232 (hex, nbytes_temp);
					StartAddr = convertToDecimal(hex);
					if (StartAddr == 0x0000000)
						{
							fpga_iprog(0x20000000);
							} else if (StartAddr == 0x1000000)
								{
									fpga_iprog(0x60000000);
									} else if (StartAddr == 0x2000000)
										{
											fpga_iprog(0xA0000000);
											} else if (StartAddr == 0x3000000)
												{
													fpga_iprog(0xE0000000);
													} else
														{
															print("\r\n\r\n Wrong Flash Address Entered!!!!");
															print("\n\rPress any Key to Main Menu\r\n");
															inbyte();
															break;
														}
					print("\n\rPress any Key to Main Menu\r\n");
					inbyte();
				}
				break;
			default:
				{
					break;
			}
		}
		if(exit_flag != 1) {
		}
	}
	cleanup_platform();
    return 0;
}
/*****************************************************************************/
/**
*
* This function reads serial HEX value entered and converts into Integer value.
*
* @param	Buf pointer with number of bytes entered in Array
*
* @return	Number of Bytes in Array.
*
* @note		None
*
******************************************************************************/
int read_rs232 (char* buf, int nbytes)
{
  int i = 0;
  for (i = 0; i < nbytes; i++) {
    *(buf + i) = inbyte();
    outbyte (*(buf + i));
    if ((*(buf + i) == '\n' || *(buf + i) == '\r'))
        break;
    if (*(buf + i) == '\b')
    {
 		if (i==0)
 		i=-1;
 		else i=(i-2);
    }
  }
  return (i);
}
/*****************************************************************************/
/**
*
* This function converts To Decimal value.
*
* @param	Input the Character string.
*
* @return	Unsigned integer value.
*
* @note		None
*
******************************************************************************/
unsigned int convertToDecimal(char const* hexstring)
{
	unsigned long  result = 0;
	char const *inpstr = hexstring;
	char  charhex;
	int charhexint;
	while( ( (charhex = *inpstr) != NULL ) && ((charhex = *inpstr) != '\r') && ((charhex = *inpstr) != '\n'))
	{
		unsigned long add;
		charhexint = toupper(charhex);

		result <<= 4;
		if (charhexint != '\b')
		{
			if( charhexint >= 48 &&  charhexint <= 57 )
				add = charhexint - 48;
			else if( charhexint >= 65 && charhexint <= 70)
				add = charhexint - 65 + 10;
			else
			{
				print("\n\rUnrecognized hex   "); putchar(charhex);
			}

			result += add;
			++inpstr;
		} else ++inpstr;

	}

	return result;
}

/*****************************************************************************/
/**
*
* This function initialize emc flash IP.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int emc_init_startup(void)
{
	int Status;
	Status = XFlash_IsReady (&FlashInstance);
			if(Status == XST_SUCCESS)
				{
					/** Set Flash to Async mode.  */
					#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
						if (int_sync_flg == 0x1)
							{
								if (sync_flag_internal ==0x1)
									{
										if (FLASH_MEM_WIDTH == 1) {
											WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x60);
											WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x03);
										} else if (FLASH_MEM_WIDTH == 2) {
											WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
													INTEL_CMD_CONFIG_REG_SETUP);
											WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
													INTEL_CMD_CONFIG_REG_CONFIRM);
										}
									sync_flag_internal = 0x0;
									}
							}
					#endif

				/*
				 * Initialize the Flash Library.
				 */
				Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS,
							   FLASH_MEM_WIDTH, 0);
				if(Status != XST_SUCCESS) {
						return XST_FAILURE;
						}
		}
	return XST_SUCCESS;
}
/*****************************************************************************/
/**
*
* This function fetches and displays the geometry and properties of the Flash *
* device.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int BPIFlashReadGeometry(void)
{
	int Status;
	DeviceCtrlParam IoctlParams;
	union {
			unsigned long cfi32bitdata;
			unsigned char cfi32bit2byte[4];
		} CFIQueryRegs;

		Status = XFlash_IsReady (&FlashInstance);
		if(Status == XST_SUCCESS)
			{
				/** Set Flash to Async mode.  */
				#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
					if (int_sync_flg == 0x1)
						{
							if (sync_flag_internal ==0x1)
								{
									if (FLASH_MEM_WIDTH == 1) {
										WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x60);
										WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x03);
									} else if (FLASH_MEM_WIDTH == 2) {
										WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
												INTEL_CMD_CONFIG_REG_SETUP);
										WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
												INTEL_CMD_CONFIG_REG_CONFIRM);
									}
								sync_flag_internal = 0x0;
								}
						}
				#endif

			/*
			 * Initialize the Flash Library.
			 */
			Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS,
						   FLASH_MEM_WIDTH, 0);
			if(Status != XST_SUCCESS) {
					return XST_FAILURE;
					}
			}

	/*
	 * Reset the Flash Device. This clears the Status registers and puts
	 * the device in Read mode.
	 */
	Status = XFlash_Reset(&FlashInstance);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Fetch the flash device properties and display.
	 */
	Status = XFlash_DeviceControl(&FlashInstance,
				XFL_DEVCTL_GET_PROPERTIES, &IoctlParams);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("\n\r\n\rParallel NOR Flash Properties:\n\r\n\r");
	/* Read CFI query data manual */
	Xil_Out32(FLASH_BASE_ADDRESS, 0x0098);
	CFIQueryRegs.cfi32bitdata = Xil_In32(FLASH_BASE_ADDRESS);
	xil_printf("Manufacturer code\t= ");
	console_colour_green();
	xil_printf("0x%02x%02x\n\r", CFIQueryRegs.cfi32bit2byte[1],CFIQueryRegs.cfi32bit2byte[0]);
	console_colour_white();
	xil_printf("Device ID\t\t= ");
	console_colour_green();
	xil_printf("0x%02x%02x\n\r", CFIQueryRegs.cfi32bit2byte[3],CFIQueryRegs.cfi32bit2byte[2]);
	console_colour_white();
	/*
	 * Fetch the flash device geometry and display.
	 */
	Status = XFlash_DeviceControl(&FlashInstance,
				XFL_DEVCTL_GET_GEOMETRY, &IoctlParams);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	console_colour_white();
	xil_printf("Device Size \t\t= ");
	console_colour_green();
	xil_printf("0x%08x\n\r", ((IoctlParams.GeometryParam.GeometryPtr->DeviceSize) -1));
	console_colour_white();
	return XST_SUCCESS;
}
/*********************************************************************************************/
int bpi_flash_erase_1024(u32 StartAddr, u32 NoByteToWrite)
{
	int Status;
	Status = XFlash_IsReady (&FlashInstance);
		if(Status == XST_SUCCESS)
			{
				/** Set Flash to Async mode.  */
				#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
					if (int_sync_flg == 0x1)
						{
							if (sync_flag_internal ==0x1)
								{
									if (FLASH_MEM_WIDTH == 1) {
										WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x60);
										WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x03);
									} else if (FLASH_MEM_WIDTH == 2) {
										WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
												INTEL_CMD_CONFIG_REG_SETUP);
										WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
												INTEL_CMD_CONFIG_REG_CONFIRM);
									}
								sync_flag_internal = 0x0;
								}
						}
				#endif

			/*
			 * Initialize the Flash Library.
			 */
			Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS,
						   FLASH_MEM_WIDTH, 0);
			if(Status != XST_SUCCESS) {
					return XST_FAILURE;
					}
			}
	Status = XFlash_Reset(&FlashInstance);
			if(Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
	Status = XFlash_Lock(&FlashInstance, StartAddr, NO_OF_BYTES_PER_BLOCKS);
			if(Status != XST_SUCCESS) {
					return XST_FAILURE;
			}
	Status = XFlash_Erase(&FlashInstance, StartAddr, NoByteToWrite);
		if(Status == XST_SUCCESS) {
			return XST_FAILURE;
			}
	Status = XFlash_Unlock(&FlashInstance, StartAddr, NO_OF_BYTES_PER_BLOCKS);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	Status = XFlash_Erase(&FlashInstance, StartAddr, NoByteToWrite);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	return XST_SUCCESS;
}

/*********************************************************************************************
 *	flash memory design, the range actually erased may be larger than what was specified by
 * the Offset & Bytes parameters. This will occur if the parameters do not align to block
 *	boundaries.
 *
 **********************************************************************************************/
int bpi_flash_erase_main(u32 StartAddr, u32 NoByteToWrite)
{
	int Status;
	u32 Index;
	DeviceCtrlParam IoctlParams;
	int remaind_int,  NoOfBlocks;
	u32 offsetAddr = StartAddr;
	u32 EraseBytesoffset, EraseBytes = NoByteToWrite;
	print ("\n\r\n\rStart Address:\t");
	console_colour_green();
	putnum(offsetAddr);
	console_colour_white();
	print ("\r\nEnd Address:\t");
	console_colour_green();
	putnum((offsetAddr + ( EraseBytes)));
	console_colour_white();
	if (EraseBytes == 0)

	{
		return XST_FAILURE;
	}
	else
		{
			Status = XFlash_IsReady (&FlashInstance);
					if(Status == XST_SUCCESS)
						{
							/** Set Flash to Async mode.  */
							#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
								if (int_sync_flg == 0x1)
									{
										if (sync_flag_internal ==0x1)
											{
												if (FLASH_MEM_WIDTH == 1) {
													WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x60);
													WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x03);
												} else if (FLASH_MEM_WIDTH == 2) {
													WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
															INTEL_CMD_CONFIG_REG_SETUP);
													WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
															INTEL_CMD_CONFIG_REG_CONFIRM);
												}
											sync_flag_internal = 0x0;
											}
									}
							#endif

						/*
						 * Initialize the Flash Library.
						 */
						Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS,
									   FLASH_MEM_WIDTH, 0);
						if(Status != XST_SUCCESS) {
								return XST_FAILURE;
								}
				}
			Status = XFlash_Reset(&FlashInstance);
			if(Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
			Status = XFlash_DeviceControl(&FlashInstance,
					XFL_DEVCTL_GET_GEOMETRY, &IoctlParams);
			if(Status != XST_SUCCESS) {
				return XST_FAILURE;
			}
			if (EraseBytes > BLOCK_OFFSET_ADDR)
			{
				NoOfBlocks = (EraseBytes/BLOCK_OFFSET_ADDR);
				remaind_int = (EraseBytes - (NoOfBlocks * BLOCK_OFFSET_ADDR));
				if (remaind_int != 0)
						{
							 NoOfBlocks = (NoOfBlocks +1);
						 }
			}
			else
			{
				NoOfBlocks =1;
			}

			if ( ((IoctlParams.GeometryParam.GeometryPtr->DeviceSize) -1) >=  EraseBytes)
			{
					Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS, FLASH_MEM_WIDTH, 0);
						if(Status != XST_SUCCESS) {
							return XST_FAILURE;
						}
						Status = XFlash_Reset(&FlashInstance);
						if(Status != XST_SUCCESS) {
							return XST_FAILURE;
						}
						console_colour_green();
						print("\n\r\n\rNOTE:\t");
						console_colour_white();
						print("Start address provided has been multiplied by a factor of 2,\n\r\tdue to the use of interface BPIX16.\n\r");
						print("\n\r\n\rPerforming Erase Operation, Please wait ...\n\r");
			}
			else
				{
					print ("\n\r\n\rDevice Size is 0x07FFFFFF < Number of Byte Entered 0x0"); putnum(EraseBytes);
					NoOfBlocks =0;
					return XST_FAILURE;
				}

				while (NoOfBlocks !=0)
				{
					if (NoOfBlocks==1)
						{
								EraseBytesoffset = (offsetAddr +EraseBytes);
								EraseBytes	= NoByteToWrite;
								/* Lock the Block. */
								Status = XFlash_Lock(&FlashInstance, EraseBytesoffset, NO_OF_BYTES_PER_BLOCKS);
								if(Status != XST_SUCCESS) {
										xil_printf("\r\n-- Lock error --\r\n");
										return XST_FAILURE;
									}
								/* Perform the Erase operation. This should fail as the block is locked. */
								Status = XFlash_Erase(&FlashInstance, EraseBytesoffset, EraseBytesoffset);
								if(Status == XST_SUCCESS) {
										xil_printf("-- Erase failed --\r\n");
										return XST_FAILURE;
									}
								/* Unlock the Block. */
								Status = XFlash_Unlock(&FlashInstance, EraseBytesoffset, NO_OF_BYTES_PER_BLOCKS);
								if(Status != XST_SUCCESS) {
										return XST_FAILURE;
										}
								/* Perform the Erase operation. This should succeed as the block is unlocked.*/
								Status = XFlash_Erase(&FlashInstance, EraseBytesoffset, EraseBytes);
								if(Status != XST_SUCCESS) {
										print("\n\rBPI NOR Flash Erased unsuccessful!!\n\r");
										return XST_FAILURE;
									}
								NoOfBlocks =0;
						}
					else
						{
							EraseBytes = BLOCK_OFFSET_ADDR;
							offsetAddr = StartAddr;
							EraseBytesoffset = (offsetAddr + NO_OF_BYTES_PER_BLOCKS);
							print ("\r\n");
							for(Index = 0; Index < NoOfBlocks; Index++)
								{
									/* Lock the Block. */
										Status = XFlash_Lock(&FlashInstance, offsetAddr, NO_OF_BYTES_PER_BLOCKS);
										if(Status != XST_SUCCESS) {
												xil_printf("\r\n-- Lock error --\r\n");
												return XST_FAILURE;
											}
									/* Perform the Erase operation. This should fail as the block is locked. */
												Status = XFlash_Erase(&FlashInstance, offsetAddr, NO_OF_BYTES_PER_BLOCKS);
												if(Status == XST_SUCCESS) {
													xil_printf("-- Erase failed --\r\n");
													return XST_FAILURE;
												}
									/* Unlock the Block. */
												Status = XFlash_Unlock(&FlashInstance, offsetAddr, NO_OF_BYTES_PER_BLOCKS);
												if(Status != XST_SUCCESS) {
														return XST_FAILURE;
													}
									/* Perform the Erase operation. This should succeed as the block is unlocked.*/
												xil_printf("%c%c%c%c%c%c",95,8,92,8,47,8);
												Status = XFlash_Erase(&FlashInstance, offsetAddr, NO_OF_BYTES_PER_BLOCKS);
												if(Status != XST_SUCCESS) {
														return XST_FAILURE;
												}
												EraseBytes =  (EraseBytes + BLOCK_OFFSET_ADDR);
												offsetAddr = (offsetAddr + BLOCK_OFFSET_ADDR);
												EraseBytesoffset = ( offsetAddr + BLOCK_OFFSET_ADDR);
								}
							NoOfBlocks =0;
						}

					}
				return XST_SUCCESS;
		}
}
/**********************************************************************/
int bpi_flash_read(u32 StartAddr, u32 NoByteToRead)
	{
		int Status;
		u32 Index;
		DeviceCtrlParam IoctlParams;
		int NoOfPage=0, remaind_int=0, CntLine=0;
		u32 ReadBytesoffset = StartAddr,  NoByteToRead_int = NoByteToRead;
		u32 FlashMaxAddress;
		print ("\n\r\n\rPerforming Flash Read Operation...\r\n");
		print ("\n\rFlash Start Address:\t0x");putnum(StartAddr);
		print ("\n\rFlash End Address:\t0x");putnum(NoByteToRead_int);
		console_colour_green();
		print("\n\r\n\rNOTE:\t");
		console_colour_white();
		print("Start address provided has been multiplied by a factor of 2,\n\r\tdue to the use of interface BPIX16.\n\r");
		/** Set Flash to Async mode.  */
			#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
				if (int_sync_flg == 0x1)
					{
						if (sync_flag_internal ==0x1)
							{
								if (FLASH_MEM_WIDTH == 1) {
									WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x60);
									WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x03);
								} else if (FLASH_MEM_WIDTH == 2) {
									WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
											INTEL_CMD_CONFIG_REG_SETUP);
									WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
											INTEL_CMD_CONFIG_REG_CONFIRM);
								}
							sync_flag_internal = 0x0;
							}
					}
			#endif
		if (NoByteToRead_int <= 0)
			{
				print ("\n\r\n\r Start Address is not correct!!\r\n");
				return XST_FAILURE;
			}
			else
				{
					Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS,
								   FLASH_MEM_WIDTH, 0);
					if(Status != XST_SUCCESS) {
						return XST_FAILURE;
					}
					Status = XFlash_Reset(&FlashInstance);
					if(Status != XST_SUCCESS) {
						return XST_FAILURE;
					}
					Status = XFlash_DeviceControl(&FlashInstance,
							XFL_DEVCTL_GET_GEOMETRY, &IoctlParams);
					if(Status != XST_SUCCESS) {
						return XST_FAILURE;
					for(Index = 0; Index < (FLASH_BUFFER_SIZE); Index++)
						{
							ReadBuffer[Index] = 0x0;
						}
					}

					FlashMaxAddress = IoctlParams.GeometryParam.GeometryPtr->DeviceSize;

					NoOfPage = (NoByteToRead_int/FLASH_BUFFER_SIZE);
					remaind_int = (NoByteToRead_int - ( NoOfPage * FLASH_BUFFER_SIZE));
					 if (remaind_int != 0)
					 	 {
							   NoOfPage = (NoOfPage+1);
						}

					 if ( (ReadBytesoffset < FlashMaxAddress) && (NoByteToRead_int <  FlashMaxAddress))
					 			  {
					 				  xil_printf("\n\rOffset(h):\t0x00\t0x01\t0x02\t0x03\t0x04\t0x05\t0x06\t0x07\n\r");
					 					CntLine =0;
					 					Index =0;
					 					xil_printf("\n\r0x%08x:\t", (ReadBytesoffset));

					 					while  (NoOfPage !=0 )
					 						{
					 							if (NoOfPage ==1)
					 								{
					 									Status = XFlash_Read(&FlashInstance, ReadBytesoffset, NoByteToRead_int, ReadBuffer);
					 									if(Status != XST_SUCCESS) {
					 									return XST_FAILURE;
					 									}
					 									for(Index = 0; Index <= (NoByteToRead_int-1); Index++)
					 										{
					 											xil_printf("0x%02x\t", (ReadBuffer[Index]));
					 											if (CntLine > 6)
					 												{
					 													CntLine =0;
					 													if ( (NoByteToRead_int -1) != Index)
					 														{
					 															xil_printf("\n\r0x%08x:\t", (ReadBytesoffset + (Index+1)) );
					 														}
					 												} else CntLine++;
					 											}
					 												NoOfPage--;
					 												ReadBytesoffset = ReadBytesoffset + (FLASH_BUFFER_SIZE);
					 								}
					 								else
					 									{
					 									Status = XFlash_Read(&FlashInstance, ReadBytesoffset, FLASH_BUFFER_SIZE, ReadBuffer);
					 									if(Status != XST_SUCCESS) {
					 										return XST_FAILURE;
					 										}
					 										for(Index = 0; Index <= (FLASH_BUFFER_SIZE-1); Index++)
					 											{
					 												xil_printf("0x%02x\t", (ReadBuffer[Index]));
					 												if (CntLine > 6)
					 													{
					 														CntLine =0;
					 														xil_printf("\n\r0x%08x:\t", (ReadBytesoffset + (Index+1)) );
					 													} else CntLine++;
					 												}
					 											NoOfPage--;
					 											ReadBytesoffset = ReadBytesoffset + (FLASH_BUFFER_SIZE);
					 											NoByteToRead_int = (NoByteToRead_int - (FLASH_BUFFER_SIZE));
					 											print("\n\rPress any Key to display Remaining Bytes: 0x");putnum(NoByteToRead_int);
					 											inbyte();
					 										}
					 							}
					 				  }
					 return XST_SUCCESS;
				}
	}
/*****************************************************************************/
/**
*
* This Function Program the BPI flash with DDR data received from File via serial port
*
* @param	File Data will be stored in DDR memory
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE or error messages.
*
* @note		None
*
******************************************************************************/
int bpi_program_flash(u32 StartAddr,u32 NoByteToRead, u32 NoOfPage)
{
		u32 ddrvector=0;
		int Status;

		while (NoOfPage !=0)
				{

					Status = bpiFlashWrite_File(StartAddr, FLASH_BUFFER_SIZE, ddrvector);
										if(Status != XST_SUCCESS) {
											return XST_FAILURE;
										} else
										{
												NoOfPage--;
												StartAddr = (StartAddr + FLASH_BUFFER_SIZE);
												ddrvector = (ddrvector + FLASH_BUFFER_SIZE);
										}
			}
		return XST_SUCCESS;
}
/*****************************************************************************/
/**
*
* This Function Program the BPI flash with BBRAM data received from File via serial port
*
* @param	File Data will be stored in BBRAM memory
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE or error messages.
*
* @note		None
*
******************************************************************************/
int bpi_program_flash_xmodem(u32 StartAddr,u32 NoByteToRead)
{
		int Status=XST_SUCCESS;

		if (NoOf1024Packets==0)
				{
					Status = bpi_flash_erase_1024(StartAddr, NoByteToRead);
						if(Status != XST_SUCCESS) {
										return XST_FAILURE;
									}
						NoOfblockperPartition++;
			}
		Status = bpiFlashWrite_1024(StartAddr, NoByteToRead);
			if(Status != XST_SUCCESS) {
				return XST_FAILURE;
				} else
				{
					NoOf1024Packets++;
					if (NoOf1024Packets ==256)
						{
							NoOf1024Packets=0;
						}
				}
		return XST_SUCCESS;
}
/*****************************************************************************/
/**
*
* This function writes the data to the specified locations in the Numonyx Serial
* Flash memory.
*
* @param	BPIPtr is a pointer to the instance of the BPI device.
* @param	Addr is the address in the Buffer, where to write the data.
* @param	ByteCount is the number of bytes to be written.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None
*
******************************************************************************/
int bpiFlashWrite_File(u32 Addr, u32 ByteCount, u32 ddrvector)
{
	int Status;
	u32 Index;
	unsigned char *DDR_MEMB1 = (unsigned char *)DDR_ADDR0;
	/** Set Flash to Async mode.  */
		#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
			if (int_sync_flg == 0x1)
				{
					if (sync_flag_internal ==0x1)
						{
							if (FLASH_MEM_WIDTH == 1) {
								WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x60);
								WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x03);
							} else if (FLASH_MEM_WIDTH == 2) {
								WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
										INTEL_CMD_CONFIG_REG_SETUP);
								WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
										INTEL_CMD_CONFIG_REG_CONFIRM);
							}
						sync_flag_internal = 0x0;
						}
				}
		#endif

			Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS,
						   FLASH_MEM_WIDTH, 0);
				if(Status != XST_SUCCESS) {
					xil_printf("-- Fail at Initialize --\r\n");
					return XST_FAILURE;
				}
			Status = XFlash_Reset(&FlashInstance);
				if(Status != XST_SUCCESS) {
					xil_printf("-- Fail at reset --\r\n");
					return XST_FAILURE;
				}
			Status = XFlash_Unlock(&FlashInstance, BLOCK_OFFSET_ADDR, 0);
				if(Status != XST_SUCCESS) {
					return XST_FAILURE;
					}

	for(Index = 0; Index < (ByteCount); Index++, ddrvector++)
		{
			WriteBuffer[Index] = DDR_MEMB1[ddrvector];
		}
			Status = XFlash_Write(&FlashInstance, Addr, ByteCount, WriteBuffer);
				if(Status != XST_SUCCESS) {
					return XST_FAILURE;
				}
				return XST_SUCCESS;
}
/*****************************************************************************/
/**
*
* This function writes the data to the specified locations in the Numonyx Serial
* Flash memory.
*
* @param	BPIPtr is a pointer to the instance of the BPI device.
* @param	Addr is the address in the Buffer, where to write the data.
* @param	ByteCount is the number of bytes to be written.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None
*
******************************************************************************/
int bpiFlashWrite_1024(u32 Addr, u32 ByteCount)
{
	int Status;
	/** Set Flash to Async mode.  */
		#ifdef XPAR_XFL_DEVICE_FAMILY_INTEL
			if (int_sync_flg == 0x1)
				{
					if (sync_flag_internal ==0x1)
						{
							if (FLASH_MEM_WIDTH == 1) {
								WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x60);
								WRITE_FLASH_8(FLASH_BASE_ADDRESS + ASYNC_ADDR, 0x03);
							} else if (FLASH_MEM_WIDTH == 2) {
								WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
										INTEL_CMD_CONFIG_REG_SETUP);
								WRITE_FLASH_16(FLASH_BASE_ADDRESS + ASYNC_ADDR,
										INTEL_CMD_CONFIG_REG_CONFIRM);
							}
						sync_flag_internal = 0x0;
						}
				}
		#endif
	Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS, FLASH_MEM_WIDTH, 0);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
			}
	Status = XFlash_Reset(&FlashInstance);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
			}
	Status = XFlash_Unlock(&FlashInstance, BLOCK_OFFSET_ADDR, 0);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
			}
	Status = XFlash_Write(&FlashInstance, Addr, ByteCount, WriteBuffer);
				if(Status != XST_SUCCESS) {
					return XST_FAILURE;
				}
	return XST_SUCCESS;
}

/**********************************************************************/
int xmodem_packet_receive(u32 dest_addr)
{	int length							= 0x00000000;

	int crc								= 0x00000000;
	int crchi							= 0x00000000;
	int crclo							= 0x00000000;
	int expcrclo						= 0x00000000;
	int expcrchi						= 0x00000000;

	int blk_num							= 0x00000000;
	int blk_num_comp 					= 0x00000000;

	int blk_length;
	int i								= 0x00000000;
	int j								= 0x00000000;
	int l								= 0x00000000;

	int errors							= 0x00000000;
	int mode							= 0x00000000;
	char response						= NAKC;
	int	temp							= 0x00000000;

	int timeout 						= INITIAL_TIMEOUT;
	FileByteCount						= 0x00000000;
	NoOfblockperPartition				=0;
	NoOf1024Packets						=0;
	for (;;) {

	temp = read_usb_timeout(timeout);

	if (temp >= 0) {


		switch (mode) {


			case IDLE:		if ((temp == STX) & (blk_num == 0))		{	blk_length = 0x400;
																		timeout = FAST_TIMEOUT;
																		errors = 0x00000000;
																		length = length + blk_length;
																		mode = START;	}

							else if ((temp == SOH) & (blk_num == 0)) 	{	blk_length = 0x80;
																			timeout = FAST_TIMEOUT;
																			errors = 0x0000000;
																			length = length + blk_length;
																			mode = START;	}

							else if (temp == STX)	{	timeout = FAST_TIMEOUT;
														mode = START;	}


							else if (temp == SOH) 	{	timeout = FAST_TIMEOUT;
														mode = START;	}

							else if (temp == EOT) 	{	response = ACK;
														printc_usb(response);
														return length /* errors */;	}

							else mode = ERROR;

							break;


			case START:		blk_num = temp;
							mode = BLK_NUM;

							break;


			case BLK_NUM:	blk_num_comp = temp;

							if (blk_num == (255 - blk_num_comp)) mode = DATA;

							else mode = ERROR;

							break;

 			case DATA:		if (i < blk_length)
 								{
 									buffer_array [i] = temp;
 									WriteBuffer[i] = temp;
 									i++;
 									if (temp !=XEOF)
 										{
 											FileByteCount++;
 										}
 									else
 										{
 											CPMEOF =0x1;
 										}

 									if ( (CPMEOF ==0x1) && (temp != EOF) )
 									{
 										if (temp == 0x00)
 											{
 												CPMEOF =0x1;
 												FileByteCount = FileByteCount -1;
 											}
 										else
 											{
 											FileByteCount++;
 											CPMEOF =0x0;
 											}
 									}
 									if ( (CPMEOF ==0x1) && (temp == 0x00) )
 									 	{
 									 		CPMEOF =0x1;
 									 	}

 								}

								else 	{ 	i = 0;
											mode = CRC_LO;
											crchi = temp;	}

							break;


			case CRC_LO:	crclo = temp;
							mode = CRC_CHK;

							break;

			case ERROR:		response = CAN;
							for (i = 0; i < 2; i++) {	printc_usb(response);	}
							return -1;


			default:		mode = ERROR;
							break;

					}
			}


			else {

					switch (mode)	{
										case IDLE:		response = NAKC;
														printc_usb(response);
														printc_usb(BS); 
														if (errors++ > MAXERRORS) return -1;
														break;

										case DATA:		response = NAKC;
														printc_usb(response);
														mode = IDLE;
														break;

										case CRC_LO:	i = 0;
														response = NAKC;
														printc_usb(response);
														mode = IDLE;
														break;

										case CRC_CHK:	for (l = 0; l < blk_length; l++) {
															crc = crc ^ (int) buffer_array[l] << 8;
															for (j = 0; j < 8; j++)
															if (crc & 0x8000) crc = crc << 1 ^ 0x1021;
																else crc = crc << 1;
																						}
														expcrchi = (crc >> 8) & 0xff;
														expcrclo = crc & 0xff;

														if ((crchi == expcrchi) & (crclo == expcrclo))
															{
																length = length + blk_length;
																crc = 0x00000000;
																response = ACK;
																bpi_program_flash_xmodem(dest_addr,blk_length);
																printc_usb(response);
																/*	if (move_to_flash_bin (dest_addr, blk_length) < 0) mode = ERROR;
																	else 	mode = IDLE; */
																mode = IDLE;
																dest_addr = dest_addr + blk_length;
															}
														else
															{
																response = NAKC;
																crc = 0x00000000;
																printc_usb(response);
																mode = IDLE;
															}
														break;

										case ERROR:		response = CAN;
														for (i = 0; i < 2; i++) {	printc_usb(response);	}
														return -1;


										default:		mode = ERROR;
														break;
									}
				}

	}
}
//************************************************************************************************/
static int  xmodem_File_Rec (u32 StartAddr )
{
	int		temp=0;
	u32  	Index=0, dest_addr=StartAddr;
	for (Index =0; Index <=1024; Index++)
		{
			buffer_array[Index] =0x00;
		}
while (1)
	{

		printf_usb("\n\r\n\rXMODEM File Download \n\r");
		printf_usb("\n\rGoto TeraTerm Menu-> File-> Transfer -> XMODEM -> Send File -> 1K->\n\r");
	temp = xmodem_packet_receive(dest_addr);

		switch (temp)
			{
				case (-1)	:	console_colour_red();
								printf_usb("### FAILED! ###\n\r\n\r");
								console_colour_white();
								return XST_FAILURE;
								break;
				default		:	console_colour_green();
								xil_printf("\r\nBytes Received \t= 0x%08x\r\nFile Size \t= 0x%08x\r\n", temp, FileByteCount);
								//xil_printf("\r\nBlock Received \t= 0x%08x\r\n", NoOfblockperPartition);
								console_colour_white();
								return XST_SUCCESS;
								break;
			}
			break;
	}
return XST_SUCCESS;
}
/************************************************************************************************/

void printf_usb(char *s)
{
	while (*s)
	{
		XUartLite_SendByte(XPAR_AXI_UARTLITE_0_BASEADDR,*s);
		while (XUartLite_IsTransmitFull(XPAR_AXI_UARTLITE_0_BASEADDR) == true) {
		};
		s++;
	}
	return;
}
/************************************************************************************************/
void printc_usb(char s)
{

	XUartLite_SendByte(XPAR_AXI_UARTLITE_0_BASEADDR,s);
	while (XUartLite_IsTransmitFull(XPAR_AXI_UARTLITE_0_BASEADDR) == true) {
	};

}
/************************************************************************************************/
int read_usb_timeout(int timeout)
{
	int rc = -1;

	while (XUartLite_IsReceiveEmpty(XPAR_AXI_UARTLITE_0_BASEADDR) && timeout)
	{
		timeout--;
	}

    if (timeout) rc = rc_byte_nb(XPAR_AXI_UARTLITE_0_BASEADDR);

    return rc;
}
/************************************************************************************************/
int rc_byte_nb(uint32_t BaseAddress)
{
	return (uint8_t)Xil_In32(BaseAddress + XUL_RX_FIFO_OFFSET);

}
/************************************************************************************************/
void putnum_32bit(unsigned int num)
{
  char  buf[9];
  int   cnt;
  char  *ptr;
  int   digit;

  ptr = buf;
  for (cnt = 7 ; cnt >= 0 ; cnt--) {
    digit = (num >> (cnt * 4)) & 0xf;

    if (digit <= 9)
      *ptr++ = (char) ('0' + digit);
    else
      *ptr++ = (char) ('a' - 10 + digit);
  }

  *ptr = (char) 0;
  printf_usb (buf);
}
/************************************************************************************************/
void clear_console(void)
{
	printc_usb(ESC);
	printc_usb(BRAK);
	printc_usb(TWO);
	printc_usb(J);
	return;
}
/************************************************************************************************/
void console_colour_green(void)
{
	printc_usb(ESC);
	printc_usb(BRAK);
	printc_usb(THREE);
	printc_usb(TWO);
	printc_usb(m);
	return;
}

void console_colour_red(void)
{
	printc_usb(ESC);
	printc_usb(BRAK);
	printc_usb(THREE);
	printc_usb(ONE);
	printc_usb(m);
	return;
}
/************************************************************************************************/
void console_colour_white(void)
{
	printc_usb(ESC);
	printc_usb(BRAK);
	printc_usb(THREE);
	printc_usb(NINE);
	printc_usb(m);
	return;
}
/******************************************************************************/
/**
*
* This function enable caches
*
* @param
* @param
*
*
* @return	None.
*
* @note		None.
*
******************************************************************************/

void enable_caches()
{
#ifdef __PPC__
    Xil_ICacheEnableRegion(CACHEABLE_REGION_MASK);
    Xil_DCacheEnableRegion(CACHEABLE_REGION_MASK);
#elif __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
#endif
#endif
}

void disable_caches()
{
    Xil_DCacheDisable();
    Xil_ICacheDisable();
}

void init_uart()
{

}

void init_platform()
{
    enable_caches();
    init_uart();
}

void cleanup_platform()
{
    disable_caches();
}

/*****************************************************************************/
/**
* Main function to call the HWICAP Low Level example.
*
* @param    None
*
* @return   XST_SUCCESS if successful, otherwise XST_FAILURE
*
* @note     None
*
******************************************************************************/
int fpga_iprog(u32 iprog_address)
{
	int Status;
	u32 IdCode;
	ReadId[4] = iprog_address;
	Status = HwIcapLowLevelIPROG(HWICAP_BASEADDR, &IdCode);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}


/*****************************************************************************/
/**
*
* This function returns the IDCODE of the target device.
*
* @param	BaseAddress is the base address of the HwIcap instance.
* @param	IdCode is the IDCODE of the part this code is running on.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE
*
* @note		None
*
******************************************************************************/
u32 HwIcapLowLevelIPROG(u32 BaseAddress, u32 *IdCode)
{

	u32 Index;
	u32 Retries;
    u32 RegData;
	/*
	 * Initiate the Abort sequence in the ICAP by setting the Abort bit in
	 * the Control Register.
	 */
	RegData = XHwIcap_ReadReg(BaseAddress, XHI_CR_OFFSET);

	XHwIcap_WriteReg(BaseAddress, XHI_CR_OFFSET, RegData | XHI_CR_SW_ABORT_MASK);
	/*
	 * Write command sequence to the FIFO
	 */
	for (Index = 0; Index < HWICAP_IPROG_BITSTREAM_LENGTH; Index++) {
		XHwIcap_WriteReg(BaseAddress, XHI_WF_OFFSET, ReadId[Index]);
	}
	/*
	 * Start the transfer of the data from the FIFO to the ICAP device.
	 */
	XHwIcap_WriteReg(BaseAddress, XHI_CR_OFFSET, XHI_CR_WRITE_MASK);
	/*
	 * Poll for done, which indicates end of transfer
	 */
	Retries = 0;
	while ((XHwIcap_ReadReg(BaseAddress, XHI_SR_OFFSET) &
			XHI_SR_DONE_MASK) != XHI_SR_DONE_MASK) {
		Retries++;
		if (Retries > XHI_MAX_RETRIES) {
			/*
			 * Waited to long. Exit with error.
			 */
			printf("\r\nHwIcapLowLevelExample failed- retries  \
			failure. \r\n\r\n");
			return XST_FAILURE;
		}
	}
	/*
	 * Wait till the Write bit is cleared in the CR register.
	 */
	while ((XHwIcap_ReadReg(BaseAddress, XHI_CR_OFFSET)) &
					XHI_CR_WRITE_MASK);
	/*
	 * Write to the SIZE register. We want to readback one word.
	 */
	XHwIcap_WriteReg(BaseAddress, XHI_SZ_OFFSET, HWICAP_IDCODE_SIZE);


	/*
	 * Start the transfer of the data from ICAP to the FIFO.
	 */
	XHwIcap_WriteReg(BaseAddress, XHI_CR_OFFSET, XHI_CR_READ_MASK);

	/*
	 * Poll for done, which indicates end of transfer
	 */
	Retries = 0;
	while ((XHwIcap_ReadReg(BaseAddress, XHI_SR_OFFSET) &
			XHI_SR_DONE_MASK) != XHI_SR_DONE_MASK) {
		Retries++;
		if (Retries > XHI_MAX_RETRIES) {

			/*
			 * Waited to long. Exit with error.
			 */

			return XST_FAILURE;
		}
	}
#if (XHI_FAMILY == XHI_DEV_FAMILY_S6)

	*IdCode =  (*IdCode << 16 | (XHwIcap_ReadReg(BaseAddress,
					XHI_RF_OFFSET)));
#endif

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function reads the configuration  registers inside the FPGA.
*
* @param	DeviceId is the XPAR_<HWICAP_INSTANCE>_DEVICE_ID value from
*		xparameters.h.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
static int HwIcapReadConfigReg(u16 DeviceId)
{
	int Status;
	XHwIcap_Config *CfgPtr;
	u32 ConfigRegData;
	//u32 int_sync_flg =0x0;
	CfgPtr = XHwIcap_LookupConfig(DeviceId);
	if (CfgPtr == NULL) {
		return XST_FAILURE;
	}

	Status = XHwIcap_CfgInitialize(&HwIcap, CfgPtr, CfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = XHwIcap_SelfTest(&HwIcap);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	if (XHwIcap_GetConfigReg(&HwIcap, XHI_BSPI, (u32 *)&ConfigRegData) ==
			XST_SUCCESS) {
							int_sync_flg = (ConfigRegData && 0x8000000);
						}
	return int_sync_flg;
}
