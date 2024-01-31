#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h//MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n){
        return mem_alloc(n);
//    return MemoryAllocator::kmem_alloc(n);
}

void *operator new[](size_t n){
    return mem_alloc(n);
//    return MemoryAllocator::kmem_alloc(n);

}

void operator delete(void *p) noexcept{
        mem_free(p);
//        MemoryAllocator::kmem_free(p);
}


void operator delete[](void *p) noexcept{
        mem_free(p);
//    MemoryAllocator::kmem_free(p);

}