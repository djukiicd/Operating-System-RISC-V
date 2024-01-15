#include "../h/kThread.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

kThread* kThread::running = nullptr;

kThread* kThread::createProcess(Body body, void* args, void* stack_space) {
    printString("3 arg\n");
    return new kThread(body,args, stack_space); //ne mogu ovako da ga kreiram, al to cu popraviti sledece

}

kThread* kThread::createProcess(Body body, void* args) {
    printString("2 arg\n");
    return new kThread(body,args); //ne mogu ovako da ga kreiram, al to cu popraviti sledece
}
kThread* kThread::createProcess(Body body) {
    printString("1 arg\n");
        return new kThread(body); //ne mogu ovako da ga kreiram, al to cu popraviti sledece

}

void kThread::yield()
{
    //registre push-ujem na stek u prekidnoj rutini
    //ako testiras bez sistemskog pzoiva a to radis ne ostavljas nista na stek
    Riscv::pushRegisters();
    kThread::dispatch();
    Riscv::popRegisters();
    //registre pop-ujem sa steka  u prekidnoj rutini
}

void kThread::dispatch()
{

    kThread *old = running;
    if (!old->isFinished()) { kScheduler::put(old); }
    running = kScheduler::get();

    kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {

    //Riscv::popSppSpie();
  //  printInteger(100);
    running->body(running->arg);
//    kthread_exit();
}

void kThread::kthread_exit() {

}

