#ifndef OPERATIVNI_SISTEMI_KTHREAD_HPP
#define OPERATIVNI_SISTEMI_KTHREAD_HPP

#include "../lib/hw.h"

class kScheduler;

class kThread{

public: 

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool fin) { kThread::finished = fin; }
    using Body = void (*)(void *);
    inline void setRegularUnbock(bool regUn) { regularUnblock = regUn;}
    static kThread* createProcess(Body body, void* arg, void* stack_space);

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
    bool regularUnblock;

    static void contextSwitch(Context* oldContext, Context* runningContext);
    static void threadWrapper();
    static void dispatch();
    static void kThreadExit();
    static void kThreadJoin(kThread* thr);
    void unblockSuspended();
    friend class Riscv;
    friend class kSemaphore;
    friend class kScheduler;

    void* operator new(size_t size);
    void operator delete(void* p) noexcept;


};


#endif
