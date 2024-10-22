#include "console_colour.h"
/************************************************************************************************/

void printf_usb(char *s)
{
	while (*s)
	{
		XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR,*s);
		while (XUartLite_IsTransmitFull(XPAR_UARTLITE_0_BASEADDR) == true) {
		};
		s++;
	}
	return;
}
/************************************************************************************************/
void printc_usb(char s)
{

	XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR,s);
	while (XUartLite_IsTransmitFull(XPAR_UARTLITE_0_BASEADDR) == true) {
	};

}
/************************************************************************************************/
int read_usb_timeout(int timeout)
{
	int rc = -1;

	while (XUartLite_IsTransmitFull(XPAR_UARTLITE_0_BASEADDR) && timeout)
	{
		timeout--;
	}

    if (timeout) rc = rc_byte_nb(XPAR_UARTLITE_0_BASEADDR);

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
