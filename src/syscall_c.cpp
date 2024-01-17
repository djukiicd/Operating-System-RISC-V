#include "../h/syscall_c.hpp"
#include "../lib/console.h"

int test(int arg1,int arg2, int arg3, int arg4)
{
    int ret = 0;

    asm volatile("mv a6, %0" : : "r" (arg4)); //a3->a4
    asm volatile("mv a3, %0" : : "r" (arg3)); //a2->a3
    asm volatile("mv a2, %0" : : "r" (arg2)); //a1->a2
    asm volatile("mv a1, %0" : : "r" (arg1));//a0->a1
    asm volatile("mv a0, %0" : : "r" (0x55));
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r" (ret));

    return ret;
}
void* mem_alloc(size_t size){

    void* ptr = nullptr; //moram u startu da ga imam inicijalizovanog
    int numMemBlocks = size/MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE) numMemBlocks += 1;
    __asm__ volatile("mv a0, %0" : : "r" (0x01));
    __asm__ volatile("mv a1, %0" : : "r" (numMemBlocks));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ptr));
    return ptr;
}
int mem_free(void* ptr){
    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (ptr));
    __asm__ volatile("mv a0, %0" : : "r" (0x02));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;
}

int thread_create(thread_t * handle, void(*start_routine)(void*), void* arg){

    int ret = 0;
    void* stack_space;
    if(start_routine)  stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    else stack_space = nullptr;

    __asm__ volatile("mv a3, %0": :"r"(arg));
    __asm__ volatile("mv a2, %0": :"r"(start_routine)); //proveri
    __asm__ volatile("mv a1, %0": :"r"(handle));
    __asm__ volatile("mv a6, %0": : "r"(stack_space));
    __asm__ volatile("mv a0, %0" : : "r" (0x11));
    __asm__ volatile("ecall"); //ovo je trenutak u kom menjam rezim
    __asm__ volatile("mv %0, a0": "=r"(ret));

    return ret;

}

int thread_exit(){

    int ret = 0;
    __asm__ volatile("mv a0, %0" : : "r" (0x12));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;

}

void thread_dispatch(){

    __asm__ volatile("mv a0, %0" : : "r" (0x13));
    __asm__ volatile("ecall");
}

void thread_join(thread_t handle){

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x14));
    __asm__ volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init){

    int ret = 0;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x21));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;

}

int sem_close(sem_t handle){

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x22));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;

}

int sem_wait(sem_t id){

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (0x23));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;

}

int sem_signal(sem_t id){

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (0x24));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;

}

int time_sleep(time_t time){

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (time));
    __asm__ volatile("mv a0, %0" : : "r" (0x31));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;
}

char getc(){

    char ret = '0';
    __asm__ volatile("mv a0, %0" : : "r" (0x41));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0": "=r"(ret));
    return ret;

}

void putc(char c){

    __asm__ volatile("mv a1, %0" : : "r" (c));
    __asm__ volatile("mv a0, %0" : : "r" (0x42));
    __asm__ volatile("ecall");

}

