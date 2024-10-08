#include "../h/kSemaphore.hpp"
#include "../h/kScheduler.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"

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
        kThread* thr = kScheduler::getBlocked(sem);
        if(thr)
        {
            thr->setRegularUnbock(false);
            kScheduler::putReady(thr);
        }
    }

}
int kSemaphore::wait(kSemaphore* sem) {

    if(!sem) return 0x23;

    sem->minusValue();
    if(sem->getValue() < 0){
        sem->block();
        if(!kThread::running->regularUnblock)
        {
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
    kScheduler::putBlocked(old, this); //(bilo je old na stari nacin)
    kThread::running = kScheduler::getReady();

    kThread::contextSwitch(&old->context, &kThread::running->context);
    Riscv::popRegisters();

}

void kSemaphore::unblock() {

    kThread* thr = kScheduler::getBlocked(this);
    if(thr) kScheduler::putReady(thr);
}

void *kSemaphore::operator new(size_t size) {

    return MemoryAllocator::kmem_alloc(size);
}

void kSemaphore::operator delete(void *p) noexcept {
        MemoryAllocator::kmem_free(p);
}