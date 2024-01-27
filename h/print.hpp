#ifndef OPERATIVNI_SISTEMI_PRINT_HPP
#define OPERATIVNI_SISTEMI_PRINT_HPP

#include "../lib/hw.h"

extern void kprintString(char const *string);

extern void kprintInteger(int integer); //ne radi za negativne


extern void kprintHex(uint64 integer);

#endif
