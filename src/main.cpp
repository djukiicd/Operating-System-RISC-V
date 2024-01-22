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



//sta se desava kad je main blokiran na semaforu???
    kSemaphore* sem1;
    int retSem = sem_open(&sem1,0);
    printInteger(retSem);
    printString("\n");

    arguments* argumentsD = new arguments();
    argumentsD->sem = sem1;
    printHex((uint64)argumentsD->sem);

    int retE = thread_create(&threads[1], workerBodyE, (void*)argumentsD);
    printInteger(retE);
    printString("\n");


    int retC = thread_create(&threads[2], workerBodyC, (void*)argumentsD);
    printInteger(retC);
    printString("\n");

    int retD = thread_create(&threads[3], workerBodyD, static_cast<void*>(argumentsD));
    printInteger(retD);
    printString("\n");

    //thread_join(threads[1]);

    uint64 i =0;
    while(i<7)
    {
        printString("M");
        i++;
        if(i == 4)
            sem_close(sem1);
           // sem_signal(sem1);
        thread_dispatch();

    }


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
