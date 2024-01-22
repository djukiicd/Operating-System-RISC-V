#ifndef OPERATIVNI_SISTEMI_syscall_cpp_hpp_WORKERS_HPP
#define OPERATIVNI_SISTEMI_syscall_cpp_hpp_WORKERS_HPP
#include "../h/kSemaphore.hpp"

extern void workerBodyA(void *);

extern void workerBodyB(void *);

extern void workerBodyC(void *);

extern void workerBodyD(void *);

extern void workerBodyE(void *);

struct  arguments{
    kSemaphore* sem;
    uint64 address;
    arguments():sem(nullptr),address(0){}
};

extern void idle(void *);

#endif
