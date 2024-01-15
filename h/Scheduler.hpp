#ifndef OS_PROJECT_BASE_SCHEDULER_H
#define OS_PROJECT_BASE_SCHEDULER_H

#include "list.hpp"
class Thread; //da izbegnem kruznu zavisnost

class Scheduler{

private:
    static List<Thread> readyProcessQueue;

public:

    Scheduler() = delete;

    static Thread* get();
    static void put(Thread* thr);
};


#endif
