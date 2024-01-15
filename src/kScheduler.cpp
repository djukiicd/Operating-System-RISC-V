#include "../h/kScheduler.hpp"

List<kThread> kScheduler::readyProcessQueue;

//ne zaboravi idle nit da ubacis na pocetku
kThread* kScheduler::get()
{
    return readyProcessQueue.removeFirst();
}

void kScheduler::put(kThread* thr)
{

    readyProcessQueue.addLast(thr);
}
