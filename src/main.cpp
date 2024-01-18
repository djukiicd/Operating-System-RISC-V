#include"../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/kThread.hpp"
#include "../h/workers.hpp"

extern "C" { extern int __supervisorTrap;}

int main()
{

    //mskiranje prekida???
   __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE); jel ovo za timer
    //__asm__ volatile  ("ecall");

//      int ret = -1;
//    thread_t handleT = nullptr;
//    sem_t handleS = nullptr;
//    sem_t id = nullptr;
//    unsigned int init = 0;
//    unsigned  long time_t = 0;
//    char c = '0';
//
    //printInteger(-120);
//    int  ret = test(1,2,3,4);
//    printInteger(ret);
//    printString(" test done\n");

    uint64  size = 4096;
    void* ptrA = mem_alloc(size);
    uint64 intPtr = (uint64)(&ptrA);
    printHex(intPtr);
    printString(" mem_alloc done\n");

    void* ptrB = mem_alloc(size);
    intPtr = (uint64)(&ptrB);
    printHex(intPtr);
    printString(" mem_alloc done\n");

//    ret = mem_free(ptr);
//    printInteger(ret);
//    printString(" mem_free done\n");

    kThread* threads[3];

    int retMain = thread_create(&threads[0], nullptr, nullptr);
    printInteger(retMain);
    printString("\n");

    kThread::running = threads[0];

    int retA = thread_create(&threads[1], workerBodyA, nullptr);
    printInteger(retA);
    printString("\n");
    int retB = thread_create(&threads[2], workerBodyB, nullptr);
    printInteger(retB);
    printString("\n");


    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    {
        thread_dispatch();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }

    printString("Main exit\n");
    return 0;

}
