#ifndef OPERATIVNI_SISTEMI_KSEMAPHORE_HPP
#define OPERATIVNI_SISTEMI_KSEMAPHORE_HPP

#include "../lib/hw.h"
#include "../h/kThread.hpp"

class kSemaphore{

public:
    kSemaphore(uint64 val = 1);
    ~kSemaphore(){}
    static int wait(kSemaphore* sem);
    static int signal(kSemaphore* sem);
    uint64 getValue() { return value;}
    static kSemaphore*  openSemaphore(int init);
    static void closeSemaphore(kSemaphore* sem);
    kThread* headBlocked;
    kThread* tailBlocked;

private:
    uint64 value;
    void block();
    void unblock();

};
#endif //OPERATIVNI_SISTEMI_KSEMAPHORE_HPP
