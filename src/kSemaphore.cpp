#include "../h/kSemaphore.hpp"
#include "../h/kScheduler.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
#include "../test/printing.hpp"

kSemaphore::kSemaphore(uint64 val) :value(val) {
    headBlocked = nullptr;
    tailBlocked = nullptr;

}
kSemaphore* kSemaphore::openSemaphore(int init) {
    return new kSemaphore(init);
}

void kSemaphore::closeSemaphore(kSemaphore *sem) {

    while(sem->headBlocked)
    {
        sem->unblock();
    }

}
int kSemaphore::wait(kSemaphore* sem) {

    if(!sem) return 0x23;
    printString("\nSemaphore value: ");
    printInteger(sem->getValue());
    printString("\n");

    sem->minusValue();

    if(sem->getValue() < 0){
        sem->block();
        if(!sem)
        {
            printString("Da li ulazim ovde?");
            return 0x23;
        }

    }
    return 0;
}

int kSemaphore::signal(kSemaphore* sem) {

    if(!sem) return 0x24;
    sem->plusValue();
    if(sem->getValue() >= 0)
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
