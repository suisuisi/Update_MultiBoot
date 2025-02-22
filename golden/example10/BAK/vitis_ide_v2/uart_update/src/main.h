/*
 * main.h
 *
 *  Created on: 2021��5��26��
 *      Author: YF-FPGA2
 */

#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include "xil_types.h"
#include "xuartlite.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "sleep.h"
#include "user_spi.h"
#include "Ymodem.h"
#define UARTLITE_DEVICE_ID			XPAR_UARTLITE_0_DEVICE_ID


#define XUL_RX_FIFO_OFFSET			0	/* receive FIFO, read only */
#define XUL_TX_FIFO_OFFSET			4	/* transmit FIFO, write only */
#define XUL_STATUS_REG_OFFSET		8	/* status register, read only */
#define XUL_CONTROL_REG_OFFSET		12	/* control reg, write only */

#define XUL_SR_TX_FIFO_FULL			0x08	/* transmit FIFO full */
#define XUL_SR_TX_FIFO_EMPTY		0x04	/* transmit FIFO empty */
#define XUL_SR_RX_FIFO_FULL			0x02	/* receive FIFO full */
#define XUL_SR_RX_FIFO_VALID_DATA	0x01	/* data in receive FIFO */

#define UART_SEND_LEN				5
#define UART_REV_CMDLEN				5
#define UART_MAX_LEN				1024+UART_REV_CMDLEN
#define UARTLITE_BASEADDR			0x40600000
#define XPAR_QSPI_BASEADDR			0x44a00000

#define WR_DATA_ADDR				XPAR_MYIP_BASEADDR+4
#define FRAME_CNT_ADDR				XPAR_MYIP_BASEADDR+8
#define DATA_NUM_ADDR				XPAR_MYIP_BASEADDR+12
#define WR_FLASH_ADDR				XPAR_MYIP_BASEADDR+16

#define RD_RENUM_ADDR				XPAR_MYIP_BASEADDR+4
#define RD_STATE_ADDR				XPAR_MYIP_BASEADDR+8
#define RD_ERRORS_ADDR				XPAR_MYIP_BASEADDR+12

#define PC_PACK_HEADER				0x00FF6868
#define SHAKE_PACK_HEADER			0x00FF6868
#define ACK_PACK_HEADER				0x01FF6868

#define SHAKE_CHECK_NUM				0xd1

//#define UPDATE_FLASH_ADDR			0x800000
#define UPDATE_FLASH_ADDR			0x000000

typedef struct uart_frame
{
	u32		header		;
	u32		data_len	;
	u32		package_cnt	;
	u16		cmd			;
	u8		*va_data	;
	u8		checknum	;
}uart_frame_data;

extern uart_frame_data	*uart_rev_struct;

extern u16 				uart_rev_cnt;
extern u8	uart_rev_buff[UART_MAX_LEN];


//extern XUartLite UartLite;
int	 UartLite_Init(u16 DeviceId);
void	uart_send_pack(u32 pack,u16 cmd,u8 result);
void axi_data_trans(u32 *pdata,u32 cue_frame_num,u32 data_num);
void  Spi_flash_update(u8 pdata[],u32 frame_cnt,u32 minframe_cnt,u16 data_len);

void UartLite_rev_handle(void);
void UartLite_rev_data(void);
void  Update_Fun(void);

#endif /* SRC_MAIN_H_ */
