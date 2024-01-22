//
// Created by marko on 20.4.22..
//

#include"../lib/hw.h"
#include "../h/print.hpp"
#include "../h/kThread.hpp"
#include "../h/syscall_c.hpp"
#include "../h/workers.hpp"

static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    if (n % 4 == 0) thread_dispatch();
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void *)
{
    uint8 i = 0;
    for (; i < 3; i++)
    {
        printString("A: i=");
        printInteger(i);
        printString("\n");
    }

    printString("A: yield\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("A: t1=");
    printInteger(t1);
    printString("\n");

    uint64 result = fibonacci(20);
    printString("A: fibonaci=");
    printInteger(result);
    printString("\n");

    for (; i < 6; i++)
    {
        printString("A: i=");
        printInteger(i);
        printString("\n");
    }

//    kThread::running->setFinished(true);
//    thread_dispatch();

}

void workerBodyB(void*)
{
    uint8 i = 10;
    for (; i < 13; i++)
    {
        printString("B: i=");
        printInteger(i);
        printString("\n");
    }

    printString("B: yield\n");
    __asm__ ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacci(23);
    printString("A: fibonaci=");
    printInteger(result);
    printString("\n");

    for (; i < 16; i++)
    {
        printString("B: i=");
        printInteger(i);
        printString("\n");
    }
//    kThread::running->setFinished(true);
//    thread_dispatch();

}

void workerBodyC(void* args) //ovde je skocio iz korisnickog
{
    uint8 i = 0;
    arguments* argsD = static_cast<arguments*>(args);
    kSemaphore* sem = argsD->sem;
    printString("\nsem wait C ");
    sem_wait(sem);
    while(i<3)
    {
        printString("C\n");
        thread_dispatch();
        i++;
    }

}

void workerBodyD(void* args)
{
    uint8 i = 0;
    arguments* argsD = static_cast<arguments*>(args);
    kSemaphore* sem = argsD->sem;
    while(i<4)
    {
        printString("D\n");
        thread_dispatch();
        i++;
   }
    sem_signal(sem);

}


void workerBodyE(void* args)
{
    uint8 i = 0;
    arguments* argsD = static_cast<arguments*>(args);
    kSemaphore* sem = argsD->sem;
    printString("\nsem wait E ");
   int ret = sem_wait(sem);
    printHex(ret);
    printString("<- E waitRet\n");

    while(i<5)
    {
        printString("E\n");
        i++;
    }

}

