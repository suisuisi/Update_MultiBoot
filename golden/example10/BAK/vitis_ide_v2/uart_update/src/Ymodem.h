/*
 * Ymodem.h
 *
 *  Created on: 2021年6月4日
 *      Author: YF-FPGA2
 */

#ifndef SRC_YMODEM_H_
#define SRC_YMODEM_H_


#include "xil_types.h"
#include "xuartlite.h"
#include "xil_printf.h"


#define MODEM_SOH			0x01		//128字节帧头
#define MODEM_STX			0x02		//1024字节帧头
#define MODEM_EOT 			0x04		//发送结束
#define MODEM_ACK			0x06		//接收应答
#define MODEM_NAK			0x15		//接收非应答
#define MODEM_CAN			0x18		//取消数据发送
#define MODEM_CHAR_C		0x43		//接收请求,启动发送传输,‘C’

#define MODEM_DATA_LEN		1024		//YMODEM 帧数据长度
#define MODEM_CMD_LEN		5			//YMODEM 帧其他命令数据长度


typedef struct mod_frame
{
	u8		header		;				//数据帧头
	u8		frame_cnt 	;				//帧计数
	u8		negframe	;				//帧计数取反
	u8		*va_data	;				//接收数据缓冲区
	u16		CRCcheck	;				//帧数据校验
}modem_frame_struct;

//extern modem_frame_struct	modem_frame_info;
extern u32		mod_fream_cnt,fream_128Byte_cnt;
extern u8		over_fream_f;

u16 modem_data_handle(u8 *pdata,u16 data_len,u16 rev_flag,u8 *pdata_valid);
int Modem_State_Conv(u8 startflag,u8 timeout_3s);

#endif /* SRC_YMODEM_H_ */
