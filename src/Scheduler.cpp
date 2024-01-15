#include "../h/Scheduler.hpp"

List<Thread> Scheduler::readyProcessQueue;

//ne zaboravi idle nit da ubacis na pocetku
Thread* Scheduler::get()
{
    return readyProcessQueue.removeFirst();
}

void Scheduler::put(Thread* thr)
{

    readyProcessQueue.addLast(thr);
}
