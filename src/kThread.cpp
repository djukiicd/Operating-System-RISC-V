#include "../h/kThread.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/kScheduler.hpp"
#include "../h/syscall_c.hpp"
kThread* kThread::running = nullptr;

kThread::kThread(Body body, void* arg, void* stack_space) :
        body(body),
        arg(arg),
        stack(body != nullptr ? (uint64*)stack_space - DEFAULT_STACK_SIZE + 1 : nullptr),
        context({body!=nullptr?(uint64)&threadWrapper : 0,stack_space != nullptr ? (uint64)stack_space : 0}),
        finished(false)
    {

        headSuspended = nullptr;
        tailSuspended = nullptr;
        nextReadyProccess = nullptr;
        nextBlockedProccess = nullptr;
        nextSuspendedProccess = nullptr;
        regularUnblock = true;

        if(body != nullptr) { kScheduler::putReady(this);}

    }

kThread* kThread::createProcess(Body body, void* args, void* stack_space) {
    return new kThread(body,args, stack_space);

}


void kThread::dispatch()
{
    kThread *old = running;
    if (!old->isFinished()) {
        kScheduler::putReady(old);
    }
        running = kScheduler::getReady();
        //if(!running) { kprintString("Scheduler nema sta da uzme!");}
        kThread::contextSwitch(&old->context, &running->context);

}


void kThread::threadWrapper(){

    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

void kThread::kThreadExit() {

    running->setFinished(true);
    running->unblockSuspended();
    thread_dispatch();

}

void  kThread::kThreadJoin(kThread* thr) {

    kThread* old = running;
    kScheduler::putSuspended(thr, old);
    running = kScheduler::getReady();
    kThread::contextSwitch(&old->context, &running->context);
}

void kThread::unblockSuspended() {

    kThread* tmp;
    while(running->headSuspended)
    {
        tmp = kScheduler::getSuspended(running);
        kScheduler::putReady(tmp);

    }
}
