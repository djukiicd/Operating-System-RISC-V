#ifndef OS_PROJECT_BASE_KSCHEDULER_H
#define OS_PROJECT_BASE_KSCHEDULER_H

#include "../h/kThread.hpp"
//class kThread; //da izbegnem kruznu zavisnost

class kScheduler{

private:

    kScheduler(){} //napravi idle nit i ubaci je i pazi da ona treba da se izvrsava  samo ukoliko ne postoji nijedna druga spremna
    ~kScheduler(){}
    kScheduler(const kScheduler& obj) = delete;
    kScheduler& operator=(const kScheduler&) = delete;

    //imace liste za blokirane itd
    //svaka nit ce imati nextReady, nextBlocked,.. tako cu ih povezivati
     static kThread* headReady;
     static kThread* tailReady;

public:

    static kThread* get();
    static void put(kThread* thr);

};


#endif
