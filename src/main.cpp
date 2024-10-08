#include"../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/kScheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/userMain.hpp"

extern "C" { extern int __supervisorTrap;}

void userMainWrapper(void*)
{
    //kprintString("usao u wrapper\n");
    userMain();
}

int main()
{
    MemoryAllocator::init();

   __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE); //maskiranje spoljasnjih prekida setuje ga na 1



    kThread* mThr;
    thread_create(&mThr, nullptr, nullptr);

    kThread::running = mThr;


    kThread* t1;
    thread_create(&t1,userMainWrapper , nullptr);

    while (!t1->isFinished())
    {
        thread_dispatch();
    }
    //thread_join(t1);

    delete t1;
    delete mThr;

    return 0;
//
//    uint64  size = 4096;
//    void* ptrA = mem_alloc(size);
//    uint64 intPtr = (uint64)(&ptrA);
//    kprintHex(intPtr);
//    kprintString(" mem_alloc done\n");
//
//    void* ptrB = mem_alloc(size);
//    intPtr = (uint64)(&ptrB);
//    kprintHex(intPtr);
//    kprintString(" mem_alloc done\n");
//
//
////pakovanje argumenata fje
//    kThread* threads[4];
//
//    int retMain = thread_create(&threads[0], nullptr, nullptr);
//    kprintInteger(retMain);
//    kprintString("\n");
//     //kScheduler::init();
//    kThread::running = threads[0];
//
//
//
////sta se desava kad je main blokiran na semaforu???
//    kSemaphore* sem1;
//    int retSem = sem_open(&sem1,0);
//    kprintInteger(retSem);
//    kprintString("\n");
//
//    arguments* argumentsD = new arguments();
//    argumentsD->sem = sem1;
//    kprintHex((uint64)argumentsD->sem);
//
//    int retE = thread_create(&threads[1], workerBodyE, (void*)argumentsD);
//    kprintInteger(retE);
//    kprintString("\n");
//
//
//    int retC = thread_create(&threads[2], workerBodyC, (void*)argumentsD);
//    kprintInteger(retC);
//    kprintString("\n");
//
//    int retD = thread_create(&threads[3], workerBodyD, static_cast<void*>(argumentsD));
//    kprintInteger(retD);
//    kprintString("\n");
//
////    //thread_join(threads[1]);
////
//    uint64 i =0;
//    while(i<7)
//    {
//        kprintString("M");
//        i++;
//        if(i == 4)
//            sem_close(sem1);
//           // sem_signal(sem1);
//        thread_dispatch();
//
//    }
//
//
//    for (auto &thread: threads)
//    {
//        delete thread;
//    }
//
////    ret = mem_free(ptrA);
////    ret = mem_free(ptrB); //da li ono brisanje steka iz ~kThread() oslobadja ovaj prostor?
////    kprintString(" mem_free done\n");
//
////    //TEST PUTC() I GETC()
//////    putc('A');
//////
//////    kprintString("\nUnesi char: ");
//////    char m = getc();
//////    kprintString("\n");
//////    putc(m);
////
//    kprintString("\nMain exit\n");
//    return 0;

}
