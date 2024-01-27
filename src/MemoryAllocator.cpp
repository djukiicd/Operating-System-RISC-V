#include "../h/MemoryAllocator.hpp"

////Alocira (najmanje) size bajtova memorije, zaokruženo i poravnato na blokove veličine MEM_BLOCK_SIZE.
////Vraća pokazivač na alocirani deo memorije u slučaju uspeha, a null pokazivač u slučaju neuspeha.
////FIRST-FIT
FreeBlock* MemoryAllocator::freeBlockHead = nullptr;

void* MemoryAllocator::kmem_alloc(size_t size) {

    size_t newSize = size; //nepotrebno sad, ali nmg menjam
    //trazi se slobodan blok velciine newSize

    FreeBlock* tmp = freeBlockHead;
    FreeBlock* prev = nullptr;

    for(; tmp !=nullptr; tmp = tmp->next)
    {
        if(tmp->size >= newSize) break;
        prev = tmp;
    }
    size_t remainingSize = tmp->size - newSize;

    if(remainingSize > sizeof(FreeBlock))
    {
        tmp->size = newSize;
        size_t offset = sizeof(FreeBlock) + newSize;
        FreeBlock* newBlock =  (FreeBlock*) ((char*) tmp + offset);
        if(prev)prev->next = newBlock;
        else freeBlockHead = newBlock;
        newBlock->next = tmp->next;
        newBlock->size = remainingSize - sizeof(FreeBlock);
    }
    else
    {   //nije postojao dovoljno velik deo da bismo imali novi manji segment u listi
        if(prev) prev->next = tmp->next;
        else freeBlockHead = tmp->next;
    }
    tmp->next = nullptr;
    return (char*) tmp + sizeof(FreeBlock);
}

//Oslobađa prostor prethodno zauzet pomoću mem_alloc.
//Vraća 0 u slučaju uspeha, negativnu vrednost u slučaju greške (kôd greške).
//Argument mora imati vrednost vraćenu iz mem_alloc

int MemoryAllocator::kmem_free(void * ptr) {


    if (ptr == nullptr || (uint64 *)ptr > (uint64 *)HEAP_END_ADDR  || (uint64 *)ptr < (uint64 *)HEAP_START_ADDR)return -2;

    //dodaje slobodni segment u listu slobodnih (iza curr) i po potrebi spaja sa blokom ispred/iza sebe
    FreeBlock * curr;
    //slobodni segment sortirni po adresama rastuce
    if (!freeBlockHead || (char *)ptr <  (char *)freeBlockHead) curr = nullptr;  //umece kao prvi segment
    else
        for (curr = freeBlockHead; curr->next != nullptr && (char *)ptr > (char *) (curr->next); curr = curr->next); //umece na odgovarajuce mesto po adresi

    //spajanje sa prethodnim segmentom

    if (curr && (char *) curr + curr->size == (char *)ptr) { //ako je curr==nullptr onda nema prethodnog sa kojim bi se spojio
        curr->size += ((FreeBlock *) ptr)->size;
        if (curr->next && (char *) curr + curr->size == (char *) (curr->next)) { //probaj da spojis curr sa sledecim slobodnim
            curr->size += curr->next->size;
            curr->next = curr->next->next;
        }
        return 0;
    }
    else {
        //spajanje sa sledecim segmentom
        FreeBlock* nextBlock = curr ? curr->next : freeBlockHead;

        if (nextBlock && (char*)ptr + ((FreeBlock *) ptr)->size == (char *) nextBlock) {
            FreeBlock* newBlock = (FreeBlock*)(char *)ptr;
            newBlock->size = nextBlock->size+((FreeBlock *) ptr)->size;
            newBlock->next = nextBlock->next;

        }
        else
        {
            //nema spajanja
            FreeBlock* newBlock = (FreeBlock*)(char *)ptr;
            newBlock->size = ((FreeBlock *) ptr)->size;
            if(curr)newBlock->next = curr->next; //ne stavljamo na prvo mesto
            else newBlock->next = freeBlockHead;
            if(curr) curr->next = newBlock;
            else freeBlockHead = newBlock;

        }
        return 0;
    }
}

void MemoryAllocator::init() {

    if(freeBlockHead == nullptr)
    {
        freeBlockHead = (FreeBlock*)((uint64*)HEAP_START_ADDR);
        freeBlockHead->next = nullptr;
        freeBlockHead->size = ((uint64*) HEAP_END_ADDR -(uint64*)HEAP_START_ADDR-sizeof(MemoryAllocator))/MEM_BLOCK_SIZE;
    }


}