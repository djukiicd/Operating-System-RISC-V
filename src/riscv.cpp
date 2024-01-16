//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../lib/mem.h"
#include "../h/kThread.hpp"

using Body = void (*)(void *);

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra"); // sepc <=ra
    __asm__ volatile ("sret");
}

void Riscv::handleSyscall() {

    //uzimam parametre
    uint64 a0, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    __asm__ volatile("mv %0, a4" : "=r"(a3));
    __asm__ volatile("mv %0, a4" : "=r"(a4));

    uint64  scause = r_scause();

    //ecall iz korisnickog, ecall iz sistemskog rezima
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)//syscall
    {

        uint64 volatile sepc = r_sepc()+ 4; // jer pc pokazuje na trenutnu instrukciju tj ecall, a po povratku treba da sksocim na  sledecu da se ne bih vrtela vecno
        uint64 volatile sstatus = r_sstatus(); // kupim vrednost statusnog registra
        //obe stvari su mi bitne zbog desavanja kada se dodje na sret

        uint64  syscall;
        __asm__ volatile("mv %0, a0" : "=r"(syscall));

        size_t  size;
        void* ptr = nullptr;
        int ret;
//        Body body;
//        void* arg;
//        void* stack_space;
//        PCB** handleCreate;
//        thread_t handle;
//        struct kSemaphore* sem;
//          char character= 'A';

        switch(syscall)
        {
            case 0x01: //mem_alloc
                __asm__ volatile("mv %0, a1":"=r"(size));
                size *= MEM_BLOCK_SIZE;
                //ptr = MemoryAllocator::kmem_alloc(size);
                ptr = __mem_alloc(size);
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
                break;
            case 0x02: //mem_free
                __asm__ volatile("mv %0, a1": "=r"(ptr));
                //ret = MemoryAllocator::kmem_free(ptr);
                ret = __mem_free(ptr);
                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            case 0x11://thread_create
//                kThread* handle;
//                Body body;
//                void * arg;
//                void * stack_space;
//                __asm__ volatile("mv %0, a1":"=r"(handle));
//                __asm__ volatile("mv %0, a2":"=r"(body));
//                __asm__ volatile("mv %0, a3":"=r"(arg));
//                if(body!= nullptr){
//                    __asm__ volatile("mv %0, a4":"=r"(stack_space));
//                }
//                else stack_space = nullptr;
//
//                handle = kThread::createProcess(body,arg,stack_space);
//
//                if(handle) ret = 0;
//                else ret = -0x11;
//                __asm__ volatile("mv a0, %0"::"r"(ret));
//                break;
//            case 0x12://thread_exit
//                if(kThread::running->body == nullptr){
//                    ret = -0x12;
//                    __asm__ volatile("mv a0, %0"::"r"(ret));
//                }
//                else kThread::kThreadExit();
//                break;
//            case 0x13: //thread_dispatch
//                kThread::yield();
//                break;
//            case 0x14: //thread_join
//                __asm__ volatile("mv %0, a1":"=r"(handle));
//                PCB::join(handle);
//                break;
//            case 0x21: //sem_open
//                struct kSemaphore** handle;
//                int  init;
//                __asm__ volatile("mv %0, a1":"=r"(handle));
//                __asm__ volatile("mv %0, a2":"=r"(init));
//                *handle = kSemaphore::ksem_open(init);
//                if(*handle == nullptr) {
//                    ret = -21;
//                } else {
//                    ret=0;
//                }
//                __asm__ volatile("mv a0, %0"::"r"(ret));
//                break;
//            case 0x22://sem_close
//                __asm__ volatile("mv %0, a1":"=r"(sem));
//                if(sem == nullptr) {
//                    ret = -22;
//                    __asm__ volatile("mv a0, %0"::"r"(ret));
//                    return;
//                } else ret = 0;
//                kSemaphore::ksem_close(sem);
//                __asm__ volatile("mv a0, %0"::"r"(ret));
//                break;
//            case 0x23: //sem_wait
//                __asm__ volatile("mv %0, a1":"=r"(sem));
//                if(sem == nullptr) {
//                    ret = -23;
//                    __asm__ volatile("mv a0, %0"::"r"(ret));
//                } else ret =0;
//                kSemaphore::ksem_wait(sem);
//                __asm__ volatile("mv a0, %0"::"r"(ret));
//                break;
//            case 0x24: //sem_signal
//                __asm__ volatile("mv %0, a1":"=r"(sem));
//                if(sem == nullptr) {
//                    ret = -24;
//                    __asm__ volatile("mv a0, %0"::"r"(ret));
//                    return;
//                } else ret=0;
//                kSemaphore::ksem_signal(sem);
//                __asm__ volatile("mv a0, %0"::"r"(ret));
//                break;
//            case 0x41: //getc
//                character = __getc(); //odlazim u timer interrupt umesto u console interrupt
//                __asm__ volatile("mv a0, %0"::"r"(character));
//                break;
//            case 0x42: //putc
//                char c;
//                __asm__ volatile("mv %0, a1":"=r"(c));
//                __putc(c);
//                break;
            case 0x55:
                int args;
                __asm__ volatile("mv %0, a1":"=r"(args));
                args += 6;
                __asm__ volatile("mv a0, %0"::"r"(args));
                break;
            default: break;
        }

        __asm__ volatile("sd a0, 80(fp)"); //resava mi problem sa a0 (skontaj sta si tu radila)
        //PCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else

    {
        if(scause == 0x0000000000000002UL)
            printString("Ilegalna instrukcija\n:");
        else if (scause == 0x0000000000000005UL)
            printString("Nedozvolena adresa citanja\n");
        else if (scause == 0x0000000000000007UL)
            printString("Nedozvolena adresa upisa\n");


        printString("scause: ");
        printInteger(scause);
        printString("\n");
        printString("sepc: ");
        printInteger(r_sepc());
        printString("\n");
        printString("stval: ");
        printInteger(r_stval());
        printString("\n");
        //while(1);
    }
}
void Riscv::handleTimerInterrupt() {

    mc_sip(SIP_SSIP); //zasto ovo?? - ni ne radim vrv

    uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    w_sstatus(sstatus);
    w_sepc(sepc);
}

void Riscv::handleConsoleInterrupt() {
    console_handler();
}

void Riscv::handleBadCause() {

}