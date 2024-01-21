#include "../h/kThread.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/kScheduler.hpp"
#include "../lib/mem.h"

kThread* kThread::running = nullptr;

kThread::kThread(Body body, void* arg, void* stack_space) :
        body(body),
        arg(arg),
        stack(body != nullptr ? (uint64*)stack_space - DEFAULT_STACK_SIZE + 1 : nullptr),
        context({body!=nullptr?(uint64)&threadWrapper : 0,stack != nullptr ? (uint64)stack : 0}),
        finished(false)
    {
        if(body != nullptr) { kScheduler::putReady(this);}
        headSuspended = nullptr;
        tailSuspended = nullptr;
        nextReadyProccess = nullptr;
        nextBlockedProccess = nullptr;
        nextSuspendedProccess = nullptr;

    }

kThread* kThread::createProcess(Body body, void* args, void* stack_space) {

    return new kThread(body,args, stack_space);

}

void kThread::yield()
{
    Riscv::pushRegisters();
    kThread::dispatch();
    Riscv::popRegisters();

}

void kThread::dispatch()
{
    kThread *old = running;
    if (!old->isFinished()) {
//        printHex(reinterpret_cast<uint64>(old));
//        printString("nije gotova");
        kScheduler::putReady(old);
    }
        running = kScheduler::getReady();

        kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {

    Riscv::popSppSpie();
    running->body(running->arg);
    running->kThreadExit();
}

void kThread::kThreadExit() {

    running->setFinished(true);
    running->unblockSuspended();
    yield();

}

void  kThread::kThreadJoin(kThread* thr) {

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
