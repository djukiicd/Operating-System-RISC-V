#include "../h/Thread.hpp"
#include "../h/print.hpp"

Thread* Thread::running = nullptr;

void Thread::threadWrapper() {
    Riscv::popSppSpie();
    printInteger(100);
    running->body(running->arg);
    thread_exit();
}

void Thread::dispatch() {

}
