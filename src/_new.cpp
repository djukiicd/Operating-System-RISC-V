#include "../h/print.hpp"
#include "../lib/mem.h"
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    return MemoryAllocator::kmem_alloc(n);
    //return __mem_alloc(n);
}

void *operator new[](size_t n)
{

    return MemoryAllocator::kmem_alloc(n);
  //  return __mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    MemoryAllocator::kmem_free(p);
//    __mem_free(p);
}

void operator delete[](void *p) noexcept
{

    MemoryAllocator::kmem_free(p);
//    __mem_free(p);
}