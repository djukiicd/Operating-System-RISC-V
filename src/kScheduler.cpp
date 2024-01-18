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

    for(int i = 0; i<MAX_SEMAPHORES;i++)
    {
        if( semaphoreArray[i].sem == sem)
        {
            kThread* tmp = semaphoreArray[i].headBlocked;
            if(semaphoreArray[i].headBlocked) semaphoreArray[i].headBlocked = semaphoreArray[i].headBlocked->nextBlockedProccess;
            return tmp;
        }
    }

    return nullptr;
}

void kScheduler::putBlocked(kThread *thr, kSemaphore *sem) {


    for(int i = 0; i<MAX_SEMAPHORES;i++)
    {
        if(semaphoreArray[i].sem == sem)
        {
            if(!semaphoreArray[i].headBlocked) semaphoreArray[i].headBlocked = thr;
            if(semaphoreArray[i].tailBlocked)
            {
                semaphoreArray[i].tailBlocked->nextBlockedProccess = thr;
            }
            semaphoreArray[i].tailBlocked = thr;
            return;
        }
    }
}


