#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/console.h"

Thread::Thread() {
    body = nullptr;
    arg = nullptr;
}
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
}

Thread::~Thread() noexcept {
    delete myHandle;
}

int Thread::start() {

    if(body)
        return thread_create(&myHandle, body,arg);
    else
       return thread_create(&myHandle, wrapper,this);
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
   return 0;
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::signal() {
   return sem_signal(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

char Console::getc() {
   return ::getc();

}

void Console::putc(char c) {
    ::putc(c);

}