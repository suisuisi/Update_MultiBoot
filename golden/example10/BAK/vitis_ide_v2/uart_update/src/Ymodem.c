/*
 * Ymodem.c
 *
 *  Created on: 2021��6��4��
 *      Author: YF-FPGA2
 */

#include "Ymodem.h"
//modem_frame_struct 	modem_frame_info;

u8		c_modstate=0,n_modstate=0;
u8		d_result = 0;				//d_result-------�������ݷ������,0=�ȴ�������,>0��ʾ���ص�״̬
u8		over_fream_f = 0;			//����֡���
u32		mod_fream_cnt= 0;			//modem ֡����
u32		fream_128Byte_cnt= 0;		//128�ֽ�֡����

//���ڷ�����������
void UartLite_send_data(u8 *psend_buf,u8 send_num);

static  u16 CAL_CRC16_XMODEM(u8 *pdata, u16 data_len);


//----����У����
static  u16 CAL_CRC16_XMODEM(u8 *pdata, u16 data_len)
{
	u8	i;
	u16	wCRC = 0;
	do{
		wCRC = wCRC ^ ((u16)*pdata++ << 8);
		i = 8;
		do{
			if(wCRC & 0x8000)
				wCRC = (wCRC<<1) ^ 0x1021;
			else
				wCRC = (wCRC<<1);
		}while(--i);

	}while(--data_len);


	return wCRC;
}


static	void RXModem_Return_Fun(u8 *pdata,u16 slen)
{
	UartLite_send_data(pdata,slen);
}

//Modem_State_Fun����ΪModem״̬ת��
//startflag----��ʾ��ʼ��������,
//timeout_3s---3���ʱ��־,
//���������rev_data_handle����֮��ִ��
int Modem_State_Conv(u8 startflag,u8 timeout_3s)
{
	u8	send_buff[5]={0};
	int up_suceed=0;

//	c_modstate = n_modstate;
	switch(c_modstate)
	{
		case 0:											//����״̬
			if(startflag)
				c_modstate =1;
			break;
		case 1:											//��ʱ����'C'�ַ�����Ymodem����
			if(d_result>0){								//�ȴ�������������
				send_buff[0] = d_result;
				RXModem_Return_Fun(send_buff,1);

				send_buff[0] = MODEM_CHAR_C;
				RXModem_Return_Fun(send_buff,1);
				c_modstate = 2;
			}
			else{
				if(timeout_3s){
					send_buff[0] = MODEM_CHAR_C;
					RXModem_Return_Fun(send_buff,1);
				}
			}
			break;
		case 2:											//�ȴ����ݴ������,��Ӧ��
			if(d_result>0){
				send_buff[0] = d_result;
				RXModem_Return_Fun(send_buff,1);
				if((d_result == MODEM_NAK)&&(over_fream_f==1)){ //����֡���
					c_modstate = 3;
				}
			}
			break;
		case 3:											//���յڶ���EOT����,����
			if(d_result>0){
				send_buff[0] = d_result;
				RXModem_Return_Fun(send_buff,1);
				if((d_result == MODEM_ACK)&&(over_fream_f==2)){
					c_modstate = 4;
				}
			}
			break;
		case 4:											//���һ�η���'C'
			send_buff[0] = MODEM_CHAR_C;
			RXModem_Return_Fun(send_buff,1);
			c_modstate	 = 5;
			break;
		case 5:
			if(d_result == MODEM_ACK){
				send_buff[0] = MODEM_ACK;			//�ظ�
				RXModem_Return_Fun(send_buff,1);	//Ӧ�ò���Ҫ
				send_buff[0] = MODEM_CAN;
				send_buff[1] = MODEM_CAN;
				send_buff[2] = MODEM_CAN;
				send_buff[3] = MODEM_CAN;
				send_buff[4] = MODEM_CAN;
				RXModem_Return_Fun(send_buff,5);	//Զ��ȡ��modem����,������������4������
				over_fream_f = 0;
				c_modstate = 0;
				RXModem_Return_Fun((u8 *)"\r\n",2);
				RXModem_Return_Fun((u8 *)"��ǰ�������...\r\n",17);
				up_suceed = 0x55;
			}

		default:{};

	}
	d_result = 0;
	return up_suceed;
}

//������Ч���ݳ���--������������
//pdata---------��������������;
//data_len------���ݴ�����;
//rev_flag------����������Ч���;
//pdata_valid---������Ч���ݵ�ַ;
u16 modem_data_handle(u8 *pdata,u16 data_len,u16 rev_flag,u8 *pdata_valid)
{
	u16	CRCcheck=0;
	modem_frame_struct	modem_frame_info;
	u16 rev_valid_num=0;

	if(c_modstate == 0)																	//û������modem����,��������
		return 0;
	if((rev_flag&0x4000)==0x4000){ 														//������ɺ���

		modem_frame_info.header		=pdata[0];
		modem_frame_info.frame_cnt	=pdata[1];
		modem_frame_info.negframe	=pdata[2];
		modem_frame_info.va_data	=&pdata[3];
		modem_frame_info.CRCcheck	=((u16)pdata[data_len-2]<<8) | pdata[data_len-1];

		rev_valid_num = data_len;

		if(rev_valid_num > 100)		//����100�Ĳ�У��
			CRCcheck = CAL_CRC16_XMODEM(&pdata[3],rev_valid_num-MODEM_CMD_LEN);

		//�ж�У���֡ͷ
		if((CRCcheck == modem_frame_info.CRCcheck)&&((modem_frame_info.header==MODEM_STX)||(modem_frame_info.header==MODEM_SOH))){
			if(over_fream_f == 0){		//�Ƿ�Ϊ����֡
				if(mod_fream_cnt==0){	//�Ƿ�Ϊ��ʼ֡
					mod_fream_cnt |= 0x80000000;
					d_result = MODEM_ACK;
				}
				else{					//��Ч����
					if(data_len == 1029)//1024�ֽ�֡����
						mod_fream_cnt++;
					else{				//128�ֽ�֡����
						if(fream_128Byte_cnt == 0)//֡�߽紦��
							mod_fream_cnt = mod_fream_cnt +1;
						fream_128Byte_cnt++;
					}
					pdata_valid = &pdata[3];
					d_result = MODEM_ACK;
					return data_len-MODEM_CMD_LEN;
				}
			}
			else{
				d_result = MODEM_ACK;
			}
		}
		else if(modem_frame_info.header==MODEM_EOT){	//����֡ͷ
			if(over_fream_f == 0){		//��һ�ν���֡ͷ
				over_fream_f = 1;
				d_result = MODEM_NAK;
			}

			else{						//�ڶ��ν���֡ͷ
				over_fream_f = 2;
				mod_fream_cnt = 0;
				fream_128Byte_cnt =0;
				d_result = MODEM_ACK;
			}

		}
		else{		//У��ʧ�ܻ���δ֪����
			d_result = MODEM_NAK;
		}

	}
	return 0;
}


