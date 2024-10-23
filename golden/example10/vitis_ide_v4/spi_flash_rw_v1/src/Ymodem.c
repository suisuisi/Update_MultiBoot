/*
 * Ymodem.c
 *
 *  Created on: 2021年6月4日
 *      Author: YF-FPGA2
 */

#include "Ymodem.h"
//modem_frame_struct 	modem_frame_info;

u8		c_modstate=0,n_modstate=0;
u8		d_result = 0;				//d_result-------接收数据分析结果,0=等待处理结果,>0表示返回的状态
u8		over_fream_f = 0;			//结束帧标记
u32		mod_fream_cnt= 0;			//modem 帧计数
u32		fream_128Byte_cnt= 0;		//128字节帧计数

//串口发送声明函数
void UartLite_send_data(u8 *psend_buf,u8 send_num);

static  u16 CAL_CRC16_XMODEM(u8 *pdata, u16 data_len);


//----返回校验结果
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

//Modem_State_Fun函数为Modem状态转换
//startflag----表示开始启动传输,
//timeout_3s---3秒计时标志,
//必须放置在rev_data_handle函数之后执行
int Modem_State_Conv(u8 startflag,u8 timeout_3s)
{
	u8	send_buff[5]={0};
	int up_suceed=0;

//	c_modstate = n_modstate;
	switch(c_modstate)
	{
		case 0:											//空闲状态
			if(startflag)
				c_modstate =1;
			break;
		case 1:											//定时发送'C'字符启动Ymodem传输
			if(d_result>0){								//等待接收数处理结果
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
		case 2:											//等待数据传输完成,并应答
			if(d_result>0){
				send_buff[0] = d_result;
				RXModem_Return_Fun(send_buff,1);
				if((d_result == MODEM_NAK)&&(over_fream_f==1)){ //结束帧标记
					c_modstate = 3;
				}
			}
			break;
		case 3:											//接收第二次EOT数据,结束
			if(d_result>0){
				send_buff[0] = d_result;
				RXModem_Return_Fun(send_buff,1);
				if((d_result == MODEM_ACK)&&(over_fream_f==2)){
					c_modstate = 4;
				}
			}
			break;
		case 4:											//最后一次发送'C'
			send_buff[0] = MODEM_CHAR_C;
			RXModem_Return_Fun(send_buff,1);
			c_modstate	 = 5;
			break;
		case 5:
			if(d_result == MODEM_ACK){
				send_buff[0] = MODEM_ACK;			//回复
				RXModem_Return_Fun(send_buff,1);	//应该不需要
				send_buff[0] = MODEM_CAN;
				send_buff[1] = MODEM_CAN;
				send_buff[2] = MODEM_CAN;
				send_buff[3] = MODEM_CAN;
				send_buff[4] = MODEM_CAN;
				RXModem_Return_Fun(send_buff,5);	//远程取消modem传输,必须连续发送4次以上
				over_fream_f = 0;
				c_modstate = 0;
				RXModem_Return_Fun((u8 *)"\r\n",2);
				RXModem_Return_Fun((u8 *)"当前升级完成...\r\n",17);
				up_suceed = 0x55;
			}

		default:{};

	}
	d_result = 0;
	return up_suceed;
}

//返回有效数据长度--用于其他处理
//pdata---------输入待处理的数据;
//data_len------数据处理长度;
//rev_flag------接收数据有效标记;
//pdata_valid---返回有效数据地址;
u16 modem_data_handle(u8 *pdata,u16 data_len,u16 rev_flag,u8 *pdata_valid)
{
	u16	CRCcheck=0;
	modem_frame_struct	modem_frame_info;
	u16 rev_valid_num=0;

	if(c_modstate == 0)																	//没有启动modem传输,不做处理
		return 0;
	if((rev_flag&0x4000)==0x4000){ 														//接收完成后处理

		modem_frame_info.header		=pdata[0];
		modem_frame_info.frame_cnt	=pdata[1];
		modem_frame_info.negframe	=pdata[2];
		modem_frame_info.va_data	=&pdata[3];
		modem_frame_info.CRCcheck	=((u16)pdata[data_len-2]<<8) | pdata[data_len-1];

		rev_valid_num = data_len;

		if(rev_valid_num > 100)		//大于100的才校验
			CRCcheck = CAL_CRC16_XMODEM(&pdata[3],rev_valid_num-MODEM_CMD_LEN);

		//判断校验和帧头
		if((CRCcheck == modem_frame_info.CRCcheck)&&((modem_frame_info.header==MODEM_STX)||(modem_frame_info.header==MODEM_SOH))){
			if(over_fream_f == 0){		//是否为结束帧
				if(mod_fream_cnt==0){	//是否为起始帧
					mod_fream_cnt |= 0x80000000;
					d_result = MODEM_ACK;
				}
				else{					//有效数据
					if(data_len == 1029)//1024字节帧计数
						mod_fream_cnt++;
					else{				//128字节帧计数
						if(fream_128Byte_cnt == 0)//帧边界处理
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
		else if(modem_frame_info.header==MODEM_EOT){	//结束帧头
			if(over_fream_f == 0){		//第一次结束帧头
				over_fream_f = 1;
				d_result = MODEM_NAK;
			}

			else{						//第二次结束帧头
				over_fream_f = 2;
				mod_fream_cnt = 0;
				fream_128Byte_cnt =0;
				d_result = MODEM_ACK;
			}

		}
		else{		//校验失败或是未知错误
			d_result = MODEM_NAK;
		}

	}
	return 0;
}


