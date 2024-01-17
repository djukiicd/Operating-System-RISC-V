#ifndef OS_PROJECT_BASE_KTHREAD_H
#define OS_PROJECT_BASE_KTHREAD_H

#include "../lib/hw.h"

class kScheduler;

class kThread{

public:

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { kThread::finished = finished; }
    //inline kThread* getNextReadyProccess(){return nextReadyProccess;}
    using Body = void (*)(void *);

    static kThread* createProcess(Body body, void* arg, void* stack_space);

    static void yield();
    static kThread* running;

    void kThreadExit();
    kThread* nextReadyProccess;
private:
    kThread(Body body, void* arg, void* stack_space);
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
    friend class kScheduler;

};


#endif //OS_PROJECT_BASE_KTHREAD_H
