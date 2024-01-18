#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

//
//Thread::Thread(void (*body)(void *), void *arg) {
//    thread_create(&myHandle,body,arg);
//}
//
//Thread::~Thread() noexcept {
//    //nzm
//}
//
//int Thread::start() {
//    //nzm
//    return 1;
//}
//
//void Thread::join() {
//    thread_join(myHandle);
//}
//
//void Thread::dispatch() {
//    thread_dispatch();
//}
//
//int Thread::sleep(time_t time) {
//   return time_sleep(time);
//}
////PERIODIC THREAD
//PeriodicThread::PeriodicThread(time_t period) {
//    //nzm sta ovde radim ako ne implementiram ovaj deo
//}
//
//void PeriodicThread::terminate() {
//
//}
//Semaphore::Semaphore(unsigned int init) {
//    sem_open(&myHandle, init);
//}
//
//Semaphore::~Semaphore() {
//    sem_close(myHandle);
//}
//
//int Semaphore::signal() {
//   return sem_signal(myHandle);
//}
//
//int Semaphore::wait() {
//    return sem_wait(myHandle);
//}
//
////char Console::getc() {
////   return getc();
////}
//
////void Console::putc(char) {
////    putc();
////}