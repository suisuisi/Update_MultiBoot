/*
 * Ymodem.h
 *
 *  Created on: 2021��6��4��
 *      Author: YF-FPGA2
 */

#ifndef SRC_YMODEM_H_
#define SRC_YMODEM_H_


#include "xil_types.h"
#include "xuartlite.h"
#include "xil_printf.h"


#define MODEM_SOH			0x01		//128�ֽ�֡ͷ
#define MODEM_STX			0x02		//1024�ֽ�֡ͷ
#define MODEM_EOT 			0x04		//���ͽ���
#define MODEM_ACK			0x06		//����Ӧ��
#define MODEM_NAK			0x15		//���շ�Ӧ��
#define MODEM_CAN			0x18		//ȡ�����ݷ���
#define MODEM_CHAR_C		0x43		//��������,�������ʹ���,��C��

#define MODEM_DATA_LEN		1024		//YMODEM ֡���ݳ���
#define MODEM_CMD_LEN		5			//YMODEM ֡�����������ݳ���


typedef struct mod_frame
{
	u8		header		;				//����֡ͷ
	u8		frame_cnt 	;				//֡����
	u8		negframe	;				//֡����ȡ��
	u8		*va_data	;				//�������ݻ�����
	u16		CRCcheck	;				//֡����У��
}modem_frame_struct;

//extern modem_frame_struct	modem_frame_info;
extern u32		mod_fream_cnt,fream_128Byte_cnt;
extern u8		over_fream_f;

u16 modem_data_handle(u8 *pdata,u16 data_len,u16 rev_flag,u8 *pdata_valid);
int Modem_State_Conv(u8 startflag,u8 timeout_3s);

#endif /* SRC_YMODEM_H_ */
