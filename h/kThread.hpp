#ifndef OS_PROJECT_BASE_KTHREAD_H
#define OS_PROJECT_BASE_KTHREAD_H

#include "../lib/hw.h"
#include "kScheduler.hpp"
class kThread{

public:

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { kThread::finished = finished; }
    inline kThread* getNextReadyProccess(){return nextReadyProccess;}
    using Body = void (*)(void *);

    static kThread* createProcess(Body body);
    static kThread* createProcess(Body body, void* arg, void* stack_space);
    static kThread* createProcess(Body body, void* arg);

    static void yield();
    static kThread* running;

    static void kthread_exit();

private:

    kThread(Body body):
            body(body),
            stack(body != nullptr ? new uint64[1024] : nullptr),
            context({body!=nullptr?(uint64)threadWrapper: 0,
                     body != nullptr ? (uint64) &stack[1024] : 0 }),
            finished(false)

    {
        if(body != nullptr) { kScheduler::put(this);}
    }

    kThread(Body body, void * arg):
            body(body),
            arg(arg),
            stack(body != nullptr ? new uint64[1024] : nullptr),
            context({body!=nullptr?(uint64)threadWrapper: 0,
                     body != nullptr ? (uint64) &stack[1024] : 0 }),
            finished(false)

    {
        if(body != nullptr) { kScheduler::put(this);}
    }

    kThread(Body body, void* arg, void* stack_space) :
            body(body),
            arg(arg),
            //stack(body!= nullptr ?(uint64*)stack_space + DEFAULT_STACK_SIZE : nullptr),
            stack(body!= nullptr ? new uint64[4096]: nullptr),
            context({body!=nullptr?(uint64)threadWrapper : 0,
                     stack_space != nullptr ? (uint64) &stack[4096] : 0 }),
            finished(false)

    {
        if(body != nullptr) { kScheduler::put(this);}
    }
    struct  Context{
        uint64 ra; //mesto na koje se nit vraca nakon predaje procesa x1
        uint64 sp; //dokle su stavljeni podaci na stek x2
    };
    Body body;
    void* arg;
    kThread * nextReadyProccess;
    uint64 * stack; //raste ka nizim adresama
    Context context;
    bool finished;

    static void contextSwitch(Context* oldContext, Context* runningContext); //iz asemblera
    static void threadWrapper();
    static void dispatch();
    friend class Riscv;

};


#endif //OS_PROJECT_BASE_KTHREAD_H
