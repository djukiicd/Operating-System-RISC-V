#include "../h/kScheduler.hpp"

kThread* kScheduler::headReady = nullptr;
kThread* kScheduler::tailReady = nullptr;
//ne zaboravi idle nit da ubacis na pocetku
kThread* kScheduler::get()
{

    kThread* tmp = headReady;
   if(headReady) headReady = headReady->nextReadyProccess;
    return tmp;

}

void kScheduler::put(kThread* thr)
{

    if(!headReady) headReady = thr;

    if(tailReady)
    {
        tailReady->nextReadyProccess = thr;
    }

     tailReady = thr;

}
