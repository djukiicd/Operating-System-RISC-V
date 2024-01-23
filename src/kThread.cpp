#include "../h/kThread.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/kScheduler.hpp"
#include "../lib/mem.h"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
kThread* kThread::running = nullptr;

kThread::kThread(Body body, void* arg, void* stack_space) :
        body(body),
        arg(arg),
        stack(body != nullptr ? (uint64*)stack_space - DEFAULT_STACK_SIZE + 1 : nullptr),
        context({body!=nullptr?(uint64)&threadWrapper : 0,stack != nullptr ? (uint64)stack : 0}),
        finished(false)
    {

        headSuspended = nullptr;
        tailSuspended = nullptr;
        nextReadyProccess = nullptr;
        nextBlockedProccess = nullptr;
        nextSuspendedProccess = nullptr;
        regularUnblock = true;

        if(body != nullptr) { kScheduler::putReady(this);}
//        printString("Kreirana nit\n");

    }

kThread* kThread::createProcess(Body body, void* args, void* stack_space) {

    return new kThread(body,args, stack_space);

}

void kThread::yield()
{
    Riscv::pushRegisters();
    dispatch();
    Riscv::popRegisters();

}

void kThread::dispatch() //skocio iz sistemskog preko syscall_a
{
    kThread *old = running;
    if (!old->isFinished()) {
        kScheduler::putReady(old);
    }
        running = kScheduler::getReady();
        if(!running) { printString("Scheduler nema sta da uzme!");}
        kThread::contextSwitch(&old->context, &running->context);

}


void kThread::threadWrapper(){

    Riscv::popSppSpie();
    running->body(running->arg);
    thread_dispatch();
}

void kThread::kThreadExit() { //skocio iz sistemskog

    running->setFinished(true);
    running->unblockSuspended();
    dispatch();

}

void  kThread::kThreadJoin(kThread* thr) { //ovde je skocio iz sistemskog

    Riscv::pushRegisters();
    kThread* old = running;
    kScheduler::putSuspended(thr, old);
    running = kScheduler::getReady();
    kThread::contextSwitch(&old->context, &running->context);
    Riscv::popRegisters();
}

void kThread::unblockSuspended() {

    kThread* tmp;
    while(running->headSuspended)
    {
        tmp = kScheduler::getSuspended(running);
        kScheduler::putReady(tmp);

    }
}
