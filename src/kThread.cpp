#include "../h/kThread.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/kScheduler.hpp"
kThread* kThread::running = nullptr;

kThread::kThread(Body body, void* arg, void* stack_space) :
        body(body),
        arg(arg),
        stack(body != nullptr ? (uint64*)stack_space - DEFAULT_STACK_SIZE + 1 : nullptr),
        context({body!=nullptr?(uint64)&threadWrapper : 0,stack != nullptr ? (uint64)stack : 0}),
        finished(false)
    {
        if(body != nullptr) { kScheduler::putReady(this);}
    }

kThread* kThread::createProcess(Body body, void* args, void* stack_space) {

    return new kThread(body,args, stack_space);

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
    if (!old->isFinished()) {
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
    yield();
    //treba negde i da je obrises, smisli kako
}



