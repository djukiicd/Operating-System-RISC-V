#ifndef OS_PROJECT_BASE_MEMORYALLOCATOR_H
#define OS_PROJECT_BASE_MEMORYALLOCATOR_H

#include "../lib/hw.h"

//slobodan blok memorije
struct FreeBlock{
    FreeBlock*  next;
    size_t size;
};

class MemoryAllocator {

public:

    static MemoryAllocator& getInstance();
    static void init();
    static void* kmem_alloc(size_t size);  //0x01
    static int kmem_free(void* ptr); //0x02

private:

    MemoryAllocator(){}
    ~MemoryAllocator(){}
    MemoryAllocator(const MemoryAllocator& obj) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

    static FreeBlock* freeBlockHead;

};



#endif //OS_PROJECT_BASE_MEMORYALLOCATOR_H

