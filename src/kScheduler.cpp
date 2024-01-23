#include "../h/kScheduler.hpp"
#include "../h/print.hpp"
#include "../lib/mem.h"
#include "../test/printing.hpp"

kThread* kScheduler::headReady = nullptr;
kThread* kScheduler::tailReady = nullptr;
kThread* kScheduler::thrIdle = nullptr;


void kScheduler::init() {

    printString("Inicijalizovan\n");
    thrIdle = new kThread(idle,nullptr, nullptr); //da li moram stek za nju da org
    putReady(thrIdle);
}
void kScheduler::idle(void*) {
    uint8 i = 0;
    while(1)
    {   i++;
        printString("\nidle\n");
        kThread::yield();
    }
}
kThread* kScheduler::getReady(){

    if(!headReady) return nullptr;

    kThread* tmp = headReady;
    headReady = headReady->nextReadyProccess;
    tmp->nextReadyProccess = nullptr;
    if(!headReady) tailReady = nullptr;
//    printString("\nGET: ");
//    printString("\nheadReady:");
//   if(headReady) printHex(reinterpret_cast<uint64>(headReady));
//    printString("\n tailReady:");
//    if(tailReady)printHex(reinterpret_cast<uint64>(tailReady));
//    printString("\n");
//    printHex(reinterpret_cast<uint64>(tmp));
//    printString("\n");
    return tmp;
}

void kScheduler::putReady(kThread *thr){


    if(tailReady) //postoji i head
    {

        tailReady->nextReadyProccess = thr;
    }
    else
    {
        headReady = thr;
    }

    tailReady = thr;
    thr->nextReadyProccess = nullptr;
//    printString("\nPUT: ");
//    printHex(reinterpret_cast<uint64>(thr));
//    printString("\nheadReady:");
//    printHex(reinterpret_cast<uint64>(headReady));
//    printString("\n tailReady:");
//    printHex(reinterpret_cast<uint64>(tailReady));
//    printString("\n");
}

kThread* kScheduler::getBlocked(kSemaphore *sem) {

    if(!sem->headBlocked) return nullptr;
    kThread* tmp = sem->headBlocked;
    sem->headBlocked = sem->headBlocked->nextBlockedProccess;
    tmp->nextBlockedProccess = nullptr;
    if(!sem->headBlocked) sem->tailBlocked = nullptr;
    return tmp;
}

void kScheduler::putBlocked(kThread *thr, kSemaphore *sem) {

    if(sem->tailBlocked)
    {
        sem->tailBlocked->nextBlockedProccess = thr;
    }
    else
    {
        sem->headBlocked = thr;
    }
    sem->tailBlocked = thr;

    thr->nextBlockedProccess = nullptr;
}


kThread* kScheduler::getSuspended(kThread *thr)  {

    if(!thr->headSuspended) return nullptr;
    kThread* tmp = thr->headSuspended;
    thr->headSuspended = thr->headSuspended->nextSuspendedProccess;
    tmp->nextSuspendedProccess = nullptr;
    if(!thr->headSuspended) thr->tailSuspended = nullptr;
    return tmp;
}

void kScheduler::putSuspended(kThread *thr, kThread* thrSus) {

    if(thr->tailSuspended)
    {
        printString("\nye\n");
        thr->tailSuspended->nextSuspendedProccess = thrSus;
    }
    else
    {
        thr->headSuspended = thrSus;
    }
    thr->tailSuspended = thrSus;
    thrSus->nextSuspendedProccess = nullptr;
}



