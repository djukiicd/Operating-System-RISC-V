#define MAX_SYSCALLS 13
#include "../lib/hw.h"

void* mem_alloc(size_t size); //0x01
int mem_free(void*); //0x02
class kThread;
typedef kThread* thread_t;

int thread_create(thread_t * handle, void(*start_routine)(void*), void* arg); //0x11                DA
int thread_exit(); //0x12                                                                           DA
void thread_dispatch(); //0x13                                                                      DA
void thread_join(thread_t handle); //0x14
class kSemaphore;
typedef kSemaphore* sem_t;
int sem_open(sem_t* handle, unsigned init); //0x21                                                   DA
int sem_close(sem_t handle); //0x22                                                                  DA
int sem_wait(sem_t id); //0x23                                                                       DA
int sem_signal(sem_t id); //0x24                                                                     DA

typedef unsigned long time_t;
int time_sleep(time_t); //0x31                                                                       NE
//const int EOF=-1;
char getc(); //0x41                                                                                  NE

void putc(char c); //0x42                                                                              NE


int test(int arg1,int arg2,int arg3, int arg4);