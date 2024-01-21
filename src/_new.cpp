#include "../h/print.hpp"
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    //printString("\nspec new\n");
    return __mem_alloc(n);
}

void *operator new[](size_t n)
{
    //printString("\nspec new\n");
    return __mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    //printString("\nspec delete\n");
    __mem_free(p);
}

void operator delete[](void *p) noexcept
{
    //printString("\nspec delete\n");
    __mem_free(p);
}