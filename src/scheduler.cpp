////
//// Created by marko on 20.4.22..
////
//
//#include "../h/scheduler.hpp"
//
//List<CCB> kScheduler::readyCoroutineQueue;
//
//CCB *kScheduler::get()
//{
//    return readyCoroutineQueue.removeFirst();
//}
//
//void kScheduler::put(CCB *ccb)
//{
//    readyCoroutineQueue.addLast(ccb);
//}