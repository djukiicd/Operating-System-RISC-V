#ifndef OS_PROJECT_BASE_THREAD_H
#define OS_PROJECT_BASE_THREAD_H

#include "../lib/hw.h"
#include "Scheduler.hpp"
class Thread{

public:

    ~Thread(){delete[] stack;}
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { Thread::finished = finished; }

    using Body = void (*)(void*);
    static Thread* createProcess(Body body, void* arg, void* stack_space);

    static void yield();
    static Thread* running;

    static void thread_exit();

private:

    Thread(Body body, void* arg, void* stack_space) :
            body(body),
            arg(arg),
            stack(body!= nullptr ?(uint64*)stack_space: nullptr),
            context({body!=nullptr?(uint64)&threadWrapper : 0,
                     stack_space != nullptr ? (uint64) &stack_space : 0 }),
            finished(false)

    {
        if(body != nullptr) { Scheduler::put(this);}
    }
    struct  Context{
        uint64 ra; //mesto na koje se nit vraca nakon predaje procesa x1
        uint64 sp; //dokle su stavljeni podaci na stek x2
    };
    Body body;
    void* arg;

    uint64 * stack; //raste ka nizim adresama
    Context context;
    bool finished;

    static void contextSwitch(Context* oldContext, Context* runningContext); //iz asemblera
    static void threadWrapper();
    static void dispatch();
    friend class Riscv;

};


#endif //OS_PROJECT_BASE_THREAD_H
