#ifndef OPERATIVNI_SISTEMI_KSCHEDULER_HPP
#define OPERATIVNI_SISTEMI_KSCHEDULER_HPP
#include "../h/kThread.hpp"
#include "../h/kSemaphore.hpp"

class kScheduler{

private:

    kScheduler(){} //napravi idle nit i ubaci je i pazi da ona treba da se izvrsava  samo ukoliko ne postoji nijedna druga spremna
    ~kScheduler(){}
    kScheduler(const kScheduler& obj) = delete;
    kScheduler& operator=(const kScheduler&) = delete;

     static kThread* headReady;
     static kThread* tailReady;

public:

    static kThread* getReady();
    static void putReady(kThread* thr);

    static kThread* getBlocked(kSemaphore* sem);
    static void putBlocked(kThread* thr, kSemaphore* sem);

    static kThread* getSuspended(kThread* thr);
    static void putSuspended(kThread* thr, kThread* thrS);

};


#endif
