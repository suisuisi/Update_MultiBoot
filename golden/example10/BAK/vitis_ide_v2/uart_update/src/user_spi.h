/*
 * user_spi.h
 *
 *  Created on: 2021Äê6ÔÂ3ÈÕ
 *      Author: YF-FPGA2
 */

#ifndef USER_SPI_H_
#define USER_SPI_H_

#include "xil_types.h"
#include "xintc.h"		/* Interrupt controller device driver */
#include "xil_exception.h"
#include "xspi.h"		/* SPI device driver */

#define SPI_DEVICE_ID			XPAR_SPI_0_DEVICE_ID
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID
#define SPI_INTR_ID			XPAR_INTC_0_SPI_0_VEC_ID

#define SPI_SELECT 0x01


/*
 * Definitions of the commands shown in this example.
 */
#define COMMAND_RANDOM_READ			0x03 /* Random read command */
#define COMMAND_PAGEPROGRAM_WRITE	0x02 /* Page Program command */
#define	COMMAND_WRITE_DISABLE		0x04 /* Write Enable command */
#define	COMMAND_WRITE_ENABLE		0x06 /* Write Enable command */
#define COMMAND_SECTOR_ERASE		0xD8 /* Sector Erase command */
#define COMMAND_SUB_4KB_ERASE		0x20 /* Sector Erase command */
#define COMMAND_SUB_32KB_ERASE		0x52 /* Sector Erase command */
#define COMMAND_BULK_ERASE			0xC7 /* Bulk Erase command */
#define COMMAND_STATUSREG_READ		0x05 /* Status read command */


/**
 * This definitions specify the EXTRA bytes in each of the command
 * transactions. This count includes Command byte, address bytes and any
 * don't care bytes needed.
 */
#define READ_WRITE_EXTRA_BYTES		4 /* Read/Write extra bytes */
#define	WRITE_ENABLE_BYTES			1 /* Write Enable bytes */
#define SECTOR_ERASE_BYTES			4 /* Sector erase extra bytes */
#define BULK_ERASE_BYTES			1 /* Bulk erase extra bytes */
#define STATUS_READ_BYTES			2 /* Status read bytes count */
#define STATUS_WRITE_BYTES			2 /* Status write bytes count */

/*
 * Flash not busy mask in the status register of the flash device.
 */
#define FLASH_SR_IS_READY_MASK		0x01 /* Ready mask */

/*
 * Number of bytes per page in the flash device.
 */
#define PAGE_SIZE					256

/*
 * Address of the page to perform Erase, Write and Read operations.
 */
#define FLASH_TEST_ADDRESS			0x00

#define BYTE1						0 /* Byte 1 position */
#define BYTE2						1 /* Byte 2 position */
#define BYTE3						2 /* Byte 3 position */
#define BYTE4						3 /* Byte 4 position */
#define BYTE5						4 /* Byte 5 position */

#define STM_DUMMYBYTE				0xFF /* Dummy byte */

int xspi_init(void);
int	spi_flash_write_n(u8 *wr_data,u32 wr_addr,u16 byte_num);
int SpiFlashWrite_control(u8 cmd);
int SpiFlashSectorErase(XSpi *SpiPtr,u8 cmd, u32 Addr);
int SpiFlashRead(XSpi *SpiPtr, u32 Addr, u32 ByteCount);

extern XSpi Spi;
extern u8 ReadBuffer[PAGE_SIZE +  READ_WRITE_EXTRA_BYTES];
extern u8 WriteBuffer[PAGE_SIZE +  READ_WRITE_EXTRA_BYTES];

#endif /* USER_SPI_H_ */
