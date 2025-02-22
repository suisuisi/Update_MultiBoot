#include "uart.h"


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
 		if (i==0)
 		i=-1;
 		else i=(i-2);
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
