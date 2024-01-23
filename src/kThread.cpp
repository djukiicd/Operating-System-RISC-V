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

void kThread::dispatch() //skocio iz sistemskog preko syscall_a
{
    kThread *old = running;
    if (!old->isFinished()) {
//        printHex(reinterpret_cast<uint64>(old));
//        printString("nije gotova");
        kScheduler::putReady(old);
    }
    else {
        printHex(reinterpret_cast<uint64>(old));
        printString(" gotova \n");
    }
        running = kScheduler::getReady();
        if(!running) { printString("Scheduler nema sta da uzme!");}
        kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {

    Riscv::popSppSpie();
    running->body(running->arg);  //ovde kad dodje imao je skok iz korisnickog rezima zbog ovog zakomentarisanog dela
    //ovde treba da se prebaci u sistemski rezim rada i da tako izvrsava kod jezgra
    thread_exit();
}

void kThread::kThreadExit() { //skocio iz sistemskog

    printString("usao u exit\n");
    running->setFinished(true);
    running->unblockSuspended();
    //yield();
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
