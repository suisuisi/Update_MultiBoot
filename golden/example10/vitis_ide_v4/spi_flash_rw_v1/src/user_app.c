/*
 * user_app.c
 *
 *  Created on: 2021��6��3��
 *      Author: YF-FPGA2
 */
#include "main.h"

u16 uart_rev_cnt = 0;
u8	uart_rev_buff[UART_MAX_LEN]={0};
u8	uart_send_buff[15]={0};
u8	uart_update_wait=0;
u8	data_sync_save[256]={0};

u16	uart_rev_flag=0,data_fream_cnt=0,max_fream_num=0;

uart_frame_data 	*uart_rev_struct = (uart_frame_data *)uart_rev_buff;
uart_frame_data 	*uart_send_struct = (uart_frame_data *)uart_send_buff;

u32		wr_flash_err_cnt=0;

//XUartLite UartLite;		/* Instance of the UartLite Device */


//���������
int	 UartLite_Init(u16 DeviceId)
{
	uart_rev_struct->va_data=&uart_rev_buff[14];
	uart_rev_struct->checknum=uart_rev_buff[UART_MAX_LEN-1];

	uart_send_struct->checknum=uart_send_buff[UART_SEND_LEN-1];

	//��ʼ��Ϊ���ְ�
	uart_send_pack(SHAKE_PACK_HEADER,1,SHAKE_CHECK_NUM);

	return XST_SUCCESS;
}


//װ�ط������ݰ�
void	uart_send_pack(u32 pack,u16 cmd,u8 result)
{
	uart_send_struct->header=pack;
	uart_send_struct->data_len=0;
	uart_send_struct->package_cnt=0x01000000;		 //�ߵ�λ����;�ȷ��͸��ֽ�

	uart_send_struct->cmd=(cmd<<8) |(cmd&0xff00>>8);//�ߵ�λ����;�ȷ��͸��ֽ�
	uart_send_buff[UART_SEND_LEN-1]=result;
}

//��ѯuart ��������
void UartLite_rev_data(void)
{
	u8 StatusRegisterVal=0;

	if((uart_rev_flag&0x4000)==0){												//������ɺ��ٽ�������
		StatusRegisterVal = Xil_In32(UARTLITE_BASEADDR+XUL_STATUS_REG_OFFSET);	//��FPGA״̬
		 if (StatusRegisterVal & XUL_SR_RX_FIFO_VALID_DATA){
			 uart_rev_flag =0x8000;												//���ձ��
//    		 Xil_Out32(UARTLITE_BASEADDR +XUL_CONTROL_REG_OFFSET,0);			//д�ն˼Ĵ���,�ر��ж�
			 uart_rev_buff[uart_rev_cnt++] = Xil_In32(UARTLITE_BASEADDR+XUL_RX_FIFO_OFFSET);
		 }
		 else{
			 if((uart_rev_flag&0x8000)==0x8000)
				 uart_rev_flag++;
			 if((uart_rev_cnt==UART_MAX_LEN)||((uart_rev_flag&0x3fff)>5000))	//���յ�������ݳ���,50ms���ճ�ʱ���
				 uart_rev_flag |=0x4000;										//�������
		 }
	}
}

