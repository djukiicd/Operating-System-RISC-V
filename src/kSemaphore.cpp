#include "../h/kSemaphore.hpp"
#include "../h/kScheduler.hpp"
#include "../h/riscv.hpp"

kSemaphore* kSemaphore::openSemaphore(int init) {
    return new kSemaphore(init);
}

void kSemaphore::closeSemaphore(kSemaphore *sem) {

    while(sem->headBlocked)
    {
        sem->unblock();
    }

    //oslobadja semafor sa zadatom ruckom
     delete sem;
     sem = nullptr;
}
int kSemaphore::wait(kSemaphore* sem) {
    if(!sem) return -0x23;
    uint64 val = sem->getValue();

    if(--val < 0){
        sem->block();
        if(!sem)
            return -0x23;
    }
    return 0;
}

int kSemaphore::signal(kSemaphore* sem) {

    if(!sem) return -0x24;

    uint64 val = sem->getValue();
    if(++val <= 0)
        sem->unblock();

    return  0;
}

void kSemaphore::block() {

    Riscv::pushRegisters();
    kThread* old = kThread::running;
    kScheduler::putBlocked(old, this);
    kThread::running = kScheduler::getReady();

    kThread::contextSwitch(&old->context, &kThread::running->context);
    Riscv::popRegisters();

}

void kSemaphore::unblock() {

    kThread* thr = kScheduler::getBlocked(this);
    if(thr) kScheduler::putReady(thr);
}