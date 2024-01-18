#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../lib/mem.h"
#include "../h/kThread.hpp"
#include "../h/kSemaphore.hpp"

using Body = void (*)(void *);

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSyscall() {

    uint64  scause = r_scause();

    //ecall iz korisnickog, ecall iz sistemskog rezima
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)//syscall  PROMENIO MI SE A4 ZASTO???
    {

        uint64 volatile sepc = r_sepc()+ 4; // jer pc pokazuje na trenutnu instrukciju tj ecall, a po povratku treba da sksocim na  sledecu da se ne bih vrtela vecno
        uint64 volatile sstatus = r_sstatus(); // kupim vrednost statusnog registra
        //obe stvari su mi bitne zbog desavanja kada se dodje na sret

        uint64  syscall;
        __asm__ volatile("mv %0, a0" : "=r"(syscall));
        int ret;

        switch(syscall)
        {
            case 0x01: //mem_alloc
            {
                size_t  size;
                void* ptr;
                __asm__ volatile("mv %0, a1":"=r"(size));
                size *= MEM_BLOCK_SIZE;
                //ptr = MemoryAllocator::kmem_alloc(size);
                ptr = __mem_alloc(size);
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
                break;
            }

            case 0x02: //mem_free
            {
                void* ptr;
                __asm__ volatile("mv %0, a1": "=r"(ptr));
                //ret = MemoryAllocator::kmem_free(ptr);
                ret = __mem_free(ptr);
                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            }

            case 0x11://thread_create
            {
                kThread** handle;
                Body body;
                void * arg;
                void * stack_space;
                __asm__ volatile("mv %0, a1":"=r"(handle));
                __asm__ volatile("mv %0, a2":"=r"(body));
                __asm__ volatile("mv %0, a3":"=r"(arg));
                if(body!= nullptr){
                    __asm__ volatile("mv %0, a6":"=r"(stack_space));
                }
                else stack_space = nullptr;

                *handle = kThread::createProcess(body,arg,stack_space);
                if(*handle!= nullptr)
                    ret = 0;
                else ret = -0x11;

                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            }

            case 0x12://thread_exit
            {
                if(kThread::running->body == nullptr){
                    ret = -0x12;
                }
                else
                {
                    kThread::running->kThreadExit();
                    ret = 0;
                }
                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            }

            case 0x13: //thread_dispatch
            {
                kThread::yield();
                break;
            }

            case 0x14: //thread_join
            {
                kThread* handleJ;
                __asm__ volatile("mv %0, a1":"=r"(handleJ));
                kThread::kThreadJoin(handleJ);
                break;
            }

            case 0x21: //sem_open
            {
                kSemaphore** semHandle;
                int  init;
                __asm__ volatile("mv %0, a1":"=r"(semHandle));
                __asm__ volatile("mv %0, a2":"=r"(init));

                *semHandle = kSemaphore::openSemaphore(init);

                if(*semHandle == nullptr) {
                    ret = -0x21;
                }
                else ret=0;
                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            }

            case 0x22://sem_close
            {
                kSemaphore* sem;
                __asm__ volatile("mv %0, a1":"=r"(sem));
                if(sem == nullptr)
                    ret = -0x22;
                else ret = 0;

                kSemaphore::closeSemaphore(sem);
                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            }

            case 0x23: //sem_wait
            {
                kSemaphore* semW;
                __asm__ volatile("mv %0, a1":"=r"(semW));
                ret = kSemaphore::wait(semW);
                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            }

            case 0x24: //sem_signal
            {
                kSemaphore* semS;
                __asm__ volatile("mv %0, a1":"=r"(semS));
                ret = kSemaphore::signal(semS);
                __asm__ volatile("mv a0, %0"::"r"(ret));
                break;
            }
            case 0x31: //time_sleep
            {
                break;
            }
            case 0x41: //getc
            {
                char character = __getc(); //odlazim u timer interrupt umesto u console interrupt
                __asm__ volatile("mv a0, %0"::"r"(character));
                break;
            }

            case 0x42: //putc
            {
                char c;
                __asm__ volatile("mv %0, a1":"=r"(c));
                __putc(c);
                break;
            }

            case 0x55: //test
            {
                int arg1,arg2,arg3,arg4;
                __asm__ volatile("mv %0, a1":"=r"(arg1));
                __asm__ volatile("mv %0, a2":"=r"(arg2));
                __asm__ volatile("mv %0, a3":"=r"(arg3));
                __asm__ volatile("mv %0, a6":"=r"(arg4));
                arg1 += arg2+arg3+arg4;
                __asm__ volatile("mv a0, %0"::"r"(arg1));
                break;
            }

            default:
            {
                printString("Error! Neispravan kod sistemskog poziva: ");
                printHex(syscall);
            }
        }

        __asm__ volatile("sd a0, 80(fp)"); // i dalje ne znam zasto
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
        printString("\nsepc: ");
        printInteger(r_sepc());
        printString("\nstval: ");
        printInteger(r_stval());
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