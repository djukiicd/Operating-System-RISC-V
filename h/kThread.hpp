#ifndef OPERATIVNI_SISTEMI_KTHREAD_HPP
#define OPERATIVNI_SISTEMI_KTHREAD_HPP

#include "../lib/hw.h"

class kScheduler;

class kThread{

public:

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { kThread::finished = finished; }
    using Body = void (*)(void *);

    static kThread* createProcess(Body body, void* arg, void* stack_space);

    static void yield();
    static kThread* running;

    kThread* nextReadyProccess;
    kThread* nextBlockedProccess;
    kThread* nextSuspendedProccess;

    kThread* headSuspended;
    kThread* tailSuspended;

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

    static void contextSwitch(Context* oldContext, Context* runningContext);
    static void threadWrapper();
    static void dispatch();
    static void kThreadExit();
    static void kThreadJoin(kThread* thr);
    void unblockSuspended();
    friend class Riscv;
    friend class kSemaphore;
    friend class kScheduler;

};


#endif
