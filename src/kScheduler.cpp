#include "../h/kScheduler.hpp"
#include "../h/print.hpp"

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
//    kThread* ret;
//    //ako je idle i ako sledeca ne postoji vrati je, a ko je idle i sledeca postoji izvadi je i stavi je na kraj reda i vrati tu sledecu
//    kThread* tmp = headReady;
//    if(headReady) headReady = headReady->nextReadyProccess;
//    if((tmp == thrIdle && !headReady) || tmp!=thrIdle)
//    ret = tmp;
//    else
//    {
//        //glava postoji i pokazuje na ono sto treba da vratimo
//        ret = headReady;
//        putReady(thrIdle);
//        headReady = headReady->nextReadyProccess;
//
//    }
//    return ret;
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



