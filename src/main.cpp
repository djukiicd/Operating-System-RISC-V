#include"../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/kThread.hpp"
#include "../h/workers.hpp"
#include "../h/kScheduler.hpp"

extern "C" { extern int __supervisorTrap;}

int main()
{

    //mskiranje prekida???
   __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
//    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE); jel ovo za timer

//    Thread* t1 = new Thread(userMain, nullptr); //prob je sto userMain ne prima argumente pa moram da je upakujem
//    t1->start();


    uint64  size = 4096;
    void* ptrA = mem_alloc(size);
    uint64 intPtr = (uint64)(&ptrA);
    printHex(intPtr);
    printString(" mem_alloc done\n");

    void* ptrB = mem_alloc(size);
    intPtr = (uint64)(&ptrB);
    printHex(intPtr);
    printString(" mem_alloc done\n");

//pakovanje argumenata fje
    kThread* threads[4];

    int retMain = thread_create(&threads[0], nullptr, nullptr);
    printInteger(retMain);
    printString("\n");
     //kScheduler::init();
    kThread::running = threads[0];


    int retA = thread_create(&threads[1], workerBodyC, nullptr);
    printInteger(retA);
    printString("\n");

    thread_join(threads[1]);

//    int retB = thread_create(&threads[2], workerBodyD, nullptr);
//    printInteger(retB);
//    printString("\n");
//
//
//
//    while (!(threads[2]->isFinished()))
//    {
//        thread_dispatch();
//
//    }
//


    for (auto &thread: threads)
    {
        delete thread;
    }

//    ret = mem_free(ptrA);
//    ret = mem_free(ptrB); //da li ono brisanje steka iz ~kThread() oslobadja ovaj prostor?
//    printString(" mem_free done\n");

    //TEST PUTC() I GETC()
//    putc('A');
//
//    printString("\nUnesi char: ");
//    char m = getc();
//    printString("\n");
//    putc(m);

    printString("\nMain exit\n");
    return 0;

}
