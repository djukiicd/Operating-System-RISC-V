#include "../h/kThread.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/kScheduler.hpp"
kThread* kThread::running = nullptr;

kThread::kThread(Body body, void* arg, void* stack_space) : body(body), arg(arg),

//stack(body!= nullptr ?(uint64*)stack_space + DEFAULT_STACK_SIZE* 8 : nullptr),
    stack(body!= nullptr ? new uint64[4096]: nullptr),
    context({body!=nullptr?(uint64)threadWrapper : 0,

                    //  stack_space != nullptr ? (uint64)&stack_space: 0 }),
             stack_space != nullptr ? (uint64) &stack[4095] : 0 }),
finished(false)

    {
        if(body != nullptr) { kScheduler::put(this);}
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
    if (!old->isFinished()) { kScheduler::put(old); }
    running = kScheduler::get();

    kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {

    Riscv::popSppSpie();
  //  printInteger(100);
    running->body(running->arg);
//    ktThreadExit();
}

void kThread::kThreadExit() {
//treba da oslobodi memoriju koju je zauzeo
//i da se obrise objekat niti
}



