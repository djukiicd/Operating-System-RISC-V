//
// Created by marko on 20.4.22..
//

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    while (*string != '\0')
    {
        __putc(*string);
        string++;
    }
}

void printInteger(uint64 integer)
{
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (integer < 0)
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    }

    i = 0;
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);

    if (neg==1)
        buf[i++] = '-';

    while (--i >= 0)
        __putc(buf[i]);
}


void printHex(uint64 integer)
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