#include "Ymodem.h"
//modem_frame_struct 	modem_frame_info;

u8		c_modstate=0,n_modstate=0;
u8		d_result = 0;				//d_result-------�������ݷ������,0=�ȴ��������,>0��ʾ���ص�״̬
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
			if(d_result>0){								//�ȴ��������������
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
//pdata---------���������������;
//data_len------���ݴ�������;
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
void UartLite_rev_handle(u32 StartAddr)
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

					temp = StartAddr + sync_flag + ((data_fream_cnt-1)<<10);  	//=����*1024,flash��ַƫ�� UPDATE_FLASH_ADDR

					do{
						//дflash��ÿ��д1024����
						spi_flash_write_n(&uart_rev_struct->va_data[sync_flag+UART_REV_CMDLEN],temp,1024);

						//flash У��
						for(i=0;i<4;i++){
							for(j = 0; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++) {
								Uart_ReadBuffer[j] = 0x0;
							}
							SpiFlashRead(&Spi, temp+(i<<8), 256);
							for(j = 4; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++)
								checknum2 += Uart_ReadBuffer[j];
						}

						rewrite_flag =0 ;
						if(checknum1 == checknum2){
							if(data_fream_cnt == max_fream_num)								//��ʾ�Ѿ������һ������,����ͬ��ͷ����
								spi_flash_write_n(data_sync_save,StartAddr,256);			//UPDATE_FLASH_ADDR
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
							Uart_ReadBuffer[j] = 0x0;
						}
						SpiFlashRead(&Spi, temp_addr+(i<<8), 256);
						for(j = 4; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++)		//����У���2
							checknum2 += Uart_ReadBuffer[j];
						i++;
					}
				}
				else{//����128�ֽ�֡��У��
					for(j = 0; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++) {
						Uart_ReadBuffer[j] = 0x0;
					}
					SpiFlashRead(&Spi, temp_addr+sync_byte_num, data_len);
					for(j = 4; j < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;j++)			//����У���2
						checknum2 += Uart_ReadBuffer[j];
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

void  Update_Fun(u8 start_mod,u32 UPDATE_FLASH_ADDR) //start_mod = 1 ���� =0 ������
{
	u32 i;

	u8	timeout_3s  =0;//,start_mod=0;
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

		if(uart_rev_buff[0] == 'Y')		//����modem����
			start_mod = 1;
		else
			start_mod = 0;

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





int SpiFlashWrite_Cmd(XSpi *SpiPtr,u8 spi_cmd);
int SpiFlashWrite_control(u8 cmd);
//int SpiFlashBulkErase(XSpi *SpiPtr);
//int SpiFlashSectorErase(XSpi *SpiPtr, u8 cmd,u32 Addr);
int SpiFlashGetStatus(XSpi *SpiPtr);
static int SpiFlashWaitForFlashNotBusy(void);
void SpiHandler(void *CallBackRef, u32 StatusEvent, unsigned int ByteCount);
static int SetupInterruptSystem(XSpi *SpiPtr);

static XIntc InterruptController;

volatile static int TransferInProgress;

/*
 * The following variable tracks any errors that occur during interrupt
 * processing.
 */
int ErrorCount;
int  xspi_init(void)
{
	int Status;
//	u32 Index;
//	u32 Address;

	XSpi_Config *ConfigPtr;	/* Pointer to Configuration data */
		/*
	 * Initialize the SPI driver so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h.
	 */
	ConfigPtr = XSpi_LookupConfig(SPI_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_DEVICE_NOT_FOUND;
	}

	Status = XSpi_CfgInitialize(&Spi, ConfigPtr,
				  ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the SPI driver to the interrupt subsystem such that
	 * interrupts can occur. This function is application specific.
	 */
	Status = SetupInterruptSystem(&Spi);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the handler for the SPI that will be called from the interrupt
	 * context when an SPI status occurs, specify a pointer to the SPI
	 * driver instance as the callback reference so the handler is able to
	 * access the instance data.
	 */
	XSpi_SetStatusHandler(&Spi, &Spi, (XSpi_StatusHandler)SpiHandler);

	/*
	 * Set the SPI device as a master and in manual slave select mode such
	 * that the slave select signal does not toggle for every byte of a
	 * transfer, this must be done before the slave select is set.
	 */
	Status = XSpi_SetOptions(&Spi, XSP_MASTER_OPTION |
						XSP_MANUAL_SSELECT_OPTION);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Select the STM flash device on the SPI bus, so that it can be
	 * read and written using the SPI bus.
	 */
	Status = XSpi_SetSlaveSelect(&Spi, SPI_SELECT);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the SPI driver so that interrupts and the device are enabled.
	 */
	XSpi_Start(&Spi);

	return XST_SUCCESS;
}


/*****************************************************************************/
/**
*
* This function enables writes to the STM Serial Flash memory.
*
* @param	SpiPtr is a pointer to the instance of the Spi device.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None
*
******************************************************************************/
int SpiFlashWrite_Cmd(XSpi *SpiPtr,u8 spi_cmd)
{
	int Status;

	/*
	 * Prepare the WriteBuffer.
	 */
	Uart_WriteBuffer[BYTE1] = spi_cmd;

	/*
	 * Initiate the Transfer.
	 */
	TransferInProgress = TRUE;
	Status = XSpi_Transfer(SpiPtr, Uart_WriteBuffer, NULL,
				WRITE_ENABLE_BYTES);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till the Transfer is complete and check if there are any errors
	 * in the transaction..
	 */
	while(TransferInProgress);
	if(ErrorCount != 0) {
		ErrorCount = 0;
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function writes the data to the specified locations in the STM Serial
* Flash memory.
*
* @param	SpiPtr is a pointer to the instance of the Spi device.
* @param	Addr is the address in the Buffer, where to write the data.
* @param	ByteCount is the number of bytes to be written.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None
*
******************************************************************************/
//int SpiFlashWrite(XSpi *SpiPtr,u8 *wr_pdata,u32 Addr, u32 ByteCount)
int SpiFlashWrite(XSpi *SpiPtr,u32 Addr, u32 ByteCount)
{
	u32 Index;
	int Status;

	/*
	 * Prepare the WriteBuffer.
	 */
	Uart_WriteBuffer[BYTE1] = COMMAND_PAGEPROGRAM_WRITE;
	Uart_WriteBuffer[BYTE2] = (u8) (Addr >> 16);
	Uart_WriteBuffer[BYTE3] = (u8) (Addr >> 8);
	Uart_WriteBuffer[BYTE4] = (u8) Addr;


	/*
	 * Fill in the TEST data that is to be written into the STM Serial Flash
	 * device.
	 */
//	for(Index = 4; Index < ByteCount + READ_WRITE_EXTRA_BYTES;
//								Index++) {
//		WriteBuffer[Index] = *wr_pdata++;
//	}

	/*
	 * Initiate the Transfer.
	 */
	TransferInProgress = TRUE;
	Status = XSpi_Transfer(SpiPtr, Uart_WriteBuffer, NULL,
				(ByteCount + READ_WRITE_EXTRA_BYTES));
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till the Transfer is complete and check if there are any errors
	 * in the transaction..
	 */
	while(TransferInProgress);
	if(ErrorCount != 0) {
		ErrorCount = 0;
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function reads the data from the STM Serial Flash Memory
*
* @param	SpiPtr is a pointer to the instance of the Spi device.
* @param	Addr is the starting address in the Flash Memory from which the
*		data is to be read.
* @param	ByteCount is the number of bytes to be read.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None
*
******************************************************************************/
//int SpiFlashRead(XSpi *SpiPtr, u32 Addr, u32 ByteCount)
//{
//	int Status;
//
//	Status = SpiFlashWaitForFlashNotBusy();
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	/*
//	 * Prepare the WriteBuffer.
//	 */
//	WriteBuffer[BYTE1] = COMMAND_RANDOM_READ;
//	WriteBuffer[BYTE2] = (u8) (Addr >> 16);
//	WriteBuffer[BYTE3] = (u8) (Addr >> 8);
//	WriteBuffer[BYTE4] = (u8) Addr;
//
//	/*
//	 * Initiate the Transfer.
//	 */
//	TransferInProgress = TRUE;
//	Status = XSpi_Transfer( SpiPtr, WriteBuffer, ReadBuffer,
//				(ByteCount + READ_WRITE_EXTRA_BYTES));
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	/*
//	 * Wait till the Transfer is complete and check if there are any errors
//	 * in the transaction.
//	 */
//	while(TransferInProgress);
//	if(ErrorCount != 0) {
//		ErrorCount = 0;
//		return XST_FAILURE;
//	}
//
//	return XST_SUCCESS;
//}

/*****************************************************************************/
/**
*
* This function erases the entire contents of the STM Serial Flash device.
*
* @param	SpiPtr is a pointer to the instance of the Spi device.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		The erased bytes will read as 0xFF.
*
******************************************************************************/
//int SpiFlashBulkErase(XSpi *SpiPtr)
//{
//	int Status;
//
//	/*
//	 * Prepare the WriteBuffer.
//	 */
//	WriteBuffer[BYTE1] = COMMAND_BULK_ERASE;
//
//	/*
//	 * Initiate the Transfer.
//	 */
//	TransferInProgress = TRUE;
//	Status = XSpi_Transfer(SpiPtr, WriteBuffer, NULL,
//						BULK_ERASE_BYTES);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	/*
//	 * Wait till the Transfer is complete and check if there are any errors
//	 * in the transaction..
//	 */
//	while(TransferInProgress);
//	if(ErrorCount != 0) {
//		ErrorCount = 0;
//		return XST_FAILURE;
//	}
//
//	return XST_SUCCESS;
//}

/*****************************************************************************/
/**
*
* This function erases the contents of the specified Sector in the STM Serial
* Flash device.
*
* @param	SpiPtr is a pointer to the instance of the Spi device.
* @param	Addr is the address within a sector of the Buffer, which is to
*		be erased.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		The erased bytes will be read back as 0xFF.
*
******************************************************************************/
//int SpiFlashSectorErase(XSpi *SpiPtr,u8 cmd, u32 Addr)
//{
//	int Status;
//
//	/*
//	 * Prepare the WriteBuffer.
//	 */
//	WriteBuffer[BYTE1] = cmd;
//	WriteBuffer[BYTE2] = (u8) (Addr >> 16);
//	WriteBuffer[BYTE3] = (u8) (Addr >> 8);
//	WriteBuffer[BYTE4] = (u8) (Addr);
//
//	/*
//	 * Initiate the Transfer.
//	 */
//	TransferInProgress = TRUE;
//	Status = XSpi_Transfer(SpiPtr, WriteBuffer, NULL,
//					SECTOR_ERASE_BYTES);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	/*
//	 * Wait till the Transfer is complete and check if there are any errors
//	 * in the transaction..
//	 */
//	while(TransferInProgress);
//	if(ErrorCount != 0) {
//		ErrorCount = 0;
//		return XST_FAILURE;
//	}
//	/*
//	 * Wait till the Flash is not Busy.
//	 */
//	Status = SpiFlashWaitForFlashNotBusy();
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	return XST_SUCCESS;
//}

/*****************************************************************************/
/**
*
* This function reads the Status register of the STM Flash.
*
* @param	SpiPtr is a pointer to the instance of the Spi device.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		The status register content is stored at the second byte pointed
*		by the ReadBuffer.
*
******************************************************************************/
//int SpiFlashGetStatus(XSpi *SpiPtr)
//{
//	int Status;
//
//	/*
//	 * Prepare the Write Buffer.
//	 */
//	WriteBuffer[BYTE1] = COMMAND_STATUSREG_READ;
//
//	/*
//	 * Initiate the Transfer.
//	 */
//	TransferInProgress = TRUE;
//	Status = XSpi_Transfer(SpiPtr, WriteBuffer, ReadBuffer,
//						STATUS_READ_BYTES);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	/*
//	 * Wait till the Transfer is complete and check if there are any errors
//	 * in the transaction..
//	 */
//	while(TransferInProgress);
//	if(ErrorCount != 0) {
//		ErrorCount = 0;
//		return XST_FAILURE;
//	}
//
//	return XST_SUCCESS;
//}

/*****************************************************************************/
/**
*
* This function waits till the STM serial Flash is ready to accept next command.
*
* @param	None
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		This function reads the status register of the Buffer and waits
*.		till the WIP bit of the status register becomes 0.
*
******************************************************************************/
int SpiFlashWaitForFlashNotBusy(void)
{
	int Status;
	u8 StatusReg;

	while(1) {

		/*
		 * Get the Status Register.
		 */
		Status = SpiFlashGetStatus(&Spi);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Check if the flash is ready to accept the next command.
		 * If so break.
		 */
		StatusReg = Uart_ReadBuffer[1];
		if((StatusReg & FLASH_SR_IS_READY_MASK) == 0) {
			break;
		}
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function is the handler which performs processing for the SPI driver.
* It is called from an interrupt context such that the amount of processing
* performed should be minimized. It is called when a transfer of SPI data
* completes or an error occurs.
*
* This handler provides an example of how to handle SPI interrupts and
* is application specific.
*
* @param	CallBackRef is the upper layer callback reference passed back
*		when the callback function is invoked.
* @param	StatusEvent is the event that just occurred.
* @param	ByteCount is the number of bytes transferred up until the event
*		occurred.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
//void SpiHandler(void *CallBackRef, u32 StatusEvent, unsigned int ByteCount)
//{
//	/*
//	 * Indicate the transfer on the SPI bus is no longer in progress
//	 * regardless of the status event.
//	 */
//	TransferInProgress = FALSE;
//
//	/*
//	 * If the event was not transfer done, then track it as an error.
//	 */
//	if (StatusEvent != XST_SPI_TRANSFER_DONE) {
//		ErrorCount++;
//	}
//}

/*****************************************************************************/
/**
*
* This function setups the interrupt system such that interrupts can occur
* for the Spi device. This function is application specific since the actual
* system may or may not have an interrupt controller. The Spi device could be
* directly connected to a processor without an interrupt controller.  The
* user should modify this function to fit the application.
*
* @param	SpiPtr is a pointer to the instance of the Spi device.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None
*
******************************************************************************/
static int SetupInterruptSystem(XSpi *SpiPtr)
{

	int Status;

	/*
	 * Initialize the interrupt controller driver so that
	 * it's ready to use, specify the device ID that is generated in
	 * xparameters.h
	 */
	Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect a device driver handler that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the
	 * specific interrupt processing for the device
	 */
	Status = XIntc_Connect(&InterruptController,
				SPI_INTR_ID,
				(XInterruptHandler)XSpi_InterruptHandler,
				(void *)SpiPtr);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts, specific real mode so that
	 * the SPI can cause interrupts thru the interrupt controller.
	 */
	Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupt for the SPI.
	 */
	XIntc_Enable(&InterruptController, SPI_INTR_ID);


	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XIntc_InterruptHandler,
				&InterruptController);

	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int SpiFlashWrite_control(u8 cmd)
{
	int Status;
	/*
	 * Perform the Write Enable operation.
	 */
	Status = SpiFlashWrite_Cmd(&Spi,cmd);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till the Flash is not Busy.
	 */
	Status = SpiFlashWaitForFlashNotBusy();
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

//int spi_test(void)
//{
//	int Status,Index;
//	/*
//	 * Write the data to the Page.
//	 * Perform the Write operation.
//	 */
//	SpiFlashWrite_control(COMMAND_WRITE_ENABLE);
//	SpiFlashSectorErase(&Spi,COMMAND_SUB_4KB_ERASE, 0);
//
//	for(Index = 4; Index < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;
//		Index++) {
//		WriteBuffer[Index] = (u8)Index;
//	}
//
//	SpiFlashWrite_control(COMMAND_WRITE_ENABLE);
//
//	Status = SpiFlashWrite(&Spi, 0, PAGE_SIZE);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//
//	for(Index = 0; Index < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;
//		Index++) {
//		ReadBuffer[Index] = 0x0;
//	}
//
//	Status = SpiFlashRead(&Spi, 0, PAGE_SIZE);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	for(Index = 4; Index < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;
//		Index++) {
//		WriteBuffer[Index] = 96+(u8)Index;
//	}
//
//	SpiFlashWrite_control(COMMAND_WRITE_ENABLE);
//	Status = SpiFlashWrite(&Spi,256, PAGE_SIZE);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//
//	for(Index = 0; Index < PAGE_SIZE + READ_WRITE_EXTRA_BYTES;
//		Index++) {
//		ReadBuffer[Index] = 0x0;
//	}
//
//	Status = SpiFlashRead(&Spi, 256, PAGE_SIZE);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	return XST_SUCCESS;
//}

//��Сд��Ԫ256BYTE
int	spi_flash_write_n(u8 *wr_data,u32 wr_addr,u16 byte_num)
{
	int Status;
	int addr_start=0;

	u16 Index,i,cir_wr_num=0;
	u16 rem_byte=0,wr_byte=0;

	cir_wr_num  = byte_num/256;
	rem_byte	= byte_num%256;
	if(rem_byte!=0)		 //����дѭ������
		cir_wr_num = cir_wr_num+1;

	addr_start = wr_addr;
	for(i=0;i<cir_wr_num;i++)
	{
		//����д���ֽ���
		if((rem_byte != 0)&&(i==cir_wr_num-1))
			wr_byte = rem_byte;
		else
			wr_byte = PAGE_SIZE;
		//ÿ��ֻ��д256�ֽ�ҳ
		for(Index = 4; Index < wr_byte + READ_WRITE_EXTRA_BYTES;
			Index++) {
			Uart_WriteBuffer[Index] = *wr_data++;
		}


		SpiFlashWrite_control(COMMAND_WRITE_ENABLE);

		Status = SpiFlashWrite(&Spi, addr_start, wr_byte);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Wait till the Flash is not Busy.
		 */
		Status = SpiFlashWaitForFlashNotBusy();
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
		addr_start = addr_start + 256;
	}
	return XST_SUCCESS;
}


