.extern  _ZN5Riscv13handleSyscallEv
.extern  _ZN5Riscv20handleTimerInterruptEv
.extern  _ZN5Riscv22handleConsoleInterruptEv
.extern  _ZN5Riscv14handleBadCauseEv
.global __supervisorTrap
.align 4
__supervisorTrap:
j handleSyscall   //[0]
j handleTimerInterrupt //[1]
j handleBadCause //[2]
j handleBadCause //[3]
j handleBadCause //[4]
j handleBadCause //[5]
j handleBadCause //[6]
j handleBadCause //[7]
j handleBadCause //[8]
j handleConsoleInterrupt //[9]

handleSyscall:
 addi sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
call _ZN5Riscv13handleSyscallEv
 .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    addi sp,sp,256
sret

handleTimerInterrupt:
addi sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
call _ZN5Riscv20handleTimerInterruptEv
.irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index, \index * 8(sp)
    .endr
    addi sp,sp,256
sret


handleConsoleInterrupt:
addi sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
call _ZN5Riscv22handleConsoleInterruptEv
.irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index, \index * 8(sp)
    .endr
    addi sp,sp,256
sret

handleBadCause:
//treba da prijavi gresku
call _ZN5Riscv14handleBadCauseEv
sret
    //sret: 1.menja se rezim privilegije u kom se kod izvrsava (u sstatus vidimo u kom rezimu smo bili pre izvrsavanja prekidne rutine)
    //2.gleda se dal su prekidi bili omoguceni ili ne i i to se restauira
    //3.skacemo na sepc (ret uzima ra registar)
