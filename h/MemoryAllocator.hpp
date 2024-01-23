#ifndef OPERATIVNI_SISTEMI_MEMORYALLOCATOR_HPP
#define OPERATIVNI_SISTEMI_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

//slobodan blok memorije
struct FreeBlock{
    FreeBlock*  next;
    size_t size;
};

class MemoryAllocator {

public:

    static void init();
    static void* kmem_alloc(size_t size);  //0x01
    static int kmem_free(void* ptr); //0x02

private:


    static MemoryAllocator instance;
    static FreeBlock* freeBlockHead;

};



#endif