//���ڷ�������
void UartLite_send_data(u8 *psend_buf,u8 send_num)
{
	u8 StatusRegister=0,send_cnt=0;

	StatusRegister = Xil_In32(UARTLITE_BASEADDR+XUL_STATUS_REG_OFFSET);					//��FPGA״̬
	while (send_cnt<send_num) {
		if((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0){
			Xil_Out32(UARTLITE_BASEADDR +XUL_TX_FIFO_OFFSET,psend_buf[send_cnt]);		//д����
			send_cnt++;
		}
		StatusRegister = Xil_In32(UARTLITE_BASEADDR+XUL_STATUS_REG_OFFSET);				//��FPGA״̬
	}
}

//���ڽ������ݴ���,������λ������Э�����
void UartLite_rev_handle(u32 UPDATE_FLASH_ADDR)
{
	u8	checknum=0,rewrite_flag=0;
	u32	checknum1=0,checknum2=0;
	u16 i=0,j,rev_valid_num=0,sync_flag=0;
	u32	temp=0;
	if((uart_rev_flag&0x4000)==0x4000){ 												//������ɺ���
		rev_valid_num = uart_rev_cnt;
		temp = ((uart_rev_struct->package_cnt&0x00ff0000)>>8) | (uart_rev_struct->package_cnt>>24);
		temp = temp | ((uart_rev_struct->package_cnt&0x0000ff00)<<8);					//�ߵ��ֽڽ���
		temp = temp | ((uart_rev_struct->package_cnt&0x000000ff)<<24);
		uart_rev_struct->package_cnt = temp;
		temp=0;
		temp = uart_rev_struct->cmd>>8;													//���ֽ���Ч
//		temp = temp | (uart_rev_struct->cmd<<8);
		uart_rev_struct->cmd = temp;
		for(i=0;i<rev_valid_num-1;i++){//����У���
			checknum +=uart_rev_buff[i];
			if(i>14)
				checknum1+=uart_rev_buff[i];
		}

		if((checknum == uart_rev_buff[rev_valid_num-1])&&(uart_rev_struct->header==SHAKE_PACK_HEADER)){
			if(uart_update_wait==0)	{													//�ȴ��������������ź�
				if((rev_valid_num==15)&&(uart_rev_struct->cmd==1)){
					uart_update_wait=1;
					uart_send_pack(SHAKE_PACK_HEADER,1,SHAKE_CHECK_NUM);				//װ�ط��ͻ���������
					UartLite_send_data(uart_send_buff,UART_SEND_LEN);					//��������
				}
			}
			else if(uart_update_wait==1){
				data_fream_cnt++;
				if(data_fream_cnt==1){													//��һ������
					max_fream_num = uart_rev_struct->package_cnt;
					sync_flag = 256;
					for(i=0;i<256;i++)
						data_sync_save[i]=uart_rev_struct->va_data[i+UART_REV_CMDLEN];
				}
				else{
					sync_flag = 0;
				}
				if(rev_valid_num>(UART_REV_CMDLEN+sync_flag)){

					temp = UPDATE_FLASH_ADDR + sync_flag + ((data_fream_cnt-1)<<10);  	//=����*1024,flash��ַƫ��

					do{
						//дflash��ÿ��д1024����
						spi_flash_write_n(&uart_rev_struct->va_data[sync_flag+UART_REV_CMDLEN],temp,1024);

						//flash У��
						for(i=0;i<4;i++){
							for(j = 0; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++) {
									ReadBuffer[j] = 0x0;
							}
							SpiFlashRead(&Spi, temp+(i<<8), 256);
							for(j = 4; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++)
								checknum2 += ReadBuffer[j];
						}

						rewrite_flag =0 ;
						if(checknum1 == checknum2){
							if(data_fream_cnt == max_fream_num)								//��ʾ�Ѿ������һ������,����ͬ��ͷ����
								spi_flash_write_n(data_sync_save,UPDATE_FLASH_ADDR,256);
							uart_send_pack(ACK_PACK_HEADER,0,0);							//װ�ط��ͻ���������
							UartLite_send_data(uart_send_buff,UART_SEND_LEN);				//��������
						}
						else{
							rewrite_flag = rewrite_flag + 1;
						}

					}while((rewrite_flag>0)&&(rewrite_flag<3));								//дflashУ�鲻�ɹ�,����д3��

				}
			}

		}
		else{
			uart_send_pack(ACK_PACK_HEADER,0,1);											//װ�ط��ͻ���������
			UartLite_send_data(uart_send_buff,UART_SEND_LEN);								//��������
		}
		uart_rev_flag = 0;
		uart_rev_cnt  = 0;
		for(i=0;i<UART_MAX_LEN;i++)
			uart_rev_buff[i]=0;
	}
}

//����SPI flash
//ע��Ymodem���������֡ʱ,����1024�ֽڵģ����ΪN֡128�ֽ�����
void  Spi_flash_update(u8 pdata[],u32 frame_cnt,u32 minframe_cnt,u16 data_len,u32 UPDATE_FLASH_ADDR)
{
	u32 i,j;
	u32 checknum1=0,checknum2 = 0;
	u32	temp_addr=0,rewrite_flag=0;
	u16 sync_byte_num = 0;


	if(data_len > 0){			//������Ч��ִ����������
		if(over_fream_f == 0){
			if(frame_cnt == 1){
				for(i=0;i<256;i++)	//FPGA��дflash����Ҫ��ͬ����Ϣ���д��
					data_sync_save[i]=pdata[i];
				sync_byte_num = 256;
				wr_flash_err_cnt=0;
			}
			else
				sync_byte_num = 0;

			for(i=sync_byte_num;i<data_len;i++)									//����У���1
				checknum1 += pdata[i];

			//flash��ַƫ��=֡����*1024+128֡����*128
			if(minframe_cnt == 0)
				temp_addr = UPDATE_FLASH_ADDR  + ((frame_cnt-1)<<10);
			else
				temp_addr = UPDATE_FLASH_ADDR  + ((frame_cnt-1)<<10) + ((minframe_cnt-1)<<7);
			do{
				if(frame_cnt == 1){
					i=1;
				}
				else
					i=0;
				//����4KBҳ��������ִ��
				if((temp_addr % 4096)==0){
					SpiFlashWrite_control(COMMAND_WRITE_ENABLE);
					SpiFlashSectorErase(&Spi,COMMAND_SUB_4KB_ERASE, temp_addr);
				}
				//дflash��ÿ��д1024����
				spi_flash_write_n(&pdata[sync_byte_num],temp_addr+sync_byte_num,data_len - sync_byte_num);
				checknum2 = 0;
				//flash У��
				if(data_len>256){
					while(i<4){
						for(j = 0; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++) {
							ReadBuffer[j] = 0x0;
						}
						SpiFlashRead(&Spi, temp_addr+(i<<8), 256);
						for(j = 4; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++)		//����У���2
							checknum2 += ReadBuffer[j];
						i++;
					}
				}
				else{//����128�ֽ�֡��У��
					for(j = 0; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++) {
						ReadBuffer[j] = 0x0;
					}
					SpiFlashRead(&Spi, temp_addr+sync_byte_num, data_len);
					for(j = 4; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++)			//����У���2
						checknum2 += ReadBuffer[j];
				}
				if(checknum1 == checknum2){											//�ȶ�У���
					rewrite_flag =0 ;
				}
				else{
					rewrite_flag = rewrite_flag + 1;
					wr_flash_err_cnt++;
				}


			}while((rewrite_flag>0)&&(rewrite_flag<3));								//дflashУ�鲻�ɹ�,����д3��
		}
		else {//��ʾ�Ѿ������һ������,����ͬ��ͷ����
			spi_flash_write_n(data_sync_save,UPDATE_FLASH_ADDR,256);
		}
	}

}

void  Update_Fun(u8 start_mod,u32 UPDATE_FLASH_ADDR)
{
	u32 i;

	u8	timeout_3s  =0; //,start_mod=0
	u8	*flash_data =NULL;
	u16 data_va_len =0;		//����������Ч����
	static int timeout_cnt = 0;

	//��Լ3Sһ��,�ⲿ�̶���ʱ����10us,��ʱ����'C'�ַ�
	timeout_cnt ++;
	if(timeout_cnt > 250000)	{
		timeout_3s = 1;
		timeout_cnt = 0;
	}
	else
		timeout_3s = 0;

	//�������ݽ���
	UartLite_rev_data();

	//����֡������ɺ�������
	if((uart_rev_flag&0x4000)==0x4000){

//		if(uart_rev_buff[0] == 'Y')		//����modem����
//			start_mod = 1;
//		else
//			start_mod = 0;

		//modem���ݷ���
		data_va_len = modem_data_handle(uart_rev_buff,uart_rev_cnt,uart_rev_flag,flash_data);		//NO.1
		if(over_fream_f == 1)	//����֡ʱ,FPGA��Ҫ�����ֵ�ͬ��ͷд��
			data_va_len = 256;
		//spi flash ����
		Spi_flash_update(&uart_rev_buff[3],mod_fream_cnt&0x7fffffff,fream_128Byte_cnt,data_va_len,UPDATE_FLASH_ADDR);	//NO.2

		//���UART����
		uart_rev_flag = 0;
		uart_rev_cnt  = 0;
		for(i=0;i<UART_MAX_LEN;i++)
			uart_rev_buff[i]=0;
		usleep(4000);			//��ʱ10ms�ظ�
	}
	//modem״̬�л������ݻظ�
	Modem_State_Conv(start_mod,timeout_3s);												//NO.3
}
