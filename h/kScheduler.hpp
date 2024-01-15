#ifndef OS_PROJECT_BASE_SCHEDULER_H
#define OS_PROJECT_BASE_SCHEDULER_H

#include "list.hpp"
class kThread; //da izbegnem kruznu zavisnost

class kScheduler{

private:

    kScheduler(){} //napravi idle nit i ubaci je i pazi da ona treba da se izvrsava  samo ukoliko ne postoji nijedna druga spremna
    ~kScheduler(){}
    kScheduler(const kScheduler& obj) = delete;
    kScheduler& operator=(const kScheduler&) = delete;
    static List<kThread> readyProcessQueue;
    //imace liste za blokirane itd
    //svaka nit ce imati nextReady, nextBlocked,.. tako cu ih povezivati

public:

    static kThread* get();
    static void put(kThread* thr);
};


#endif
