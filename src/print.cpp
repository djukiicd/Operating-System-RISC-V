#include "../h/print.hpp"
#include "../lib/console.h"

void kprintString(char const *string)
{
    while (*string != '\0')
    {
        __putc(*string);
        string++;
    }
}


void kprintInteger(int integer)
{
    static char digits[] = "0123456789";
    char buf[17];  // Increase buffer size to accommodate the sign
    int i = 0;
    bool neg = false;
    int x = integer;

    // Handle the sign
    if (x < 0)
    {
        //buf[i++] = '-';
        neg = true;
        x = -x;
    }
    else if (x == 0)
    {
        // Special case for zero
        __putc('0');
        return;
    }

    // Convert the absolute value to string
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);

    // Print the string in reverse order
    if(neg) __putc('-');
    while (--i >= 0)
        __putc(buf[i]);
}

void kprintHex(uint64 integer)
{
    static char hexDigits[] = "0123456789ABCDEF";
    char hexChars[17];
    int index = 0;

    while (integer > 0) {
        uint64 remainder = integer % 16;
        hexChars[index++] = hexDigits[remainder];
        integer /= 16;
    }

    __putc('0');
    __putc('x');
    // Print the hexadecimal characters in reverse order
    while (--index >= 0) {
        __putc(hexChars[index]);
    }
}