//
// Created by marko on 20.4.22..
//

//#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/kThread.hpp"
#include "../h/workers.hpp"

extern "C" { extern int __supervisorTrap;}

int main()
{


    __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE); jel ovo za timer
    //__asm__ volatile  ("ecall");

      int ret = -1;
//    thread_t handleT = nullptr;
//    sem_t handleS = nullptr;
//    sem_t id = nullptr;
//    unsigned int init = 0;
//    unsigned  long time_t = 0;
//    char c = '0';
//
    //printInteger(-120);
    ret = test(13);
    printInteger(ret);
    printString(" test done\n");

    void* ptr = mem_alloc(0);
    uint64 intPtr = (uint64)(ptr);
    printHex(intPtr);
    printString(" mem_alloc done\n");

    ret = mem_free(ptr);
    printInteger(ret);
    printString(" mem_free done\n");

    kThread* threads[3];
    threads[0] = kThread::createProcess(nullptr);
    kThread::running = threads[0];

    threads[1] = kThread::createProcess(workerBodyA);
    printString("CoroutineA created\n");
    threads[2] = kThread::createProcess(workerBodyB);
    printString("CoroutineB created\n");

    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    {
        kThread::yield();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }

    printString("Main exit\n");
    return 0;

//    CCB *coroutines[3];
//
//    coroutines[0] = CCB::createCoroutine(nullptr);
//    CCB::running = coroutines[0];
//
//    coroutines[1] = CCB::createCoroutine(workerBodyA);
//    printString("CoroutineA created\n");
//    coroutines[2] = CCB::createCoroutine(workerBodyB);
//    printString("CoroutineB created\n");
//
//    while (!(coroutines[1]->isFinished() &&
//             coroutines[2]->isFinished()))
//    {
//        CCB::yield();
//    }
//
//    for (auto &coroutine: coroutines)
//    {
//        delete coroutine;
//    }
//    printString("Finished\n");
//
//    return 0;
}
