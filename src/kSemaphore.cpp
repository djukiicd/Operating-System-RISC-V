#include "../h/kSemaphore.hpp"
#include "../h/kThread.hpp"
#include "../h/kScheduler.hpp"
#include "../h/riscv.hpp"

kSemaphore* kSemaphore::openSemaphore(int init) {
    return new kSemaphore(init);
}

void kSemaphore::closeSemaphore(kSemaphore *sem) {

    //sve niti koje su se blokirale na njemu se deblokiraju (stavljaju u Ready)
    //njihov wait vraca gresku
    kThread* thr = kScheduler::getBlocked(sem);
    while(thr!= nullptr)
    {
        sem->unblock();
        thr = kScheduler::getBlocked(sem);
    }

    //oslobadja semafor sa zadatom ruckom
     delete sem;
}
int kSemaphore::wait(kSemaphore* sem) {
//treba da vrati gresku u slucaju da je dealociran semafor dok je nit na njemu cekala

    uint64 val = sem->getValue();
    if(--val < 0)
        sem->block();
}

void kSemaphore::signal(kSemaphore* sem) {

    uint64 val = sem->getValue();
    if(++val <= 0)
        sem->unblock();

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