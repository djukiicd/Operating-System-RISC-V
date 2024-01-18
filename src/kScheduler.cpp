#include "../h/kScheduler.hpp"

kThread* kScheduler::headReady = nullptr;
kThread* kScheduler::tailReady = nullptr;

//ne zaboravi idle nit da ubacis na pocetku
kThread* kScheduler::getReady(){

    kThread* tmp = headReady;
    if(headReady) headReady = headReady->nextReadyProccess;
    return tmp;
}

void kScheduler::putReady(kThread *thr){

    if(!headReady) headReady = thr;
    if(tailReady)
    {
        tailReady->nextReadyProccess = thr;
    }
    tailReady = thr;
}

kThread* kScheduler::getBlocked(kSemaphore *sem) {

    kThread* tmp = sem->headBlocked;
    if(sem->headBlocked) sem->headBlocked = sem->headBlocked->nextBlockedProccess;
    return tmp;
}

void kScheduler::putBlocked(kThread *thr, kSemaphore *sem) {

    if(!sem->headBlocked) sem->headBlocked = thr;
    if(sem->tailBlocked)
    {
        sem->tailBlocked->nextBlockedProccess = thr;
    }
    sem->tailBlocked = thr;
}


kThread* kScheduler::getSuspended(kThread *thr)  {

    kThread* tmp = thr->headSuspended;
    if(thr->headSuspended) thr->headSuspended = thr->headSuspended->nextSuspendedProccess;
    return tmp;
}

void kScheduler::putSuspended(kThread *thr, kThread* thrSus) {

    if(!thr->headSuspended) thr->headSuspended = thrSus;
    if(thr->tailSuspended)
    {
        thr->tailSuspended->nextSuspendedProccess = thrSus;
    }
    thr->tailSuspended = thrSus;
}



