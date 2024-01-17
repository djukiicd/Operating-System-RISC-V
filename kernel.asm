
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	a4013103          	ld	sp,-1472(sp) # 80005a40 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2f8020ef          	jal	ra,80002314 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <__supervisorTrap>:
.extern  _ZN5Riscv22handleConsoleInterruptEv
.extern  _ZN5Riscv14handleBadCauseEv
.global __supervisorTrap
.align 4
__supervisorTrap:
j handleSyscall   //[0]
    80001100:	0280006f          	j	80001128 <handleSyscall>
j handleTimerInterrupt //[1]
    80001104:	1340006f          	j	80001238 <handleTimerInterrupt>
j handleBadCause //[2]
    80001108:	2d00006f          	j	800013d8 <handleBadCause>
j handleBadCause //[3]
    8000110c:	2cc0006f          	j	800013d8 <handleBadCause>
j handleBadCause //[4]
    80001110:	2c80006f          	j	800013d8 <handleBadCause>
j handleBadCause //[5]
    80001114:	2c40006f          	j	800013d8 <handleBadCause>
j handleBadCause //[6]
    80001118:	2c00006f          	j	800013d8 <handleBadCause>
j handleBadCause //[7]
    8000111c:	2bc0006f          	j	800013d8 <handleBadCause>
j handleBadCause //[8]
    80001120:	2b80006f          	j	800013d8 <handleBadCause>
j handleConsoleInterrupt //[9]
    80001124:	1a40006f          	j	800012c8 <handleConsoleInterrupt>

0000000080001128 <handleSyscall>:

handleSyscall:
 addi sp,sp,-256
    80001128:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000112c:	00013023          	sd	zero,0(sp)
    80001130:	00113423          	sd	ra,8(sp)
    80001134:	00213823          	sd	sp,16(sp)
    80001138:	00313c23          	sd	gp,24(sp)
    8000113c:	02413023          	sd	tp,32(sp)
    80001140:	02513423          	sd	t0,40(sp)
    80001144:	02613823          	sd	t1,48(sp)
    80001148:	02713c23          	sd	t2,56(sp)
    8000114c:	04813023          	sd	s0,64(sp)
    80001150:	04913423          	sd	s1,72(sp)
    80001154:	04a13823          	sd	a0,80(sp)
    80001158:	04b13c23          	sd	a1,88(sp)
    8000115c:	06c13023          	sd	a2,96(sp)
    80001160:	06d13423          	sd	a3,104(sp)
    80001164:	06e13823          	sd	a4,112(sp)
    80001168:	06f13c23          	sd	a5,120(sp)
    8000116c:	09013023          	sd	a6,128(sp)
    80001170:	09113423          	sd	a7,136(sp)
    80001174:	09213823          	sd	s2,144(sp)
    80001178:	09313c23          	sd	s3,152(sp)
    8000117c:	0b413023          	sd	s4,160(sp)
    80001180:	0b513423          	sd	s5,168(sp)
    80001184:	0b613823          	sd	s6,176(sp)
    80001188:	0b713c23          	sd	s7,184(sp)
    8000118c:	0d813023          	sd	s8,192(sp)
    80001190:	0d913423          	sd	s9,200(sp)
    80001194:	0da13823          	sd	s10,208(sp)
    80001198:	0db13c23          	sd	s11,216(sp)
    8000119c:	0fc13023          	sd	t3,224(sp)
    800011a0:	0fd13423          	sd	t4,232(sp)
    800011a4:	0fe13823          	sd	t5,240(sp)
    800011a8:	0ff13c23          	sd	t6,248(sp)
call _ZN5Riscv13handleSyscallEv
    800011ac:	49d000ef          	jal	ra,80001e48 <_ZN5Riscv13handleSyscallEv>
 .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011b0:	00013003          	ld	zero,0(sp)
    800011b4:	00813083          	ld	ra,8(sp)
    800011b8:	01013103          	ld	sp,16(sp)
    800011bc:	01813183          	ld	gp,24(sp)
    800011c0:	02013203          	ld	tp,32(sp)
    800011c4:	02813283          	ld	t0,40(sp)
    800011c8:	03013303          	ld	t1,48(sp)
    800011cc:	03813383          	ld	t2,56(sp)
    800011d0:	04013403          	ld	s0,64(sp)
    800011d4:	04813483          	ld	s1,72(sp)
    800011d8:	05013503          	ld	a0,80(sp)
    800011dc:	05813583          	ld	a1,88(sp)
    800011e0:	06013603          	ld	a2,96(sp)
    800011e4:	06813683          	ld	a3,104(sp)
    800011e8:	07013703          	ld	a4,112(sp)
    800011ec:	07813783          	ld	a5,120(sp)
    800011f0:	08013803          	ld	a6,128(sp)
    800011f4:	08813883          	ld	a7,136(sp)
    800011f8:	09013903          	ld	s2,144(sp)
    800011fc:	09813983          	ld	s3,152(sp)
    80001200:	0a013a03          	ld	s4,160(sp)
    80001204:	0a813a83          	ld	s5,168(sp)
    80001208:	0b013b03          	ld	s6,176(sp)
    8000120c:	0b813b83          	ld	s7,184(sp)
    80001210:	0c013c03          	ld	s8,192(sp)
    80001214:	0c813c83          	ld	s9,200(sp)
    80001218:	0d013d03          	ld	s10,208(sp)
    8000121c:	0d813d83          	ld	s11,216(sp)
    80001220:	0e013e03          	ld	t3,224(sp)
    80001224:	0e813e83          	ld	t4,232(sp)
    80001228:	0f013f03          	ld	t5,240(sp)
    8000122c:	0f813f83          	ld	t6,248(sp)
    addi sp,sp,256
    80001230:	10010113          	addi	sp,sp,256
sret
    80001234:	10200073          	sret

0000000080001238 <handleTimerInterrupt>:

handleTimerInterrupt:
addi sp,sp,-256
    80001238:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000123c:	00013023          	sd	zero,0(sp)
    80001240:	00113423          	sd	ra,8(sp)
    80001244:	00213823          	sd	sp,16(sp)
    80001248:	00313c23          	sd	gp,24(sp)
    8000124c:	02413023          	sd	tp,32(sp)
    80001250:	02513423          	sd	t0,40(sp)
    80001254:	02613823          	sd	t1,48(sp)
    80001258:	02713c23          	sd	t2,56(sp)
    8000125c:	04813023          	sd	s0,64(sp)
    80001260:	04913423          	sd	s1,72(sp)
    80001264:	04a13823          	sd	a0,80(sp)
    80001268:	04b13c23          	sd	a1,88(sp)
    8000126c:	06c13023          	sd	a2,96(sp)
    80001270:	06d13423          	sd	a3,104(sp)
    80001274:	06e13823          	sd	a4,112(sp)
    80001278:	06f13c23          	sd	a5,120(sp)
    8000127c:	09013023          	sd	a6,128(sp)
    80001280:	09113423          	sd	a7,136(sp)
    80001284:	09213823          	sd	s2,144(sp)
    80001288:	09313c23          	sd	s3,152(sp)
    8000128c:	0b413023          	sd	s4,160(sp)
    80001290:	0b513423          	sd	s5,168(sp)
    80001294:	0b613823          	sd	s6,176(sp)
    80001298:	0b713c23          	sd	s7,184(sp)
    8000129c:	0d813023          	sd	s8,192(sp)
    800012a0:	0d913423          	sd	s9,200(sp)
    800012a4:	0da13823          	sd	s10,208(sp)
    800012a8:	0db13c23          	sd	s11,216(sp)
    800012ac:	0fc13023          	sd	t3,224(sp)
    800012b0:	0fd13423          	sd	t4,232(sp)
    800012b4:	0fe13823          	sd	t5,240(sp)
    800012b8:	0ff13c23          	sd	t6,248(sp)
call _ZN5Riscv20handleTimerInterruptEv
    800012bc:	5e9000ef          	jal	ra,800020a4 <_ZN5Riscv20handleTimerInterruptEv>
.irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    .endr
    addi sp,sp,256
    800012c0:	10010113          	addi	sp,sp,256
sret
    800012c4:	10200073          	sret

00000000800012c8 <handleConsoleInterrupt>:


handleConsoleInterrupt:
addi sp,sp,-256
    800012c8:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    800012cc:	00013023          	sd	zero,0(sp)
    800012d0:	00113423          	sd	ra,8(sp)
    800012d4:	00213823          	sd	sp,16(sp)
    800012d8:	00313c23          	sd	gp,24(sp)
    800012dc:	02413023          	sd	tp,32(sp)
    800012e0:	02513423          	sd	t0,40(sp)
    800012e4:	02613823          	sd	t1,48(sp)
    800012e8:	02713c23          	sd	t2,56(sp)
    800012ec:	04813023          	sd	s0,64(sp)
    800012f0:	04913423          	sd	s1,72(sp)
    800012f4:	04a13823          	sd	a0,80(sp)
    800012f8:	04b13c23          	sd	a1,88(sp)
    800012fc:	06c13023          	sd	a2,96(sp)
    80001300:	06d13423          	sd	a3,104(sp)
    80001304:	06e13823          	sd	a4,112(sp)
    80001308:	06f13c23          	sd	a5,120(sp)
    8000130c:	09013023          	sd	a6,128(sp)
    80001310:	09113423          	sd	a7,136(sp)
    80001314:	09213823          	sd	s2,144(sp)
    80001318:	09313c23          	sd	s3,152(sp)
    8000131c:	0b413023          	sd	s4,160(sp)
    80001320:	0b513423          	sd	s5,168(sp)
    80001324:	0b613823          	sd	s6,176(sp)
    80001328:	0b713c23          	sd	s7,184(sp)
    8000132c:	0d813023          	sd	s8,192(sp)
    80001330:	0d913423          	sd	s9,200(sp)
    80001334:	0da13823          	sd	s10,208(sp)
    80001338:	0db13c23          	sd	s11,216(sp)
    8000133c:	0fc13023          	sd	t3,224(sp)
    80001340:	0fd13423          	sd	t4,232(sp)
    80001344:	0fe13823          	sd	t5,240(sp)
    80001348:	0ff13c23          	sd	t6,248(sp)
call _ZN5Riscv22handleConsoleInterruptEv
    8000134c:	5a9000ef          	jal	ra,800020f4 <_ZN5Riscv22handleConsoleInterruptEv>
.irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001350:	00013003          	ld	zero,0(sp)
    80001354:	00813083          	ld	ra,8(sp)
    80001358:	01013103          	ld	sp,16(sp)
    8000135c:	01813183          	ld	gp,24(sp)
    80001360:	02013203          	ld	tp,32(sp)
    80001364:	02813283          	ld	t0,40(sp)
    80001368:	03013303          	ld	t1,48(sp)
    8000136c:	03813383          	ld	t2,56(sp)
    80001370:	04013403          	ld	s0,64(sp)
    80001374:	04813483          	ld	s1,72(sp)
    80001378:	05013503          	ld	a0,80(sp)
    8000137c:	05813583          	ld	a1,88(sp)
    80001380:	06013603          	ld	a2,96(sp)
    80001384:	06813683          	ld	a3,104(sp)
    80001388:	07013703          	ld	a4,112(sp)
    8000138c:	07813783          	ld	a5,120(sp)
    80001390:	08013803          	ld	a6,128(sp)
    80001394:	08813883          	ld	a7,136(sp)
    80001398:	09013903          	ld	s2,144(sp)
    8000139c:	09813983          	ld	s3,152(sp)
    800013a0:	0a013a03          	ld	s4,160(sp)
    800013a4:	0a813a83          	ld	s5,168(sp)
    800013a8:	0b013b03          	ld	s6,176(sp)
    800013ac:	0b813b83          	ld	s7,184(sp)
    800013b0:	0c013c03          	ld	s8,192(sp)
    800013b4:	0c813c83          	ld	s9,200(sp)
    800013b8:	0d013d03          	ld	s10,208(sp)
    800013bc:	0d813d83          	ld	s11,216(sp)
    800013c0:	0e013e03          	ld	t3,224(sp)
    800013c4:	0e813e83          	ld	t4,232(sp)
    800013c8:	0f013f03          	ld	t5,240(sp)
    800013cc:	0f813f83          	ld	t6,248(sp)
    addi sp,sp,256
    800013d0:	10010113          	addi	sp,sp,256
sret
    800013d4:	10200073          	sret

00000000800013d8 <handleBadCause>:

handleBadCause:
//treba da prijavi gresku
call _ZN5Riscv14handleBadCauseEv
    800013d8:	545000ef          	jal	ra,8000211c <_ZN5Riscv14handleBadCauseEv>
sret
    800013dc:	10200073          	sret
    800013e0:	0000                	unimp
	...

00000000800013e4 <_ZN7kThread13contextSwitchEPNS_7ContextES1_>:
.global _ZN7kThread13contextSwitchEPNS_7ContextES1_
.type _ZN7kThread13contextSwitchEPNS_7ContextES1_, @function
_ZN7kThread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    800013e4:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800013e8:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    800013ec:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    800013f0:	0085b103          	ld	sp,8(a1)

    800013f4:	00008067          	ret

00000000800013f8 <_Z4testiiii>:
#include "../h/syscall_c.hpp"
#include "../lib/console.h"

int test(int arg1,int arg2, int arg3, int arg4)
{
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813423          	sd	s0,8(sp)
    80001400:	01010413          	addi	s0,sp,16
    int ret = 0;

    // Define the system call number as a constant
    #define SYSCALL_NUM 0x55

    asm volatile("mv a6, %0" : : "r" (arg4)); //a3->a4
    80001404:	00068813          	mv	a6,a3
    asm volatile("mv a3, %0" : : "r" (arg3)); //a2->a3
    80001408:	00060693          	mv	a3,a2
    asm volatile("mv a2, %0" : : "r" (arg2)); //a1->a2
    8000140c:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0" : : "r" (arg1));//a0->a1
    80001410:	00050593          	mv	a1,a0
    asm volatile("mv a0, %0" : : "r" (SYSCALL_NUM));
    80001414:	05500793          	li	a5,85
    80001418:	00078513          	mv	a0,a5
    asm volatile("ecall");
    8000141c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r" (ret));
    80001420:	00050513          	mv	a0,a0

    return ret;
}
    80001424:	0005051b          	sext.w	a0,a0
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z9mem_allocm>:
void* mem_alloc(size_t size){
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16

    void* ptr = nullptr; //moram u startu da ga imam inicijalizovanog
    int numMemBlocks = size/MEM_BLOCK_SIZE;
    80001440:	00655793          	srli	a5,a0,0x6
    80001444:	0007879b          	sext.w	a5,a5
    if(size%MEM_BLOCK_SIZE) numMemBlocks += 1;
    80001448:	03f57513          	andi	a0,a0,63
    8000144c:	00050463          	beqz	a0,80001454 <_Z9mem_allocm+0x20>
    80001450:	0017879b          	addiw	a5,a5,1
    __asm__ volatile("mv a0, %0" : : "r" (0x01));
    80001454:	00100713          	li	a4,1
    80001458:	00070513          	mv	a0,a4
    __asm__ volatile("mv a1, %0" : : "r" (numMemBlocks));
    8000145c:	00078593          	mv	a1,a5
    __asm__ volatile("ecall");
    80001460:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ptr));
    80001464:	00050513          	mv	a0,a0
    return ptr;
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z8mem_freePv>:
int mem_free(void* ptr){
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (ptr));
    80001480:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x02));
    80001484:	00200793          	li	a5,2
    80001488:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000148c:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001490:	00050513          	mv	a0,a0
    return ret;
}
    80001494:	0005051b          	sext.w	a0,a0
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_Z13thread_createPP7kThreadPFvPvES2_>:

int thread_create(thread_t * handle, void(*start_routine)(void*), void* arg){
    800014a4:	fd010113          	addi	sp,sp,-48
    800014a8:	02113423          	sd	ra,40(sp)
    800014ac:	02813023          	sd	s0,32(sp)
    800014b0:	00913c23          	sd	s1,24(sp)
    800014b4:	01213823          	sd	s2,16(sp)
    800014b8:	01313423          	sd	s3,8(sp)
    800014bc:	03010413          	addi	s0,sp,48
    800014c0:	00050913          	mv	s2,a0
    800014c4:	00058493          	mv	s1,a1
    800014c8:	00060993          	mv	s3,a2

    int ret = 0;
    void* stack_space;
    if(start_routine)  stack_space = mem_alloc(DEFAULT_STACK_SIZE); //dira a0 (u kom nam povratna adresa)
    800014cc:	04058863          	beqz	a1,8000151c <_Z13thread_createPP7kThreadPFvPvES2_+0x78>
    800014d0:	00001537          	lui	a0,0x1
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	f60080e7          	jalr	-160(ra) # 80001434 <_Z9mem_allocm>
    else stack_space = nullptr;

    __asm__ volatile("mv a3, %0": :"r"(arg));
    800014dc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0": :"r"(start_routine)); //proveri
    800014e0:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0": :"r"(handle));
    800014e4:	00090593          	mv	a1,s2
    __asm__ volatile("mv a6, %0": : "r"(stack_space));
    800014e8:	00050813          	mv	a6,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x11));
    800014ec:	01100793          	li	a5,17
    800014f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall"); //ovo je trenutak u kom menjam rezim
    800014f4:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800014f8:	00050513          	mv	a0,a0
    return ret;

}
    800014fc:	0005051b          	sext.w	a0,a0
    80001500:	02813083          	ld	ra,40(sp)
    80001504:	02013403          	ld	s0,32(sp)
    80001508:	01813483          	ld	s1,24(sp)
    8000150c:	01013903          	ld	s2,16(sp)
    80001510:	00813983          	ld	s3,8(sp)
    80001514:	03010113          	addi	sp,sp,48
    80001518:	00008067          	ret
    else stack_space = nullptr;
    8000151c:	00000513          	li	a0,0
    80001520:	fbdff06f          	j	800014dc <_Z13thread_createPP7kThreadPFvPvES2_+0x38>

0000000080001524 <_Z11thread_exitv>:

int thread_exit(){
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00813423          	sd	s0,8(sp)
    8000152c:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a0, %0" : : "r" (0x12));
    80001530:	01200793          	li	a5,18
    80001534:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001538:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000153c:	00050513          	mv	a0,a0
    return ret;

}
    80001540:	0005051b          	sext.w	a0,a0
    80001544:	00813403          	ld	s0,8(sp)
    80001548:	01010113          	addi	sp,sp,16
    8000154c:	00008067          	ret

0000000080001550 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001550:	ff010113          	addi	sp,sp,-16
    80001554:	00813423          	sd	s0,8(sp)
    80001558:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a0, %0" : : "r" (0x13));
    8000155c:	01300793          	li	a5,19
    80001560:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001564:	00000073          	ecall
}
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <_Z11thread_joinP7kThread>:

void thread_join(thread_t handle){
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001580:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x14));
    80001584:	01400793          	li	a5,20
    80001588:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000158c:	00000073          	ecall
}
    80001590:	00813403          	ld	s0,8(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <_Z8sem_openPP10kSemaphorej>:

int sem_open(sem_t* handle, unsigned init){
    8000159c:	ff010113          	addi	sp,sp,-16
    800015a0:	00813423          	sd	s0,8(sp)
    800015a4:	01010413          	addi	s0,sp,16

    int ret = 0;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    800015a8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800015ac:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x21));
    800015b0:	02100793          	li	a5,33
    800015b4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015b8:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800015bc:	00050513          	mv	a0,a0
    return ret;

}
    800015c0:	0005051b          	sext.w	a0,a0
    800015c4:	00813403          	ld	s0,8(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_Z9sem_closeP10kSemaphore>:

int sem_close(sem_t handle){
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00813423          	sd	s0,8(sp)
    800015d8:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800015dc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x22));
    800015e0:	02200793          	li	a5,34
    800015e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015e8:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800015ec:	00050513          	mv	a0,a0
    return ret;

}
    800015f0:	0005051b          	sext.w	a0,a0
    800015f4:	00813403          	ld	s0,8(sp)
    800015f8:	01010113          	addi	sp,sp,16
    800015fc:	00008067          	ret

0000000080001600 <_Z8sem_waitP10kSemaphore>:

int sem_wait(sem_t id){
    80001600:	ff010113          	addi	sp,sp,-16
    80001604:	00813423          	sd	s0,8(sp)
    80001608:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    8000160c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x23));
    80001610:	02300793          	li	a5,35
    80001614:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001618:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000161c:	00050513          	mv	a0,a0
    return ret;

}
    80001620:	0005051b          	sext.w	a0,a0
    80001624:	00813403          	ld	s0,8(sp)
    80001628:	01010113          	addi	sp,sp,16
    8000162c:	00008067          	ret

0000000080001630 <_Z10sem_signalP10kSemaphore>:

int sem_signal(sem_t id){
    80001630:	ff010113          	addi	sp,sp,-16
    80001634:	00813423          	sd	s0,8(sp)
    80001638:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    8000163c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x24));
    80001640:	02400793          	li	a5,36
    80001644:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001648:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000164c:	00050513          	mv	a0,a0
    return ret;

}
    80001650:	0005051b          	sext.w	a0,a0
    80001654:	00813403          	ld	s0,8(sp)
    80001658:	01010113          	addi	sp,sp,16
    8000165c:	00008067          	ret

0000000080001660 <_Z10time_sleepm>:

int time_sleep(time_t time){
    80001660:	ff010113          	addi	sp,sp,-16
    80001664:	00813423          	sd	s0,8(sp)
    80001668:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (time));
    8000166c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x31));
    80001670:	03100793          	li	a5,49
    80001674:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001678:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000167c:	00050513          	mv	a0,a0
    return ret;
}
    80001680:	0005051b          	sext.w	a0,a0
    80001684:	00813403          	ld	s0,8(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_Z4getcv>:

char getc(){
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16

    char ret = '0';
    __asm__ volatile("mv a0, %0" : : "r" (0x41));
    8000169c:	04100793          	li	a5,65
    800016a0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016a4:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800016a8:	00050513          	mv	a0,a0
    return ret;

}
    800016ac:	0ff57513          	andi	a0,a0,255
    800016b0:	00813403          	ld	s0,8(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <_Z4putcc>:

void putc(char c){
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00813423          	sd	s0,8(sp)
    800016c4:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (c));
    800016c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x42));
    800016cc:	04200793          	li	a5,66
    800016d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016d4:	00000073          	ecall

}
    800016d8:	00813403          	ld	s0,8(sp)
    800016dc:	01010113          	addi	sp,sp,16
    800016e0:	00008067          	ret

00000000800016e4 <_ZL9fibonaccim>:
#include "../h/print.hpp"
#include "../h/kThread.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    800016e4:	fe010113          	addi	sp,sp,-32
    800016e8:	00113c23          	sd	ra,24(sp)
    800016ec:	00813823          	sd	s0,16(sp)
    800016f0:	00913423          	sd	s1,8(sp)
    800016f4:	01213023          	sd	s2,0(sp)
    800016f8:	02010413          	addi	s0,sp,32
    800016fc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001700:	00100793          	li	a5,1
    80001704:	02a7f663          	bgeu	a5,a0,80001730 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001708:	00357793          	andi	a5,a0,3
    8000170c:	02078e63          	beqz	a5,80001748 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001710:	fff48513          	addi	a0,s1,-1
    80001714:	00000097          	auipc	ra,0x0
    80001718:	fd0080e7          	jalr	-48(ra) # 800016e4 <_ZL9fibonaccim>
    8000171c:	00050913          	mv	s2,a0
    80001720:	ffe48513          	addi	a0,s1,-2
    80001724:	00000097          	auipc	ra,0x0
    80001728:	fc0080e7          	jalr	-64(ra) # 800016e4 <_ZL9fibonaccim>
    8000172c:	00a90533          	add	a0,s2,a0
}
    80001730:	01813083          	ld	ra,24(sp)
    80001734:	01013403          	ld	s0,16(sp)
    80001738:	00813483          	ld	s1,8(sp)
    8000173c:	00013903          	ld	s2,0(sp)
    80001740:	02010113          	addi	sp,sp,32
    80001744:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	e08080e7          	jalr	-504(ra) # 80001550 <_Z15thread_dispatchv>
    80001750:	fc1ff06f          	j	80001710 <_ZL9fibonaccim+0x2c>

0000000080001754 <_Z11workerBodyAPv>:

void workerBodyA(void *)
{
    80001754:	fe010113          	addi	sp,sp,-32
    80001758:	00113c23          	sd	ra,24(sp)
    8000175c:	00813823          	sd	s0,16(sp)
    80001760:	00913423          	sd	s1,8(sp)
    80001764:	01213023          	sd	s2,0(sp)
    80001768:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000176c:	00000493          	li	s1,0
    80001770:	0380006f          	j	800017a8 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001774:	00004517          	auipc	a0,0x4
    80001778:	88c50513          	addi	a0,a0,-1908 # 80005000 <kvmincrease+0x8e0>
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	a30080e7          	jalr	-1488(ra) # 800021ac <_Z11printStringPKc>
        printInteger(i);
    80001784:	00048513          	mv	a0,s1
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	a68080e7          	jalr	-1432(ra) # 800021f0 <_Z12printIntegerm>
        printString("\n");
    80001790:	00004517          	auipc	a0,0x4
    80001794:	93050513          	addi	a0,a0,-1744 # 800050c0 <kvmincrease+0x9a0>
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	a14080e7          	jalr	-1516(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 3; i++)
    800017a0:	0014849b          	addiw	s1,s1,1
    800017a4:	0ff4f493          	andi	s1,s1,255
    800017a8:	00200793          	li	a5,2
    800017ac:	fc97f4e3          	bgeu	a5,s1,80001774 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800017b0:	00004517          	auipc	a0,0x4
    800017b4:	85850513          	addi	a0,a0,-1960 # 80005008 <kvmincrease+0x8e8>
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	9f4080e7          	jalr	-1548(ra) # 800021ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800017c0:	00700313          	li	t1,7
    thread_dispatch();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	d8c080e7          	jalr	-628(ra) # 80001550 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800017cc:	00030913          	mv	s2,t1

    printString("A: t1=");
    800017d0:	00004517          	auipc	a0,0x4
    800017d4:	84850513          	addi	a0,a0,-1976 # 80005018 <kvmincrease+0x8f8>
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	9d4080e7          	jalr	-1580(ra) # 800021ac <_Z11printStringPKc>
    printInteger(t1);
    800017e0:	00090513          	mv	a0,s2
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	a0c080e7          	jalr	-1524(ra) # 800021f0 <_Z12printIntegerm>
    printString("\n");
    800017ec:	00004517          	auipc	a0,0x4
    800017f0:	8d450513          	addi	a0,a0,-1836 # 800050c0 <kvmincrease+0x9a0>
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	9b8080e7          	jalr	-1608(ra) # 800021ac <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800017fc:	01400513          	li	a0,20
    80001800:	00000097          	auipc	ra,0x0
    80001804:	ee4080e7          	jalr	-284(ra) # 800016e4 <_ZL9fibonaccim>
    80001808:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000180c:	00004517          	auipc	a0,0x4
    80001810:	81450513          	addi	a0,a0,-2028 # 80005020 <kvmincrease+0x900>
    80001814:	00001097          	auipc	ra,0x1
    80001818:	998080e7          	jalr	-1640(ra) # 800021ac <_Z11printStringPKc>
    printInteger(result);
    8000181c:	00090513          	mv	a0,s2
    80001820:	00001097          	auipc	ra,0x1
    80001824:	9d0080e7          	jalr	-1584(ra) # 800021f0 <_Z12printIntegerm>
    printString("\n");
    80001828:	00004517          	auipc	a0,0x4
    8000182c:	89850513          	addi	a0,a0,-1896 # 800050c0 <kvmincrease+0x9a0>
    80001830:	00001097          	auipc	ra,0x1
    80001834:	97c080e7          	jalr	-1668(ra) # 800021ac <_Z11printStringPKc>
    80001838:	0380006f          	j	80001870 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000183c:	00003517          	auipc	a0,0x3
    80001840:	7c450513          	addi	a0,a0,1988 # 80005000 <kvmincrease+0x8e0>
    80001844:	00001097          	auipc	ra,0x1
    80001848:	968080e7          	jalr	-1688(ra) # 800021ac <_Z11printStringPKc>
        printInteger(i);
    8000184c:	00048513          	mv	a0,s1
    80001850:	00001097          	auipc	ra,0x1
    80001854:	9a0080e7          	jalr	-1632(ra) # 800021f0 <_Z12printIntegerm>
        printString("\n");
    80001858:	00004517          	auipc	a0,0x4
    8000185c:	86850513          	addi	a0,a0,-1944 # 800050c0 <kvmincrease+0x9a0>
    80001860:	00001097          	auipc	ra,0x1
    80001864:	94c080e7          	jalr	-1716(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 6; i++)
    80001868:	0014849b          	addiw	s1,s1,1
    8000186c:	0ff4f493          	andi	s1,s1,255
    80001870:	00500793          	li	a5,5
    80001874:	fc97f4e3          	bgeu	a5,s1,8000183c <_Z11workerBodyAPv+0xe8>
    }

    kThread::running->setFinished(true);
    80001878:	00004797          	auipc	a5,0x4
    8000187c:	1d07b783          	ld	a5,464(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001880:	0007b783          	ld	a5,0(a5)

public:

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { kThread::finished = finished; }
    80001884:	00100713          	li	a4,1
    80001888:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	cc4080e7          	jalr	-828(ra) # 80001550 <_Z15thread_dispatchv>
    printString("yee");
    80001894:	00003517          	auipc	a0,0x3
    80001898:	79c50513          	addi	a0,a0,1948 # 80005030 <kvmincrease+0x910>
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	910080e7          	jalr	-1776(ra) # 800021ac <_Z11printStringPKc>
}
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	00013903          	ld	s2,0(sp)
    800018b4:	02010113          	addi	sp,sp,32
    800018b8:	00008067          	ret

00000000800018bc <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    800018bc:	fe010113          	addi	sp,sp,-32
    800018c0:	00113c23          	sd	ra,24(sp)
    800018c4:	00813823          	sd	s0,16(sp)
    800018c8:	00913423          	sd	s1,8(sp)
    800018cc:	01213023          	sd	s2,0(sp)
    800018d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800018d4:	00a00493          	li	s1,10
    800018d8:	0380006f          	j	80001910 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800018dc:	00003517          	auipc	a0,0x3
    800018e0:	75c50513          	addi	a0,a0,1884 # 80005038 <kvmincrease+0x918>
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	8c8080e7          	jalr	-1848(ra) # 800021ac <_Z11printStringPKc>
        printInteger(i);
    800018ec:	00048513          	mv	a0,s1
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	900080e7          	jalr	-1792(ra) # 800021f0 <_Z12printIntegerm>
        printString("\n");
    800018f8:	00003517          	auipc	a0,0x3
    800018fc:	7c850513          	addi	a0,a0,1992 # 800050c0 <kvmincrease+0x9a0>
    80001900:	00001097          	auipc	ra,0x1
    80001904:	8ac080e7          	jalr	-1876(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 13; i++)
    80001908:	0014849b          	addiw	s1,s1,1
    8000190c:	0ff4f493          	andi	s1,s1,255
    80001910:	00c00793          	li	a5,12
    80001914:	fc97f4e3          	bgeu	a5,s1,800018dc <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001918:	00003517          	auipc	a0,0x3
    8000191c:	72850513          	addi	a0,a0,1832 # 80005040 <kvmincrease+0x920>
    80001920:	00001097          	auipc	ra,0x1
    80001924:	88c080e7          	jalr	-1908(ra) # 800021ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001928:	00500313          	li	t1,5
    thread_dispatch();
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	c24080e7          	jalr	-988(ra) # 80001550 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    80001934:	01700513          	li	a0,23
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	dac080e7          	jalr	-596(ra) # 800016e4 <_ZL9fibonaccim>
    80001940:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001944:	00003517          	auipc	a0,0x3
    80001948:	6dc50513          	addi	a0,a0,1756 # 80005020 <kvmincrease+0x900>
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	860080e7          	jalr	-1952(ra) # 800021ac <_Z11printStringPKc>
    printInteger(result);
    80001954:	00090513          	mv	a0,s2
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	898080e7          	jalr	-1896(ra) # 800021f0 <_Z12printIntegerm>
    printString("\n");
    80001960:	00003517          	auipc	a0,0x3
    80001964:	76050513          	addi	a0,a0,1888 # 800050c0 <kvmincrease+0x9a0>
    80001968:	00001097          	auipc	ra,0x1
    8000196c:	844080e7          	jalr	-1980(ra) # 800021ac <_Z11printStringPKc>
    80001970:	0380006f          	j	800019a8 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001974:	00003517          	auipc	a0,0x3
    80001978:	6c450513          	addi	a0,a0,1732 # 80005038 <kvmincrease+0x918>
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	830080e7          	jalr	-2000(ra) # 800021ac <_Z11printStringPKc>
        printInteger(i);
    80001984:	00048513          	mv	a0,s1
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	868080e7          	jalr	-1944(ra) # 800021f0 <_Z12printIntegerm>
        printString("\n");
    80001990:	00003517          	auipc	a0,0x3
    80001994:	73050513          	addi	a0,a0,1840 # 800050c0 <kvmincrease+0x9a0>
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	814080e7          	jalr	-2028(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 16; i++)
    800019a0:	0014849b          	addiw	s1,s1,1
    800019a4:	0ff4f493          	andi	s1,s1,255
    800019a8:	00f00793          	li	a5,15
    800019ac:	fc97f4e3          	bgeu	a5,s1,80001974 <_Z11workerBodyBPv+0xb8>
    }
    kThread::running->setFinished(true);
    800019b0:	00004797          	auipc	a5,0x4
    800019b4:	0987b783          	ld	a5,152(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019b8:	0007b783          	ld	a5,0(a5)
    800019bc:	00100713          	li	a4,1
    800019c0:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	b8c080e7          	jalr	-1140(ra) # 80001550 <_Z15thread_dispatchv>

}
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	00013903          	ld	s2,0(sp)
    800019dc:	02010113          	addi	sp,sp,32
    800019e0:	00008067          	ret

00000000800019e4 <_Z11workerBodyCPv>:

void workerBodyC(void*)
{
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00113423          	sd	ra,8(sp)
    800019ec:	00813023          	sd	s0,0(sp)
    800019f0:	01010413          	addi	s0,sp,16
    while(1)
    {
        printString("C\n");
    800019f4:	00003517          	auipc	a0,0x3
    800019f8:	65c50513          	addi	a0,a0,1628 # 80005050 <kvmincrease+0x930>
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	7b0080e7          	jalr	1968(ra) # 800021ac <_Z11printStringPKc>
        kThread::yield();
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	1e4080e7          	jalr	484(ra) # 80001be8 <_ZN7kThread5yieldEv>
    while(1)
    80001a0c:	fe9ff06f          	j	800019f4 <_Z11workerBodyCPv+0x10>

0000000080001a10 <_Z11workerBodyDPv>:
    }
}

void workerBodyD(void*)
{
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00113423          	sd	ra,8(sp)
    80001a18:	00813023          	sd	s0,0(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    while(1)
    {
        printString("D\n");
    80001a20:	00003517          	auipc	a0,0x3
    80001a24:	63850513          	addi	a0,a0,1592 # 80005058 <kvmincrease+0x938>
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	784080e7          	jalr	1924(ra) # 800021ac <_Z11printStringPKc>
        kThread::yield();
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	1b8080e7          	jalr	440(ra) # 80001be8 <_ZN7kThread5yieldEv>
    while(1)
    80001a38:	fe9ff06f          	j	80001a20 <_Z11workerBodyDPv+0x10>

0000000080001a3c <_ZN7kThread13threadWrapperEv>:

    kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {
    80001a3c:	ff010113          	addi	sp,sp,-16
    80001a40:	00113423          	sd	ra,8(sp)
    80001a44:	00813023          	sd	s0,0(sp)
    80001a48:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	3dc080e7          	jalr	988(ra) # 80001e28 <_ZN5Riscv10popSppSpieEv>
  //  printInteger(100);
    running->body(running->arg);
    80001a54:	00004797          	auipc	a5,0x4
    80001a58:	05c7b783          	ld	a5,92(a5) # 80005ab0 <_ZN7kThread7runningE>
    80001a5c:	0087b703          	ld	a4,8(a5)
    80001a60:	0107b503          	ld	a0,16(a5)
    80001a64:	000700e7          	jalr	a4
//    ktThreadExit();
}
    80001a68:	00813083          	ld	ra,8(sp)
    80001a6c:	00013403          	ld	s0,0(sp)
    80001a70:	01010113          	addi	sp,sp,16
    80001a74:	00008067          	ret

0000000080001a78 <_ZN7kThreadC1EPFvPvES0_S0_>:
        finished(false)
    80001a78:	00b53423          	sd	a1,8(a0)
    80001a7c:	00c53823          	sd	a2,16(a0)
        stack(body != nullptr ? (uint64*)stack_space - DEFAULT_STACK_SIZE + 1 : nullptr),
    80001a80:	04058c63          	beqz	a1,80001ad8 <_ZN7kThreadC1EPFvPvES0_S0_+0x60>
    80001a84:	ffff87b7          	lui	a5,0xffff8
    80001a88:	00878793          	addi	a5,a5,8 # ffffffffffff8008 <end+0xffffffff7fff12c8>
    80001a8c:	00f686b3          	add	a3,a3,a5
        finished(false)
    80001a90:	00d53c23          	sd	a3,24(a0)
        context({body!=nullptr?(uint64)threadWrapper : 0,stack != nullptr ? (uint64)stack : 0}),
    80001a94:	04058663          	beqz	a1,80001ae0 <_ZN7kThreadC1EPFvPvES0_S0_+0x68>
    80001a98:	00000797          	auipc	a5,0x0
    80001a9c:	fa478793          	addi	a5,a5,-92 # 80001a3c <_ZN7kThread13threadWrapperEv>
        finished(false)
    80001aa0:	02f53023          	sd	a5,32(a0)
    80001aa4:	02d53423          	sd	a3,40(a0)
    80001aa8:	02050823          	sb	zero,48(a0)
        if(body != nullptr) { kScheduler::put(this);}
    80001aac:	02058e63          	beqz	a1,80001ae8 <_ZN7kThreadC1EPFvPvES0_S0_+0x70>
kThread::kThread(Body body, void* arg, void* stack_space) :
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
        if(body != nullptr) { kScheduler::put(this);}
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	6a4080e7          	jalr	1700(ra) # 80002164 <_ZN10kScheduler3putEP7kThread>
    }
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret
        stack(body != nullptr ? (uint64*)stack_space - DEFAULT_STACK_SIZE + 1 : nullptr),
    80001ad8:	00000693          	li	a3,0
    80001adc:	fb5ff06f          	j	80001a90 <_ZN7kThreadC1EPFvPvES0_S0_+0x18>
        context({body!=nullptr?(uint64)threadWrapper : 0,stack != nullptr ? (uint64)stack : 0}),
    80001ae0:	00000793          	li	a5,0
    80001ae4:	fbdff06f          	j	80001aa0 <_ZN7kThreadC1EPFvPvES0_S0_+0x28>
    80001ae8:	00008067          	ret

0000000080001aec <_ZN7kThread13createProcessEPFvPvES0_S0_>:
kThread* kThread::createProcess(Body body, void* args, void* stack_space) {
    80001aec:	fd010113          	addi	sp,sp,-48
    80001af0:	02113423          	sd	ra,40(sp)
    80001af4:	02813023          	sd	s0,32(sp)
    80001af8:	00913c23          	sd	s1,24(sp)
    80001afc:	01213823          	sd	s2,16(sp)
    80001b00:	01313423          	sd	s3,8(sp)
    80001b04:	01413023          	sd	s4,0(sp)
    80001b08:	03010413          	addi	s0,sp,48
    80001b0c:	00050913          	mv	s2,a0
    80001b10:	00058993          	mv	s3,a1
    80001b14:	00060a13          	mv	s4,a2
    return new kThread(body,args, stack_space);
    80001b18:	03800513          	li	a0,56
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	26c080e7          	jalr	620(ra) # 80001d88 <_Znwm>
    80001b24:	00050493          	mv	s1,a0
    80001b28:	000a0693          	mv	a3,s4
    80001b2c:	00098613          	mv	a2,s3
    80001b30:	00090593          	mv	a1,s2
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	f44080e7          	jalr	-188(ra) # 80001a78 <_ZN7kThreadC1EPFvPvES0_S0_>
    80001b3c:	0200006f          	j	80001b5c <_ZN7kThread13createProcessEPFvPvES0_S0_+0x70>
    80001b40:	00050913          	mv	s2,a0
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	290080e7          	jalr	656(ra) # 80001dd8 <_ZdlPv>
    80001b50:	00090513          	mv	a0,s2
    80001b54:	00005097          	auipc	ra,0x5
    80001b58:	044080e7          	jalr	68(ra) # 80006b98 <_Unwind_Resume>
}
    80001b5c:	00048513          	mv	a0,s1
    80001b60:	02813083          	ld	ra,40(sp)
    80001b64:	02013403          	ld	s0,32(sp)
    80001b68:	01813483          	ld	s1,24(sp)
    80001b6c:	01013903          	ld	s2,16(sp)
    80001b70:	00813983          	ld	s3,8(sp)
    80001b74:	00013a03          	ld	s4,0(sp)
    80001b78:	03010113          	addi	sp,sp,48
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN7kThread8dispatchEv>:
{
    80001b80:	fe010113          	addi	sp,sp,-32
    80001b84:	00113c23          	sd	ra,24(sp)
    80001b88:	00813823          	sd	s0,16(sp)
    80001b8c:	00913423          	sd	s1,8(sp)
    80001b90:	02010413          	addi	s0,sp,32
    kThread *old = running;
    80001b94:	00004497          	auipc	s1,0x4
    80001b98:	f1c4b483          	ld	s1,-228(s1) # 80005ab0 <_ZN7kThread7runningE>
    inline bool isFinished() const { return finished; }
    80001b9c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { kScheduler::put(old); }
    80001ba0:	02078c63          	beqz	a5,80001bd8 <_ZN7kThread8dispatchEv+0x58>
    running = kScheduler::get();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	590080e7          	jalr	1424(ra) # 80002134 <_ZN10kScheduler3getEv>
    80001bac:	00004797          	auipc	a5,0x4
    80001bb0:	f0a7b223          	sd	a0,-252(a5) # 80005ab0 <_ZN7kThread7runningE>
    kThread::contextSwitch(&old->context, &running->context);
    80001bb4:	02050593          	addi	a1,a0,32
    80001bb8:	02048513          	addi	a0,s1,32
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	828080e7          	jalr	-2008(ra) # 800013e4 <_ZN7kThread13contextSwitchEPNS_7ContextES1_>
}
    80001bc4:	01813083          	ld	ra,24(sp)
    80001bc8:	01013403          	ld	s0,16(sp)
    80001bcc:	00813483          	ld	s1,8(sp)
    80001bd0:	02010113          	addi	sp,sp,32
    80001bd4:	00008067          	ret
    if (!old->isFinished()) { kScheduler::put(old); }
    80001bd8:	00048513          	mv	a0,s1
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	588080e7          	jalr	1416(ra) # 80002164 <_ZN10kScheduler3putEP7kThread>
    80001be4:	fc1ff06f          	j	80001ba4 <_ZN7kThread8dispatchEv+0x24>

0000000080001be8 <_ZN7kThread5yieldEv>:
{
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	408080e7          	jalr	1032(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    kThread::dispatch();
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	f80080e7          	jalr	-128(ra) # 80001b80 <_ZN7kThread8dispatchEv>
    Riscv::popRegisters();
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	474080e7          	jalr	1140(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001c10:	00813083          	ld	ra,8(sp)
    80001c14:	00013403          	ld	s0,0(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN7kThread11kThreadExitEv>:

void kThread::kThreadExit() {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16
//treba da oslobodi memoriju koju je zauzeo
//i da se obrise objekat niti
}
    80001c2c:	00813403          	ld	s0,8(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <main>:
#include "../h/workers.hpp"

extern "C" { extern int __supervisorTrap;}

int main()
{
    80001c38:	fc010113          	addi	sp,sp,-64
    80001c3c:	02113c23          	sd	ra,56(sp)
    80001c40:	02813823          	sd	s0,48(sp)
    80001c44:	02913423          	sd	s1,40(sp)
    80001c48:	03213023          	sd	s2,32(sp)
    80001c4c:	04010413          	addi	s0,sp,64


   __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
    80001c50:	00004797          	auipc	a5,0x4
    80001c54:	e087b783          	ld	a5,-504(a5) # 80005a58 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c58:	0017e793          	ori	a5,a5,1
    80001c5c:	10579073          	csrw	stvec,a5
////    printInteger(ret);
////    printString(" mem_free done\n");

    kThread* threads[3];

    int retMain = thread_create(&threads[0], nullptr, nullptr);
    80001c60:	00000613          	li	a2,0
    80001c64:	00000593          	li	a1,0
    80001c68:	fc840513          	addi	a0,s0,-56
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	838080e7          	jalr	-1992(ra) # 800014a4 <_Z13thread_createPP7kThreadPFvPvES2_>
    printInteger(retMain);
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	57c080e7          	jalr	1404(ra) # 800021f0 <_Z12printIntegerm>
    printString("\n");
    80001c7c:	00003517          	auipc	a0,0x3
    80001c80:	44450513          	addi	a0,a0,1092 # 800050c0 <kvmincrease+0x9a0>
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	528080e7          	jalr	1320(ra) # 800021ac <_Z11printStringPKc>
    kThread::running = threads[0];
    80001c8c:	fc843703          	ld	a4,-56(s0)
    80001c90:	00004797          	auipc	a5,0x4
    80001c94:	db87b783          	ld	a5,-584(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c98:	00e7b023          	sd	a4,0(a5)

    int retA = thread_create(&threads[1], workerBodyA, nullptr);
    80001c9c:	00000613          	li	a2,0
    80001ca0:	00004597          	auipc	a1,0x4
    80001ca4:	db05b583          	ld	a1,-592(a1) # 80005a50 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ca8:	fd040513          	addi	a0,s0,-48
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	7f8080e7          	jalr	2040(ra) # 800014a4 <_Z13thread_createPP7kThreadPFvPvES2_>
    printInteger(retA);
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	53c080e7          	jalr	1340(ra) # 800021f0 <_Z12printIntegerm>
    printString("\n");
    80001cbc:	00003517          	auipc	a0,0x3
    80001cc0:	40450513          	addi	a0,a0,1028 # 800050c0 <kvmincrease+0x9a0>
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	4e8080e7          	jalr	1256(ra) # 800021ac <_Z11printStringPKc>
    int retB = thread_create(&threads[2], workerBodyB, nullptr);
    80001ccc:	00000613          	li	a2,0
    80001cd0:	00004597          	auipc	a1,0x4
    80001cd4:	d905b583          	ld	a1,-624(a1) # 80005a60 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cd8:	fd840513          	addi	a0,s0,-40
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	7c8080e7          	jalr	1992(ra) # 800014a4 <_Z13thread_createPP7kThreadPFvPvES2_>
    printInteger(retB);
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	50c080e7          	jalr	1292(ra) # 800021f0 <_Z12printIntegerm>
    printString("\n");
    80001cec:	00003517          	auipc	a0,0x3
    80001cf0:	3d450513          	addi	a0,a0,980 # 800050c0 <kvmincrease+0x9a0>
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	4b8080e7          	jalr	1208(ra) # 800021ac <_Z11printStringPKc>
    80001cfc:	00c0006f          	j	80001d08 <main+0xd0>
////    printInteger(retD);
////    printString("\n");

    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    {
        thread_dispatch();
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	850080e7          	jalr	-1968(ra) # 80001550 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    80001d08:	fd043783          	ld	a5,-48(s0)
    80001d0c:	0307c783          	lbu	a5,48(a5)
    80001d10:	fe0788e3          	beqz	a5,80001d00 <main+0xc8>
    80001d14:	fd843783          	ld	a5,-40(s0)
    80001d18:	0307c783          	lbu	a5,48(a5)
    80001d1c:	fe0782e3          	beqz	a5,80001d00 <main+0xc8>
    80001d20:	fc840493          	addi	s1,s0,-56
    80001d24:	0140006f          	j	80001d38 <main+0x100>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001d28:	00090513          	mv	a0,s2
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	0ac080e7          	jalr	172(ra) # 80001dd8 <_ZdlPv>
    for (auto &thread: threads)
    80001d34:	00848493          	addi	s1,s1,8
    80001d38:	fe040793          	addi	a5,s0,-32
    80001d3c:	02f48063          	beq	s1,a5,80001d5c <main+0x124>
        delete thread;
    80001d40:	0004b903          	ld	s2,0(s1)
    80001d44:	fe0908e3          	beqz	s2,80001d34 <main+0xfc>
    ~kThread() { delete[] stack; }
    80001d48:	01893503          	ld	a0,24(s2)
    80001d4c:	fc050ee3          	beqz	a0,80001d28 <main+0xf0>
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	0b0080e7          	jalr	176(ra) # 80001e00 <_ZdaPv>
    80001d58:	fd1ff06f          	j	80001d28 <main+0xf0>
    }
    //treba da testiras thread_create i thread_dispatch pomocu niti koje se nikad ne zavrsavaju
    printString("Main exit\n");
    80001d5c:	00003517          	auipc	a0,0x3
    80001d60:	30450513          	addi	a0,a0,772 # 80005060 <kvmincrease+0x940>
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	448080e7          	jalr	1096(ra) # 800021ac <_Z11printStringPKc>
    return 0;

}
    80001d6c:	00000513          	li	a0,0
    80001d70:	03813083          	ld	ra,56(sp)
    80001d74:	03013403          	ld	s0,48(sp)
    80001d78:	02813483          	ld	s1,40(sp)
    80001d7c:	02013903          	ld	s2,32(sp)
    80001d80:	04010113          	addi	sp,sp,64
    80001d84:	00008067          	ret

0000000080001d88 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001d98:	00002097          	auipc	ra,0x2
    80001d9c:	710080e7          	jalr	1808(ra) # 800044a8 <__mem_alloc>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_Znam>:

void *operator new[](size_t n)
{
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00113423          	sd	ra,8(sp)
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001dc0:	00002097          	auipc	ra,0x2
    80001dc4:	6e8080e7          	jalr	1768(ra) # 800044a8 <__mem_alloc>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001dd8:	ff010113          	addi	sp,sp,-16
    80001ddc:	00113423          	sd	ra,8(sp)
    80001de0:	00813023          	sd	s0,0(sp)
    80001de4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001de8:	00002097          	auipc	ra,0x2
    80001dec:	5f4080e7          	jalr	1524(ra) # 800043dc <__mem_free>
}
    80001df0:	00813083          	ld	ra,8(sp)
    80001df4:	00013403          	ld	s0,0(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	5cc080e7          	jalr	1484(ra) # 800043dc <__mem_free>
    80001e18:	00813083          	ld	ra,8(sp)
    80001e1c:	00013403          	ld	s0,0(sp)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <_ZN5Riscv10popSppSpieEv>:
#include "../h/kThread.hpp"

using Body = void (*)(void *);

void Riscv::popSppSpie()
{
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813423          	sd	s0,8(sp)
    80001e30:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra"); // sepc <=ra
    80001e34:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001e38:	10200073          	sret
}
    80001e3c:	00813403          	ld	s0,8(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN5Riscv13handleSyscallEv>:

void Riscv::handleSyscall() {
    80001e48:	fa010113          	addi	sp,sp,-96
    80001e4c:	04113c23          	sd	ra,88(sp)
    80001e50:	04813823          	sd	s0,80(sp)
    80001e54:	04913423          	sd	s1,72(sp)
    80001e58:	06010413          	addi	s0,sp,96
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001e5c:	142027f3          	csrr	a5,scause
    80001e60:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001e64:	fb843483          	ld	s1,-72(s0)
    //uint64 a0, a1, a2, a3, a4;

    uint64  scause = r_scause();

    //ecall iz korisnickog, ecall iz sistemskog rezima
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)//syscall  PROMENIO MI SE A4 ZASTO???
    80001e68:	ff848713          	addi	a4,s1,-8
    80001e6c:	00100793          	li	a5,1
    80001e70:	0ce7f263          	bgeu	a5,a4,80001f34 <_ZN5Riscv13handleSyscallEv+0xec>

    }
    else

    {
        if(scause == 0x0000000000000002UL)
    80001e74:	00200793          	li	a5,2
    80001e78:	1ef48863          	beq	s1,a5,80002068 <_ZN5Riscv13handleSyscallEv+0x220>
            printString("Ilegalna instrukcija\n:");
        else if (scause == 0x0000000000000005UL)
    80001e7c:	00500793          	li	a5,5
    80001e80:	1ef48e63          	beq	s1,a5,8000207c <_ZN5Riscv13handleSyscallEv+0x234>
            printString("Nedozvolena adresa citanja\n");
        else if (scause == 0x0000000000000007UL)
    80001e84:	00700793          	li	a5,7
    80001e88:	20f48463          	beq	s1,a5,80002090 <_ZN5Riscv13handleSyscallEv+0x248>
            printString("Nedozvolena adresa upisa\n");


        printString("scause: ");
    80001e8c:	00003517          	auipc	a0,0x3
    80001e90:	23c50513          	addi	a0,a0,572 # 800050c8 <kvmincrease+0x9a8>
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	318080e7          	jalr	792(ra) # 800021ac <_Z11printStringPKc>
        printInteger(scause);
    80001e9c:	00048513          	mv	a0,s1
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	350080e7          	jalr	848(ra) # 800021f0 <_Z12printIntegerm>
        printString("\n");
    80001ea8:	00003517          	auipc	a0,0x3
    80001eac:	21850513          	addi	a0,a0,536 # 800050c0 <kvmincrease+0x9a0>
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	2fc080e7          	jalr	764(ra) # 800021ac <_Z11printStringPKc>
        printString("sepc: ");
    80001eb8:	00003517          	auipc	a0,0x3
    80001ebc:	22050513          	addi	a0,a0,544 # 800050d8 <kvmincrease+0x9b8>
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	2ec080e7          	jalr	748(ra) # 800021ac <_Z11printStringPKc>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ec8:	141027f3          	csrr	a5,sepc
    80001ecc:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ed0:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	31c080e7          	jalr	796(ra) # 800021f0 <_Z12printIntegerm>
        printString("\n");
    80001edc:	00003517          	auipc	a0,0x3
    80001ee0:	1e450513          	addi	a0,a0,484 # 800050c0 <kvmincrease+0x9a0>
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	2c8080e7          	jalr	712(ra) # 800021ac <_Z11printStringPKc>
        printString("stval: ");
    80001eec:	00003517          	auipc	a0,0x3
    80001ef0:	1f450513          	addi	a0,a0,500 # 800050e0 <kvmincrease+0x9c0>
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	2b8080e7          	jalr	696(ra) # 800021ac <_Z11printStringPKc>
}

inline uint64 Riscv::r_stval()
{
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001efc:	143027f3          	csrr	a5,stval
    80001f00:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80001f04:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	2e8080e7          	jalr	744(ra) # 800021f0 <_Z12printIntegerm>
        printString("\n");
    80001f10:	00003517          	auipc	a0,0x3
    80001f14:	1b050513          	addi	a0,a0,432 # 800050c0 <kvmincrease+0x9a0>
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	294080e7          	jalr	660(ra) # 800021ac <_Z11printStringPKc>
        //while(1);
    }
}
    80001f20:	05813083          	ld	ra,88(sp)
    80001f24:	05013403          	ld	s0,80(sp)
    80001f28:	04813483          	ld	s1,72(sp)
    80001f2c:	06010113          	addi	sp,sp,96
    80001f30:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f34:	141027f3          	csrr	a5,sepc
    80001f38:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001f3c:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+ 4; // jer pc pokazuje na trenutnu instrukciju tj ecall, a po povratku treba da sksocim na  sledecu da se ne bih vrtela vecno
    80001f40:	00478793          	addi	a5,a5,4
    80001f44:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f48:	100027f3          	csrr	a5,sstatus
    80001f4c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001f50:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus(); // kupim vrednost statusnog registra
    80001f54:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a0" : "=r"(syscall));
    80001f58:	00050793          	mv	a5,a0
        switch(syscall)
    80001f5c:	01300713          	li	a4,19
    80001f60:	02f76463          	bltu	a4,a5,80001f88 <_ZN5Riscv13handleSyscallEv+0x140>
    80001f64:	06078263          	beqz	a5,80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
    80001f68:	06f76063          	bltu	a4,a5,80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
    80001f6c:	00279793          	slli	a5,a5,0x2
    80001f70:	00003717          	auipc	a4,0x3
    80001f74:	17870713          	addi	a4,a4,376 # 800050e8 <kvmincrease+0x9c8>
    80001f78:	00e787b3          	add	a5,a5,a4
    80001f7c:	0007a783          	lw	a5,0(a5)
    80001f80:	00e787b3          	add	a5,a5,a4
    80001f84:	00078067          	jr	a5
    80001f88:	05500713          	li	a4,85
    80001f8c:	02e79e63          	bne	a5,a4,80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
                __asm__ volatile("mv %0, a1":"=r"(arg1));
    80001f90:	00058713          	mv	a4,a1
                __asm__ volatile("mv %0, a2":"=r"(arg2));
    80001f94:	00060793          	mv	a5,a2
                __asm__ volatile("mv %0, a3":"=r"(arg3));
    80001f98:	00068613          	mv	a2,a3
                __asm__ volatile("mv %0, a6":"=r"(arg4));
    80001f9c:	00080693          	mv	a3,a6
                arg1 += arg2+arg3+arg4;
    80001fa0:	00c787bb          	addw	a5,a5,a2
    80001fa4:	00d787bb          	addw	a5,a5,a3
    80001fa8:	00e787bb          	addw	a5,a5,a4
                __asm__ volatile("mv a0, %0"::"r"(arg1));
    80001fac:	00078513          	mv	a0,a5
                break;
    80001fb0:	0180006f          	j	80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
                __asm__ volatile("mv %0, a1":"=r"(size));
    80001fb4:	00058513          	mv	a0,a1
                ptr = __mem_alloc(size);
    80001fb8:	00651513          	slli	a0,a0,0x6
    80001fbc:	00002097          	auipc	ra,0x2
    80001fc0:	4ec080e7          	jalr	1260(ra) # 800044a8 <__mem_alloc>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001fc4:	00050513          	mv	a0,a0
        __asm__ volatile("sd a0, 80(fp)"); //resava mi problem sa a0 (skontaj sta si tu radila)
    80001fc8:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001fcc:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001fd0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001fd4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001fd8:	14179073          	csrw	sepc,a5
}
    80001fdc:	f45ff06f          	j	80001f20 <_ZN5Riscv13handleSyscallEv+0xd8>
                __asm__ volatile("mv %0, a1": "=r"(ptr));
    80001fe0:	00058513          	mv	a0,a1
                ret = __mem_free(ptr);
    80001fe4:	00002097          	auipc	ra,0x2
    80001fe8:	3f8080e7          	jalr	1016(ra) # 800043dc <__mem_free>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80001fec:	00050513          	mv	a0,a0
                break;
    80001ff0:	fd9ff06f          	j	80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
                __asm__ volatile("mv %0, a1":"=r"(handle));
    80001ff4:	00058793          	mv	a5,a1
                __asm__ volatile("mv %0, a2":"=r"(body));
    80001ff8:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a3":"=r"(arg));
    80001ffc:	00068593          	mv	a1,a3
                if(body!= nullptr){
    80002000:	02050063          	beqz	a0,80002020 <_ZN5Riscv13handleSyscallEv+0x1d8>
                    __asm__ volatile("mv %0, a6":"=r"(stack_space));
    80002004:	00080613          	mv	a2,a6
                handle = kThread::createProcess(body,arg,stack_space);
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	ae4080e7          	jalr	-1308(ra) # 80001aec <_ZN7kThread13createProcessEPFvPvES0_S0_>
                if(handle) ret = 0;
    80002010:	00050c63          	beqz	a0,80002028 <_ZN5Riscv13handleSyscallEv+0x1e0>
    80002014:	00000793          	li	a5,0
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002018:	00078513          	mv	a0,a5
                break;
    8000201c:	fadff06f          	j	80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
                else stack_space = nullptr;
    80002020:	00000613          	li	a2,0
    80002024:	fe5ff06f          	j	80002008 <_ZN5Riscv13handleSyscallEv+0x1c0>
                else ret = -0x11;
    80002028:	fef00793          	li	a5,-17
    8000202c:	fedff06f          	j	80002018 <_ZN5Riscv13handleSyscallEv+0x1d0>
                if(kThread::running->body == nullptr){
    80002030:	00004797          	auipc	a5,0x4
    80002034:	a187b783          	ld	a5,-1512(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002038:	0007b783          	ld	a5,0(a5)
    8000203c:	0087b783          	ld	a5,8(a5)
    80002040:	00078863          	beqz	a5,80002050 <_ZN5Riscv13handleSyscallEv+0x208>
                else kThread::kThreadExit();
    80002044:	00000097          	auipc	ra,0x0
    80002048:	bdc080e7          	jalr	-1060(ra) # 80001c20 <_ZN7kThread11kThreadExitEv>
    8000204c:	f7dff06f          	j	80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
                    __asm__ volatile("mv a0, %0"::"r"(ret));
    80002050:	fee00793          	li	a5,-18
    80002054:	00078513          	mv	a0,a5
    80002058:	f71ff06f          	j	80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
                kThread::yield();
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	b8c080e7          	jalr	-1140(ra) # 80001be8 <_ZN7kThread5yieldEv>
                break;
    80002064:	f65ff06f          	j	80001fc8 <_ZN5Riscv13handleSyscallEv+0x180>
            printString("Ilegalna instrukcija\n:");
    80002068:	00003517          	auipc	a0,0x3
    8000206c:	00850513          	addi	a0,a0,8 # 80005070 <kvmincrease+0x950>
    80002070:	00000097          	auipc	ra,0x0
    80002074:	13c080e7          	jalr	316(ra) # 800021ac <_Z11printStringPKc>
    80002078:	e15ff06f          	j	80001e8c <_ZN5Riscv13handleSyscallEv+0x44>
            printString("Nedozvolena adresa citanja\n");
    8000207c:	00003517          	auipc	a0,0x3
    80002080:	00c50513          	addi	a0,a0,12 # 80005088 <kvmincrease+0x968>
    80002084:	00000097          	auipc	ra,0x0
    80002088:	128080e7          	jalr	296(ra) # 800021ac <_Z11printStringPKc>
    8000208c:	e01ff06f          	j	80001e8c <_ZN5Riscv13handleSyscallEv+0x44>
            printString("Nedozvolena adresa upisa\n");
    80002090:	00003517          	auipc	a0,0x3
    80002094:	01850513          	addi	a0,a0,24 # 800050a8 <kvmincrease+0x988>
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	114080e7          	jalr	276(ra) # 800021ac <_Z11printStringPKc>
    800020a0:	dedff06f          	j	80001e8c <_ZN5Riscv13handleSyscallEv+0x44>

00000000800020a4 <_ZN5Riscv20handleTimerInterruptEv>:
void Riscv::handleTimerInterrupt() {
    800020a4:	fd010113          	addi	sp,sp,-48
    800020a8:	02813423          	sd	s0,40(sp)
    800020ac:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800020b0:	00200793          	li	a5,2
    800020b4:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020b8:	141027f3          	csrr	a5,sepc
    800020bc:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800020c0:	fd843783          	ld	a5,-40(s0)

    mc_sip(SIP_SSIP); //zasto ovo?? - ni ne radim vrv

    uint64 volatile sepc = r_sepc();
    800020c4:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020c8:	100027f3          	csrr	a5,sstatus
    800020cc:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800020d0:	fd043783          	ld	a5,-48(s0)
    uint64 volatile sstatus = r_sstatus();
    800020d4:	fef43023          	sd	a5,-32(s0)
    w_sstatus(sstatus);
    800020d8:	fe043783          	ld	a5,-32(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020dc:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    800020e0:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020e4:	14179073          	csrw	sepc,a5
}
    800020e8:	02813403          	ld	s0,40(sp)
    800020ec:	03010113          	addi	sp,sp,48
    800020f0:	00008067          	ret

00000000800020f4 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    800020f4:	ff010113          	addi	sp,sp,-16
    800020f8:	00113423          	sd	ra,8(sp)
    800020fc:	00813023          	sd	s0,0(sp)
    80002100:	01010413          	addi	s0,sp,16
    console_handler();
    80002104:	00002097          	auipc	ra,0x2
    80002108:	570080e7          	jalr	1392(ra) # 80004674 <console_handler>
}
    8000210c:	00813083          	ld	ra,8(sp)
    80002110:	00013403          	ld	s0,0(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_ZN5Riscv14handleBadCauseEv>:

void Riscv::handleBadCause() {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16

    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <_ZN10kScheduler3getEv>:

kThread* kScheduler::headReady = nullptr;
kThread* kScheduler::tailReady = nullptr;
//ne zaboravi idle nit da ubacis na pocetku
kThread* kScheduler::get()
{
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00813423          	sd	s0,8(sp)
    8000213c:	01010413          	addi	s0,sp,16

    kThread* tmp = headReady;
    80002140:	00004517          	auipc	a0,0x4
    80002144:	97853503          	ld	a0,-1672(a0) # 80005ab8 <_ZN10kScheduler9headReadyE>
   if(headReady) headReady = headReady->nextReadyProccess;
    80002148:	00050863          	beqz	a0,80002158 <_ZN10kScheduler3getEv+0x24>
    8000214c:	00053783          	ld	a5,0(a0)
    80002150:	00004717          	auipc	a4,0x4
    80002154:	96f73423          	sd	a5,-1688(a4) # 80005ab8 <_ZN10kScheduler9headReadyE>
    return tmp;

}
    80002158:	00813403          	ld	s0,8(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <_ZN10kScheduler3putEP7kThread>:

void kScheduler::put(kThread* thr)
{
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00813423          	sd	s0,8(sp)
    8000216c:	01010413          	addi	s0,sp,16

    if(!headReady) headReady = thr;
    80002170:	00004797          	auipc	a5,0x4
    80002174:	9487b783          	ld	a5,-1720(a5) # 80005ab8 <_ZN10kScheduler9headReadyE>
    80002178:	02078463          	beqz	a5,800021a0 <_ZN10kScheduler3putEP7kThread+0x3c>

    if(tailReady)
    8000217c:	00004797          	auipc	a5,0x4
    80002180:	9447b783          	ld	a5,-1724(a5) # 80005ac0 <_ZN10kScheduler9tailReadyE>
    80002184:	00078463          	beqz	a5,8000218c <_ZN10kScheduler3putEP7kThread+0x28>
    {
        tailReady->nextReadyProccess = thr;
    80002188:	00a7b023          	sd	a0,0(a5)
    }

     tailReady = thr;
    8000218c:	00004797          	auipc	a5,0x4
    80002190:	92a7ba23          	sd	a0,-1740(a5) # 80005ac0 <_ZN10kScheduler9tailReadyE>

}
    80002194:	00813403          	ld	s0,8(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret
    if(!headReady) headReady = thr;
    800021a0:	00004797          	auipc	a5,0x4
    800021a4:	90a7bc23          	sd	a0,-1768(a5) # 80005ab8 <_ZN10kScheduler9headReadyE>
    800021a8:	fd5ff06f          	j	8000217c <_ZN10kScheduler3putEP7kThread+0x18>

00000000800021ac <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800021ac:	fe010113          	addi	sp,sp,-32
    800021b0:	00113c23          	sd	ra,24(sp)
    800021b4:	00813823          	sd	s0,16(sp)
    800021b8:	00913423          	sd	s1,8(sp)
    800021bc:	02010413          	addi	s0,sp,32
    800021c0:	00050493          	mv	s1,a0
    while (*string != '\0')
    800021c4:	0004c503          	lbu	a0,0(s1)
    800021c8:	00050a63          	beqz	a0,800021dc <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    800021cc:	00002097          	auipc	ra,0x2
    800021d0:	434080e7          	jalr	1076(ra) # 80004600 <__putc>
        string++;
    800021d4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021d8:	fedff06f          	j	800021c4 <_Z11printStringPKc+0x18>
    }
}
    800021dc:	01813083          	ld	ra,24(sp)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	00813483          	ld	s1,8(sp)
    800021e8:	02010113          	addi	sp,sp,32
    800021ec:	00008067          	ret

00000000800021f0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800021f0:	fd010113          	addi	sp,sp,-48
    800021f4:	02113423          	sd	ra,40(sp)
    800021f8:	02813023          	sd	s0,32(sp)
    800021fc:	00913c23          	sd	s1,24(sp)
    80002200:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002204:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002208:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000220c:	00a00613          	li	a2,10
    80002210:	02c5773b          	remuw	a4,a0,a2
    80002214:	02071693          	slli	a3,a4,0x20
    80002218:	0206d693          	srli	a3,a3,0x20
    8000221c:	00003717          	auipc	a4,0x3
    80002220:	f1c70713          	addi	a4,a4,-228 # 80005138 <_ZZ12printIntegermE6digits>
    80002224:	00d70733          	add	a4,a4,a3
    80002228:	00074703          	lbu	a4,0(a4)
    8000222c:	fe040693          	addi	a3,s0,-32
    80002230:	009687b3          	add	a5,a3,s1
    80002234:	0014849b          	addiw	s1,s1,1
    80002238:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000223c:	0005071b          	sext.w	a4,a0
    80002240:	02c5553b          	divuw	a0,a0,a2
    80002244:	00900793          	li	a5,9
    80002248:	fce7e2e3          	bltu	a5,a4,8000220c <_Z12printIntegerm+0x1c>

    if (neg==1)
        buf[i++] = '-';

    while (--i >= 0)
    8000224c:	fff4849b          	addiw	s1,s1,-1
    80002250:	0004ce63          	bltz	s1,8000226c <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002254:	fe040793          	addi	a5,s0,-32
    80002258:	009787b3          	add	a5,a5,s1
    8000225c:	ff07c503          	lbu	a0,-16(a5)
    80002260:	00002097          	auipc	ra,0x2
    80002264:	3a0080e7          	jalr	928(ra) # 80004600 <__putc>
    80002268:	fe5ff06f          	j	8000224c <_Z12printIntegerm+0x5c>
}
    8000226c:	02813083          	ld	ra,40(sp)
    80002270:	02013403          	ld	s0,32(sp)
    80002274:	01813483          	ld	s1,24(sp)
    80002278:	03010113          	addi	sp,sp,48
    8000227c:	00008067          	ret

0000000080002280 <_Z8printHexm>:


void printHex(uint64 integer)
{
    80002280:	fc010113          	addi	sp,sp,-64
    80002284:	02113c23          	sd	ra,56(sp)
    80002288:	02813823          	sd	s0,48(sp)
    8000228c:	02913423          	sd	s1,40(sp)
    80002290:	04010413          	addi	s0,sp,64
    static char hexDigits[] = "0123456789ABCDEF";
    char hexChars[17];
    int index = 0;
    80002294:	00000493          	li	s1,0

    while (integer > 0) {
    80002298:	02050863          	beqz	a0,800022c8 <_Z8printHexm+0x48>
        uint64 remainder = integer % 16;
    8000229c:	00f57713          	andi	a4,a0,15
        hexChars[index++] = hexDigits[remainder];
    800022a0:	00003797          	auipc	a5,0x3
    800022a4:	e9878793          	addi	a5,a5,-360 # 80005138 <_ZZ12printIntegermE6digits>
    800022a8:	00e787b3          	add	a5,a5,a4
    800022ac:	0107c703          	lbu	a4,16(a5)
    800022b0:	fe040793          	addi	a5,s0,-32
    800022b4:	009787b3          	add	a5,a5,s1
    800022b8:	fee78423          	sb	a4,-24(a5)
        integer /= 16;
    800022bc:	00455513          	srli	a0,a0,0x4
        hexChars[index++] = hexDigits[remainder];
    800022c0:	0014849b          	addiw	s1,s1,1
    while (integer > 0) {
    800022c4:	fd5ff06f          	j	80002298 <_Z8printHexm+0x18>
    }

    __putc('0');
    800022c8:	03000513          	li	a0,48
    800022cc:	00002097          	auipc	ra,0x2
    800022d0:	334080e7          	jalr	820(ra) # 80004600 <__putc>
    __putc('x');
    800022d4:	07800513          	li	a0,120
    800022d8:	00002097          	auipc	ra,0x2
    800022dc:	328080e7          	jalr	808(ra) # 80004600 <__putc>
    // Print the hexadecimal characters in reverse order
    while (--index >= 0) {
    800022e0:	fff4849b          	addiw	s1,s1,-1
    800022e4:	0004ce63          	bltz	s1,80002300 <_Z8printHexm+0x80>
        __putc(hexChars[index]);
    800022e8:	fe040793          	addi	a5,s0,-32
    800022ec:	009787b3          	add	a5,a5,s1
    800022f0:	fe87c503          	lbu	a0,-24(a5)
    800022f4:	00002097          	auipc	ra,0x2
    800022f8:	30c080e7          	jalr	780(ra) # 80004600 <__putc>
    800022fc:	fe5ff06f          	j	800022e0 <_Z8printHexm+0x60>
    }
    80002300:	03813083          	ld	ra,56(sp)
    80002304:	03013403          	ld	s0,48(sp)
    80002308:	02813483          	ld	s1,40(sp)
    8000230c:	04010113          	addi	sp,sp,64
    80002310:	00008067          	ret

0000000080002314 <start>:
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00813423          	sd	s0,8(sp)
    8000231c:	01010413          	addi	s0,sp,16
    80002320:	300027f3          	csrr	a5,mstatus
    80002324:	ffffe737          	lui	a4,0xffffe
    80002328:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7abf>
    8000232c:	00e7f7b3          	and	a5,a5,a4
    80002330:	00001737          	lui	a4,0x1
    80002334:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002338:	00e7e7b3          	or	a5,a5,a4
    8000233c:	30079073          	csrw	mstatus,a5
    80002340:	00000797          	auipc	a5,0x0
    80002344:	16078793          	addi	a5,a5,352 # 800024a0 <system_main>
    80002348:	34179073          	csrw	mepc,a5
    8000234c:	00000793          	li	a5,0
    80002350:	18079073          	csrw	satp,a5
    80002354:	000107b7          	lui	a5,0x10
    80002358:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000235c:	30279073          	csrw	medeleg,a5
    80002360:	30379073          	csrw	mideleg,a5
    80002364:	104027f3          	csrr	a5,sie
    80002368:	2227e793          	ori	a5,a5,546
    8000236c:	10479073          	csrw	sie,a5
    80002370:	fff00793          	li	a5,-1
    80002374:	00a7d793          	srli	a5,a5,0xa
    80002378:	3b079073          	csrw	pmpaddr0,a5
    8000237c:	00f00793          	li	a5,15
    80002380:	3a079073          	csrw	pmpcfg0,a5
    80002384:	f14027f3          	csrr	a5,mhartid
    80002388:	0200c737          	lui	a4,0x200c
    8000238c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002390:	0007869b          	sext.w	a3,a5
    80002394:	00269713          	slli	a4,a3,0x2
    80002398:	000f4637          	lui	a2,0xf4
    8000239c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800023a0:	00d70733          	add	a4,a4,a3
    800023a4:	0037979b          	slliw	a5,a5,0x3
    800023a8:	020046b7          	lui	a3,0x2004
    800023ac:	00d787b3          	add	a5,a5,a3
    800023b0:	00c585b3          	add	a1,a1,a2
    800023b4:	00371693          	slli	a3,a4,0x3
    800023b8:	00003717          	auipc	a4,0x3
    800023bc:	71870713          	addi	a4,a4,1816 # 80005ad0 <timer_scratch>
    800023c0:	00b7b023          	sd	a1,0(a5)
    800023c4:	00d70733          	add	a4,a4,a3
    800023c8:	00f73c23          	sd	a5,24(a4)
    800023cc:	02c73023          	sd	a2,32(a4)
    800023d0:	34071073          	csrw	mscratch,a4
    800023d4:	00000797          	auipc	a5,0x0
    800023d8:	6ec78793          	addi	a5,a5,1772 # 80002ac0 <timervec>
    800023dc:	30579073          	csrw	mtvec,a5
    800023e0:	300027f3          	csrr	a5,mstatus
    800023e4:	0087e793          	ori	a5,a5,8
    800023e8:	30079073          	csrw	mstatus,a5
    800023ec:	304027f3          	csrr	a5,mie
    800023f0:	0807e793          	ori	a5,a5,128
    800023f4:	30479073          	csrw	mie,a5
    800023f8:	f14027f3          	csrr	a5,mhartid
    800023fc:	0007879b          	sext.w	a5,a5
    80002400:	00078213          	mv	tp,a5
    80002404:	30200073          	mret
    80002408:	00813403          	ld	s0,8(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <timerinit>:
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813423          	sd	s0,8(sp)
    8000241c:	01010413          	addi	s0,sp,16
    80002420:	f14027f3          	csrr	a5,mhartid
    80002424:	0200c737          	lui	a4,0x200c
    80002428:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000242c:	0007869b          	sext.w	a3,a5
    80002430:	00269713          	slli	a4,a3,0x2
    80002434:	000f4637          	lui	a2,0xf4
    80002438:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000243c:	00d70733          	add	a4,a4,a3
    80002440:	0037979b          	slliw	a5,a5,0x3
    80002444:	020046b7          	lui	a3,0x2004
    80002448:	00d787b3          	add	a5,a5,a3
    8000244c:	00c585b3          	add	a1,a1,a2
    80002450:	00371693          	slli	a3,a4,0x3
    80002454:	00003717          	auipc	a4,0x3
    80002458:	67c70713          	addi	a4,a4,1660 # 80005ad0 <timer_scratch>
    8000245c:	00b7b023          	sd	a1,0(a5)
    80002460:	00d70733          	add	a4,a4,a3
    80002464:	00f73c23          	sd	a5,24(a4)
    80002468:	02c73023          	sd	a2,32(a4)
    8000246c:	34071073          	csrw	mscratch,a4
    80002470:	00000797          	auipc	a5,0x0
    80002474:	65078793          	addi	a5,a5,1616 # 80002ac0 <timervec>
    80002478:	30579073          	csrw	mtvec,a5
    8000247c:	300027f3          	csrr	a5,mstatus
    80002480:	0087e793          	ori	a5,a5,8
    80002484:	30079073          	csrw	mstatus,a5
    80002488:	304027f3          	csrr	a5,mie
    8000248c:	0807e793          	ori	a5,a5,128
    80002490:	30479073          	csrw	mie,a5
    80002494:	00813403          	ld	s0,8(sp)
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <system_main>:
    800024a0:	fe010113          	addi	sp,sp,-32
    800024a4:	00813823          	sd	s0,16(sp)
    800024a8:	00913423          	sd	s1,8(sp)
    800024ac:	00113c23          	sd	ra,24(sp)
    800024b0:	02010413          	addi	s0,sp,32
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	0c4080e7          	jalr	196(ra) # 80002578 <cpuid>
    800024bc:	00003497          	auipc	s1,0x3
    800024c0:	5c448493          	addi	s1,s1,1476 # 80005a80 <started>
    800024c4:	02050263          	beqz	a0,800024e8 <system_main+0x48>
    800024c8:	0004a783          	lw	a5,0(s1)
    800024cc:	0007879b          	sext.w	a5,a5
    800024d0:	fe078ce3          	beqz	a5,800024c8 <system_main+0x28>
    800024d4:	0ff0000f          	fence
    800024d8:	00003517          	auipc	a0,0x3
    800024dc:	cb850513          	addi	a0,a0,-840 # 80005190 <_ZZ8printHexmE9hexDigits+0x48>
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	a7c080e7          	jalr	-1412(ra) # 80002f5c <panic>
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	9d0080e7          	jalr	-1584(ra) # 80002eb8 <consoleinit>
    800024f0:	00001097          	auipc	ra,0x1
    800024f4:	15c080e7          	jalr	348(ra) # 8000364c <printfinit>
    800024f8:	00003517          	auipc	a0,0x3
    800024fc:	bc850513          	addi	a0,a0,-1080 # 800050c0 <kvmincrease+0x9a0>
    80002500:	00001097          	auipc	ra,0x1
    80002504:	ab8080e7          	jalr	-1352(ra) # 80002fb8 <__printf>
    80002508:	00003517          	auipc	a0,0x3
    8000250c:	c5850513          	addi	a0,a0,-936 # 80005160 <_ZZ8printHexmE9hexDigits+0x18>
    80002510:	00001097          	auipc	ra,0x1
    80002514:	aa8080e7          	jalr	-1368(ra) # 80002fb8 <__printf>
    80002518:	00003517          	auipc	a0,0x3
    8000251c:	ba850513          	addi	a0,a0,-1112 # 800050c0 <kvmincrease+0x9a0>
    80002520:	00001097          	auipc	ra,0x1
    80002524:	a98080e7          	jalr	-1384(ra) # 80002fb8 <__printf>
    80002528:	00001097          	auipc	ra,0x1
    8000252c:	4b0080e7          	jalr	1200(ra) # 800039d8 <kinit>
    80002530:	00000097          	auipc	ra,0x0
    80002534:	148080e7          	jalr	328(ra) # 80002678 <trapinit>
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	16c080e7          	jalr	364(ra) # 800026a4 <trapinithart>
    80002540:	00000097          	auipc	ra,0x0
    80002544:	5c0080e7          	jalr	1472(ra) # 80002b00 <plicinit>
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	5e0080e7          	jalr	1504(ra) # 80002b28 <plicinithart>
    80002550:	00000097          	auipc	ra,0x0
    80002554:	078080e7          	jalr	120(ra) # 800025c8 <userinit>
    80002558:	0ff0000f          	fence
    8000255c:	00100793          	li	a5,1
    80002560:	00003517          	auipc	a0,0x3
    80002564:	c1850513          	addi	a0,a0,-1000 # 80005178 <_ZZ8printHexmE9hexDigits+0x30>
    80002568:	00f4a023          	sw	a5,0(s1)
    8000256c:	00001097          	auipc	ra,0x1
    80002570:	a4c080e7          	jalr	-1460(ra) # 80002fb8 <__printf>
    80002574:	0000006f          	j	80002574 <system_main+0xd4>

0000000080002578 <cpuid>:
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00813423          	sd	s0,8(sp)
    80002580:	01010413          	addi	s0,sp,16
    80002584:	00020513          	mv	a0,tp
    80002588:	00813403          	ld	s0,8(sp)
    8000258c:	0005051b          	sext.w	a0,a0
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <mycpu>:
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00813423          	sd	s0,8(sp)
    800025a0:	01010413          	addi	s0,sp,16
    800025a4:	00020793          	mv	a5,tp
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	0007879b          	sext.w	a5,a5
    800025b0:	00779793          	slli	a5,a5,0x7
    800025b4:	00004517          	auipc	a0,0x4
    800025b8:	54c50513          	addi	a0,a0,1356 # 80006b00 <cpus>
    800025bc:	00f50533          	add	a0,a0,a5
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <userinit>:
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    800025d4:	00813403          	ld	s0,8(sp)
    800025d8:	01010113          	addi	sp,sp,16
    800025dc:	fffff317          	auipc	t1,0xfffff
    800025e0:	65c30067          	jr	1628(t1) # 80001c38 <main>

00000000800025e4 <either_copyout>:
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813023          	sd	s0,0(sp)
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	01010413          	addi	s0,sp,16
    800025f4:	02051663          	bnez	a0,80002620 <either_copyout+0x3c>
    800025f8:	00058513          	mv	a0,a1
    800025fc:	00060593          	mv	a1,a2
    80002600:	0006861b          	sext.w	a2,a3
    80002604:	00002097          	auipc	ra,0x2
    80002608:	c60080e7          	jalr	-928(ra) # 80004264 <__memmove>
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	00000513          	li	a0,0
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret
    80002620:	00003517          	auipc	a0,0x3
    80002624:	b9850513          	addi	a0,a0,-1128 # 800051b8 <_ZZ8printHexmE9hexDigits+0x70>
    80002628:	00001097          	auipc	ra,0x1
    8000262c:	934080e7          	jalr	-1740(ra) # 80002f5c <panic>

0000000080002630 <either_copyin>:
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00813023          	sd	s0,0(sp)
    80002638:	00113423          	sd	ra,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	02059463          	bnez	a1,80002668 <either_copyin+0x38>
    80002644:	00060593          	mv	a1,a2
    80002648:	0006861b          	sext.w	a2,a3
    8000264c:	00002097          	auipc	ra,0x2
    80002650:	c18080e7          	jalr	-1000(ra) # 80004264 <__memmove>
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	00000513          	li	a0,0
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret
    80002668:	00003517          	auipc	a0,0x3
    8000266c:	b7850513          	addi	a0,a0,-1160 # 800051e0 <_ZZ8printHexmE9hexDigits+0x98>
    80002670:	00001097          	auipc	ra,0x1
    80002674:	8ec080e7          	jalr	-1812(ra) # 80002f5c <panic>

0000000080002678 <trapinit>:
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00813423          	sd	s0,8(sp)
    80002680:	01010413          	addi	s0,sp,16
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	00003597          	auipc	a1,0x3
    8000268c:	b8058593          	addi	a1,a1,-1152 # 80005208 <_ZZ8printHexmE9hexDigits+0xc0>
    80002690:	00004517          	auipc	a0,0x4
    80002694:	4f050513          	addi	a0,a0,1264 # 80006b80 <tickslock>
    80002698:	01010113          	addi	sp,sp,16
    8000269c:	00001317          	auipc	t1,0x1
    800026a0:	5cc30067          	jr	1484(t1) # 80003c68 <initlock>

00000000800026a4 <trapinithart>:
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00813423          	sd	s0,8(sp)
    800026ac:	01010413          	addi	s0,sp,16
    800026b0:	00000797          	auipc	a5,0x0
    800026b4:	30078793          	addi	a5,a5,768 # 800029b0 <kernelvec>
    800026b8:	10579073          	csrw	stvec,a5
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <usertrap>:
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00813423          	sd	s0,8(sp)
    800026d0:	01010413          	addi	s0,sp,16
    800026d4:	00813403          	ld	s0,8(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret

00000000800026e0 <usertrapret>:
    800026e0:	ff010113          	addi	sp,sp,-16
    800026e4:	00813423          	sd	s0,8(sp)
    800026e8:	01010413          	addi	s0,sp,16
    800026ec:	00813403          	ld	s0,8(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret

00000000800026f8 <kerneltrap>:
    800026f8:	fe010113          	addi	sp,sp,-32
    800026fc:	00813823          	sd	s0,16(sp)
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00913423          	sd	s1,8(sp)
    80002708:	02010413          	addi	s0,sp,32
    8000270c:	142025f3          	csrr	a1,scause
    80002710:	100027f3          	csrr	a5,sstatus
    80002714:	0027f793          	andi	a5,a5,2
    80002718:	10079c63          	bnez	a5,80002830 <kerneltrap+0x138>
    8000271c:	142027f3          	csrr	a5,scause
    80002720:	0207ce63          	bltz	a5,8000275c <kerneltrap+0x64>
    80002724:	00003517          	auipc	a0,0x3
    80002728:	b2c50513          	addi	a0,a0,-1236 # 80005250 <_ZZ8printHexmE9hexDigits+0x108>
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	88c080e7          	jalr	-1908(ra) # 80002fb8 <__printf>
    80002734:	141025f3          	csrr	a1,sepc
    80002738:	14302673          	csrr	a2,stval
    8000273c:	00003517          	auipc	a0,0x3
    80002740:	b2450513          	addi	a0,a0,-1244 # 80005260 <_ZZ8printHexmE9hexDigits+0x118>
    80002744:	00001097          	auipc	ra,0x1
    80002748:	874080e7          	jalr	-1932(ra) # 80002fb8 <__printf>
    8000274c:	00003517          	auipc	a0,0x3
    80002750:	b2c50513          	addi	a0,a0,-1236 # 80005278 <_ZZ8printHexmE9hexDigits+0x130>
    80002754:	00001097          	auipc	ra,0x1
    80002758:	808080e7          	jalr	-2040(ra) # 80002f5c <panic>
    8000275c:	0ff7f713          	andi	a4,a5,255
    80002760:	00900693          	li	a3,9
    80002764:	04d70063          	beq	a4,a3,800027a4 <kerneltrap+0xac>
    80002768:	fff00713          	li	a4,-1
    8000276c:	03f71713          	slli	a4,a4,0x3f
    80002770:	00170713          	addi	a4,a4,1
    80002774:	fae798e3          	bne	a5,a4,80002724 <kerneltrap+0x2c>
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	e00080e7          	jalr	-512(ra) # 80002578 <cpuid>
    80002780:	06050663          	beqz	a0,800027ec <kerneltrap+0xf4>
    80002784:	144027f3          	csrr	a5,sip
    80002788:	ffd7f793          	andi	a5,a5,-3
    8000278c:	14479073          	csrw	sip,a5
    80002790:	01813083          	ld	ra,24(sp)
    80002794:	01013403          	ld	s0,16(sp)
    80002798:	00813483          	ld	s1,8(sp)
    8000279c:	02010113          	addi	sp,sp,32
    800027a0:	00008067          	ret
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	3d0080e7          	jalr	976(ra) # 80002b74 <plic_claim>
    800027ac:	00a00793          	li	a5,10
    800027b0:	00050493          	mv	s1,a0
    800027b4:	06f50863          	beq	a0,a5,80002824 <kerneltrap+0x12c>
    800027b8:	fc050ce3          	beqz	a0,80002790 <kerneltrap+0x98>
    800027bc:	00050593          	mv	a1,a0
    800027c0:	00003517          	auipc	a0,0x3
    800027c4:	a7050513          	addi	a0,a0,-1424 # 80005230 <_ZZ8printHexmE9hexDigits+0xe8>
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	7f0080e7          	jalr	2032(ra) # 80002fb8 <__printf>
    800027d0:	01013403          	ld	s0,16(sp)
    800027d4:	01813083          	ld	ra,24(sp)
    800027d8:	00048513          	mv	a0,s1
    800027dc:	00813483          	ld	s1,8(sp)
    800027e0:	02010113          	addi	sp,sp,32
    800027e4:	00000317          	auipc	t1,0x0
    800027e8:	3c830067          	jr	968(t1) # 80002bac <plic_complete>
    800027ec:	00004517          	auipc	a0,0x4
    800027f0:	39450513          	addi	a0,a0,916 # 80006b80 <tickslock>
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	498080e7          	jalr	1176(ra) # 80003c8c <acquire>
    800027fc:	00003717          	auipc	a4,0x3
    80002800:	28870713          	addi	a4,a4,648 # 80005a84 <ticks>
    80002804:	00072783          	lw	a5,0(a4)
    80002808:	00004517          	auipc	a0,0x4
    8000280c:	37850513          	addi	a0,a0,888 # 80006b80 <tickslock>
    80002810:	0017879b          	addiw	a5,a5,1
    80002814:	00f72023          	sw	a5,0(a4)
    80002818:	00001097          	auipc	ra,0x1
    8000281c:	540080e7          	jalr	1344(ra) # 80003d58 <release>
    80002820:	f65ff06f          	j	80002784 <kerneltrap+0x8c>
    80002824:	00001097          	auipc	ra,0x1
    80002828:	09c080e7          	jalr	156(ra) # 800038c0 <uartintr>
    8000282c:	fa5ff06f          	j	800027d0 <kerneltrap+0xd8>
    80002830:	00003517          	auipc	a0,0x3
    80002834:	9e050513          	addi	a0,a0,-1568 # 80005210 <_ZZ8printHexmE9hexDigits+0xc8>
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	724080e7          	jalr	1828(ra) # 80002f5c <panic>

0000000080002840 <clockintr>:
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00813823          	sd	s0,16(sp)
    80002848:	00913423          	sd	s1,8(sp)
    8000284c:	00113c23          	sd	ra,24(sp)
    80002850:	02010413          	addi	s0,sp,32
    80002854:	00004497          	auipc	s1,0x4
    80002858:	32c48493          	addi	s1,s1,812 # 80006b80 <tickslock>
    8000285c:	00048513          	mv	a0,s1
    80002860:	00001097          	auipc	ra,0x1
    80002864:	42c080e7          	jalr	1068(ra) # 80003c8c <acquire>
    80002868:	00003717          	auipc	a4,0x3
    8000286c:	21c70713          	addi	a4,a4,540 # 80005a84 <ticks>
    80002870:	00072783          	lw	a5,0(a4)
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	01813083          	ld	ra,24(sp)
    8000287c:	00048513          	mv	a0,s1
    80002880:	0017879b          	addiw	a5,a5,1
    80002884:	00813483          	ld	s1,8(sp)
    80002888:	00f72023          	sw	a5,0(a4)
    8000288c:	02010113          	addi	sp,sp,32
    80002890:	00001317          	auipc	t1,0x1
    80002894:	4c830067          	jr	1224(t1) # 80003d58 <release>

0000000080002898 <devintr>:
    80002898:	142027f3          	csrr	a5,scause
    8000289c:	00000513          	li	a0,0
    800028a0:	0007c463          	bltz	a5,800028a8 <devintr+0x10>
    800028a4:	00008067          	ret
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00813823          	sd	s0,16(sp)
    800028b0:	00113c23          	sd	ra,24(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	02010413          	addi	s0,sp,32
    800028bc:	0ff7f713          	andi	a4,a5,255
    800028c0:	00900693          	li	a3,9
    800028c4:	04d70c63          	beq	a4,a3,8000291c <devintr+0x84>
    800028c8:	fff00713          	li	a4,-1
    800028cc:	03f71713          	slli	a4,a4,0x3f
    800028d0:	00170713          	addi	a4,a4,1
    800028d4:	00e78c63          	beq	a5,a4,800028ec <devintr+0x54>
    800028d8:	01813083          	ld	ra,24(sp)
    800028dc:	01013403          	ld	s0,16(sp)
    800028e0:	00813483          	ld	s1,8(sp)
    800028e4:	02010113          	addi	sp,sp,32
    800028e8:	00008067          	ret
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	c8c080e7          	jalr	-884(ra) # 80002578 <cpuid>
    800028f4:	06050663          	beqz	a0,80002960 <devintr+0xc8>
    800028f8:	144027f3          	csrr	a5,sip
    800028fc:	ffd7f793          	andi	a5,a5,-3
    80002900:	14479073          	csrw	sip,a5
    80002904:	01813083          	ld	ra,24(sp)
    80002908:	01013403          	ld	s0,16(sp)
    8000290c:	00813483          	ld	s1,8(sp)
    80002910:	00200513          	li	a0,2
    80002914:	02010113          	addi	sp,sp,32
    80002918:	00008067          	ret
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	258080e7          	jalr	600(ra) # 80002b74 <plic_claim>
    80002924:	00a00793          	li	a5,10
    80002928:	00050493          	mv	s1,a0
    8000292c:	06f50663          	beq	a0,a5,80002998 <devintr+0x100>
    80002930:	00100513          	li	a0,1
    80002934:	fa0482e3          	beqz	s1,800028d8 <devintr+0x40>
    80002938:	00048593          	mv	a1,s1
    8000293c:	00003517          	auipc	a0,0x3
    80002940:	8f450513          	addi	a0,a0,-1804 # 80005230 <_ZZ8printHexmE9hexDigits+0xe8>
    80002944:	00000097          	auipc	ra,0x0
    80002948:	674080e7          	jalr	1652(ra) # 80002fb8 <__printf>
    8000294c:	00048513          	mv	a0,s1
    80002950:	00000097          	auipc	ra,0x0
    80002954:	25c080e7          	jalr	604(ra) # 80002bac <plic_complete>
    80002958:	00100513          	li	a0,1
    8000295c:	f7dff06f          	j	800028d8 <devintr+0x40>
    80002960:	00004517          	auipc	a0,0x4
    80002964:	22050513          	addi	a0,a0,544 # 80006b80 <tickslock>
    80002968:	00001097          	auipc	ra,0x1
    8000296c:	324080e7          	jalr	804(ra) # 80003c8c <acquire>
    80002970:	00003717          	auipc	a4,0x3
    80002974:	11470713          	addi	a4,a4,276 # 80005a84 <ticks>
    80002978:	00072783          	lw	a5,0(a4)
    8000297c:	00004517          	auipc	a0,0x4
    80002980:	20450513          	addi	a0,a0,516 # 80006b80 <tickslock>
    80002984:	0017879b          	addiw	a5,a5,1
    80002988:	00f72023          	sw	a5,0(a4)
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	3cc080e7          	jalr	972(ra) # 80003d58 <release>
    80002994:	f65ff06f          	j	800028f8 <devintr+0x60>
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	f28080e7          	jalr	-216(ra) # 800038c0 <uartintr>
    800029a0:	fadff06f          	j	8000294c <devintr+0xb4>
	...

00000000800029b0 <kernelvec>:
    800029b0:	f0010113          	addi	sp,sp,-256
    800029b4:	00113023          	sd	ra,0(sp)
    800029b8:	00213423          	sd	sp,8(sp)
    800029bc:	00313823          	sd	gp,16(sp)
    800029c0:	00413c23          	sd	tp,24(sp)
    800029c4:	02513023          	sd	t0,32(sp)
    800029c8:	02613423          	sd	t1,40(sp)
    800029cc:	02713823          	sd	t2,48(sp)
    800029d0:	02813c23          	sd	s0,56(sp)
    800029d4:	04913023          	sd	s1,64(sp)
    800029d8:	04a13423          	sd	a0,72(sp)
    800029dc:	04b13823          	sd	a1,80(sp)
    800029e0:	04c13c23          	sd	a2,88(sp)
    800029e4:	06d13023          	sd	a3,96(sp)
    800029e8:	06e13423          	sd	a4,104(sp)
    800029ec:	06f13823          	sd	a5,112(sp)
    800029f0:	07013c23          	sd	a6,120(sp)
    800029f4:	09113023          	sd	a7,128(sp)
    800029f8:	09213423          	sd	s2,136(sp)
    800029fc:	09313823          	sd	s3,144(sp)
    80002a00:	09413c23          	sd	s4,152(sp)
    80002a04:	0b513023          	sd	s5,160(sp)
    80002a08:	0b613423          	sd	s6,168(sp)
    80002a0c:	0b713823          	sd	s7,176(sp)
    80002a10:	0b813c23          	sd	s8,184(sp)
    80002a14:	0d913023          	sd	s9,192(sp)
    80002a18:	0da13423          	sd	s10,200(sp)
    80002a1c:	0db13823          	sd	s11,208(sp)
    80002a20:	0dc13c23          	sd	t3,216(sp)
    80002a24:	0fd13023          	sd	t4,224(sp)
    80002a28:	0fe13423          	sd	t5,232(sp)
    80002a2c:	0ff13823          	sd	t6,240(sp)
    80002a30:	cc9ff0ef          	jal	ra,800026f8 <kerneltrap>
    80002a34:	00013083          	ld	ra,0(sp)
    80002a38:	00813103          	ld	sp,8(sp)
    80002a3c:	01013183          	ld	gp,16(sp)
    80002a40:	02013283          	ld	t0,32(sp)
    80002a44:	02813303          	ld	t1,40(sp)
    80002a48:	03013383          	ld	t2,48(sp)
    80002a4c:	03813403          	ld	s0,56(sp)
    80002a50:	04013483          	ld	s1,64(sp)
    80002a54:	04813503          	ld	a0,72(sp)
    80002a58:	05013583          	ld	a1,80(sp)
    80002a5c:	05813603          	ld	a2,88(sp)
    80002a60:	06013683          	ld	a3,96(sp)
    80002a64:	06813703          	ld	a4,104(sp)
    80002a68:	07013783          	ld	a5,112(sp)
    80002a6c:	07813803          	ld	a6,120(sp)
    80002a70:	08013883          	ld	a7,128(sp)
    80002a74:	08813903          	ld	s2,136(sp)
    80002a78:	09013983          	ld	s3,144(sp)
    80002a7c:	09813a03          	ld	s4,152(sp)
    80002a80:	0a013a83          	ld	s5,160(sp)
    80002a84:	0a813b03          	ld	s6,168(sp)
    80002a88:	0b013b83          	ld	s7,176(sp)
    80002a8c:	0b813c03          	ld	s8,184(sp)
    80002a90:	0c013c83          	ld	s9,192(sp)
    80002a94:	0c813d03          	ld	s10,200(sp)
    80002a98:	0d013d83          	ld	s11,208(sp)
    80002a9c:	0d813e03          	ld	t3,216(sp)
    80002aa0:	0e013e83          	ld	t4,224(sp)
    80002aa4:	0e813f03          	ld	t5,232(sp)
    80002aa8:	0f013f83          	ld	t6,240(sp)
    80002aac:	10010113          	addi	sp,sp,256
    80002ab0:	10200073          	sret
    80002ab4:	00000013          	nop
    80002ab8:	00000013          	nop
    80002abc:	00000013          	nop

0000000080002ac0 <timervec>:
    80002ac0:	34051573          	csrrw	a0,mscratch,a0
    80002ac4:	00b53023          	sd	a1,0(a0)
    80002ac8:	00c53423          	sd	a2,8(a0)
    80002acc:	00d53823          	sd	a3,16(a0)
    80002ad0:	01853583          	ld	a1,24(a0)
    80002ad4:	02053603          	ld	a2,32(a0)
    80002ad8:	0005b683          	ld	a3,0(a1)
    80002adc:	00c686b3          	add	a3,a3,a2
    80002ae0:	00d5b023          	sd	a3,0(a1)
    80002ae4:	00200593          	li	a1,2
    80002ae8:	14459073          	csrw	sip,a1
    80002aec:	01053683          	ld	a3,16(a0)
    80002af0:	00853603          	ld	a2,8(a0)
    80002af4:	00053583          	ld	a1,0(a0)
    80002af8:	34051573          	csrrw	a0,mscratch,a0
    80002afc:	30200073          	mret

0000000080002b00 <plicinit>:
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00813423          	sd	s0,8(sp)
    80002b08:	01010413          	addi	s0,sp,16
    80002b0c:	00813403          	ld	s0,8(sp)
    80002b10:	0c0007b7          	lui	a5,0xc000
    80002b14:	00100713          	li	a4,1
    80002b18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002b1c:	00e7a223          	sw	a4,4(a5)
    80002b20:	01010113          	addi	sp,sp,16
    80002b24:	00008067          	ret

0000000080002b28 <plicinithart>:
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00813023          	sd	s0,0(sp)
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	a40080e7          	jalr	-1472(ra) # 80002578 <cpuid>
    80002b40:	0085171b          	slliw	a4,a0,0x8
    80002b44:	0c0027b7          	lui	a5,0xc002
    80002b48:	00e787b3          	add	a5,a5,a4
    80002b4c:	40200713          	li	a4,1026
    80002b50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002b54:	00813083          	ld	ra,8(sp)
    80002b58:	00013403          	ld	s0,0(sp)
    80002b5c:	00d5151b          	slliw	a0,a0,0xd
    80002b60:	0c2017b7          	lui	a5,0xc201
    80002b64:	00a78533          	add	a0,a5,a0
    80002b68:	00052023          	sw	zero,0(a0)
    80002b6c:	01010113          	addi	sp,sp,16
    80002b70:	00008067          	ret

0000000080002b74 <plic_claim>:
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00813023          	sd	s0,0(sp)
    80002b7c:	00113423          	sd	ra,8(sp)
    80002b80:	01010413          	addi	s0,sp,16
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	9f4080e7          	jalr	-1548(ra) # 80002578 <cpuid>
    80002b8c:	00813083          	ld	ra,8(sp)
    80002b90:	00013403          	ld	s0,0(sp)
    80002b94:	00d5151b          	slliw	a0,a0,0xd
    80002b98:	0c2017b7          	lui	a5,0xc201
    80002b9c:	00a78533          	add	a0,a5,a0
    80002ba0:	00452503          	lw	a0,4(a0)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <plic_complete>:
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	00113c23          	sd	ra,24(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    80002bc0:	00050493          	mv	s1,a0
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	9b4080e7          	jalr	-1612(ra) # 80002578 <cpuid>
    80002bcc:	01813083          	ld	ra,24(sp)
    80002bd0:	01013403          	ld	s0,16(sp)
    80002bd4:	00d5179b          	slliw	a5,a0,0xd
    80002bd8:	0c201737          	lui	a4,0xc201
    80002bdc:	00f707b3          	add	a5,a4,a5
    80002be0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002be4:	00813483          	ld	s1,8(sp)
    80002be8:	02010113          	addi	sp,sp,32
    80002bec:	00008067          	ret

0000000080002bf0 <consolewrite>:
    80002bf0:	fb010113          	addi	sp,sp,-80
    80002bf4:	04813023          	sd	s0,64(sp)
    80002bf8:	04113423          	sd	ra,72(sp)
    80002bfc:	02913c23          	sd	s1,56(sp)
    80002c00:	03213823          	sd	s2,48(sp)
    80002c04:	03313423          	sd	s3,40(sp)
    80002c08:	03413023          	sd	s4,32(sp)
    80002c0c:	01513c23          	sd	s5,24(sp)
    80002c10:	05010413          	addi	s0,sp,80
    80002c14:	06c05c63          	blez	a2,80002c8c <consolewrite+0x9c>
    80002c18:	00060993          	mv	s3,a2
    80002c1c:	00050a13          	mv	s4,a0
    80002c20:	00058493          	mv	s1,a1
    80002c24:	00000913          	li	s2,0
    80002c28:	fff00a93          	li	s5,-1
    80002c2c:	01c0006f          	j	80002c48 <consolewrite+0x58>
    80002c30:	fbf44503          	lbu	a0,-65(s0)
    80002c34:	0019091b          	addiw	s2,s2,1
    80002c38:	00148493          	addi	s1,s1,1
    80002c3c:	00001097          	auipc	ra,0x1
    80002c40:	a9c080e7          	jalr	-1380(ra) # 800036d8 <uartputc>
    80002c44:	03298063          	beq	s3,s2,80002c64 <consolewrite+0x74>
    80002c48:	00048613          	mv	a2,s1
    80002c4c:	00100693          	li	a3,1
    80002c50:	000a0593          	mv	a1,s4
    80002c54:	fbf40513          	addi	a0,s0,-65
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	9d8080e7          	jalr	-1576(ra) # 80002630 <either_copyin>
    80002c60:	fd5518e3          	bne	a0,s5,80002c30 <consolewrite+0x40>
    80002c64:	04813083          	ld	ra,72(sp)
    80002c68:	04013403          	ld	s0,64(sp)
    80002c6c:	03813483          	ld	s1,56(sp)
    80002c70:	02813983          	ld	s3,40(sp)
    80002c74:	02013a03          	ld	s4,32(sp)
    80002c78:	01813a83          	ld	s5,24(sp)
    80002c7c:	00090513          	mv	a0,s2
    80002c80:	03013903          	ld	s2,48(sp)
    80002c84:	05010113          	addi	sp,sp,80
    80002c88:	00008067          	ret
    80002c8c:	00000913          	li	s2,0
    80002c90:	fd5ff06f          	j	80002c64 <consolewrite+0x74>

0000000080002c94 <consoleread>:
    80002c94:	f9010113          	addi	sp,sp,-112
    80002c98:	06813023          	sd	s0,96(sp)
    80002c9c:	04913c23          	sd	s1,88(sp)
    80002ca0:	05213823          	sd	s2,80(sp)
    80002ca4:	05313423          	sd	s3,72(sp)
    80002ca8:	05413023          	sd	s4,64(sp)
    80002cac:	03513c23          	sd	s5,56(sp)
    80002cb0:	03613823          	sd	s6,48(sp)
    80002cb4:	03713423          	sd	s7,40(sp)
    80002cb8:	03813023          	sd	s8,32(sp)
    80002cbc:	06113423          	sd	ra,104(sp)
    80002cc0:	01913c23          	sd	s9,24(sp)
    80002cc4:	07010413          	addi	s0,sp,112
    80002cc8:	00060b93          	mv	s7,a2
    80002ccc:	00050913          	mv	s2,a0
    80002cd0:	00058c13          	mv	s8,a1
    80002cd4:	00060b1b          	sext.w	s6,a2
    80002cd8:	00004497          	auipc	s1,0x4
    80002cdc:	ed048493          	addi	s1,s1,-304 # 80006ba8 <cons>
    80002ce0:	00400993          	li	s3,4
    80002ce4:	fff00a13          	li	s4,-1
    80002ce8:	00a00a93          	li	s5,10
    80002cec:	05705e63          	blez	s7,80002d48 <consoleread+0xb4>
    80002cf0:	09c4a703          	lw	a4,156(s1)
    80002cf4:	0984a783          	lw	a5,152(s1)
    80002cf8:	0007071b          	sext.w	a4,a4
    80002cfc:	08e78463          	beq	a5,a4,80002d84 <consoleread+0xf0>
    80002d00:	07f7f713          	andi	a4,a5,127
    80002d04:	00e48733          	add	a4,s1,a4
    80002d08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002d0c:	0017869b          	addiw	a3,a5,1
    80002d10:	08d4ac23          	sw	a3,152(s1)
    80002d14:	00070c9b          	sext.w	s9,a4
    80002d18:	0b370663          	beq	a4,s3,80002dc4 <consoleread+0x130>
    80002d1c:	00100693          	li	a3,1
    80002d20:	f9f40613          	addi	a2,s0,-97
    80002d24:	000c0593          	mv	a1,s8
    80002d28:	00090513          	mv	a0,s2
    80002d2c:	f8e40fa3          	sb	a4,-97(s0)
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	8b4080e7          	jalr	-1868(ra) # 800025e4 <either_copyout>
    80002d38:	01450863          	beq	a0,s4,80002d48 <consoleread+0xb4>
    80002d3c:	001c0c13          	addi	s8,s8,1
    80002d40:	fffb8b9b          	addiw	s7,s7,-1
    80002d44:	fb5c94e3          	bne	s9,s5,80002cec <consoleread+0x58>
    80002d48:	000b851b          	sext.w	a0,s7
    80002d4c:	06813083          	ld	ra,104(sp)
    80002d50:	06013403          	ld	s0,96(sp)
    80002d54:	05813483          	ld	s1,88(sp)
    80002d58:	05013903          	ld	s2,80(sp)
    80002d5c:	04813983          	ld	s3,72(sp)
    80002d60:	04013a03          	ld	s4,64(sp)
    80002d64:	03813a83          	ld	s5,56(sp)
    80002d68:	02813b83          	ld	s7,40(sp)
    80002d6c:	02013c03          	ld	s8,32(sp)
    80002d70:	01813c83          	ld	s9,24(sp)
    80002d74:	40ab053b          	subw	a0,s6,a0
    80002d78:	03013b03          	ld	s6,48(sp)
    80002d7c:	07010113          	addi	sp,sp,112
    80002d80:	00008067          	ret
    80002d84:	00001097          	auipc	ra,0x1
    80002d88:	1d8080e7          	jalr	472(ra) # 80003f5c <push_on>
    80002d8c:	0984a703          	lw	a4,152(s1)
    80002d90:	09c4a783          	lw	a5,156(s1)
    80002d94:	0007879b          	sext.w	a5,a5
    80002d98:	fef70ce3          	beq	a4,a5,80002d90 <consoleread+0xfc>
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	234080e7          	jalr	564(ra) # 80003fd0 <pop_on>
    80002da4:	0984a783          	lw	a5,152(s1)
    80002da8:	07f7f713          	andi	a4,a5,127
    80002dac:	00e48733          	add	a4,s1,a4
    80002db0:	01874703          	lbu	a4,24(a4)
    80002db4:	0017869b          	addiw	a3,a5,1
    80002db8:	08d4ac23          	sw	a3,152(s1)
    80002dbc:	00070c9b          	sext.w	s9,a4
    80002dc0:	f5371ee3          	bne	a4,s3,80002d1c <consoleread+0x88>
    80002dc4:	000b851b          	sext.w	a0,s7
    80002dc8:	f96bf2e3          	bgeu	s7,s6,80002d4c <consoleread+0xb8>
    80002dcc:	08f4ac23          	sw	a5,152(s1)
    80002dd0:	f7dff06f          	j	80002d4c <consoleread+0xb8>

0000000080002dd4 <consputc>:
    80002dd4:	10000793          	li	a5,256
    80002dd8:	00f50663          	beq	a0,a5,80002de4 <consputc+0x10>
    80002ddc:	00001317          	auipc	t1,0x1
    80002de0:	9f430067          	jr	-1548(t1) # 800037d0 <uartputc_sync>
    80002de4:	ff010113          	addi	sp,sp,-16
    80002de8:	00113423          	sd	ra,8(sp)
    80002dec:	00813023          	sd	s0,0(sp)
    80002df0:	01010413          	addi	s0,sp,16
    80002df4:	00800513          	li	a0,8
    80002df8:	00001097          	auipc	ra,0x1
    80002dfc:	9d8080e7          	jalr	-1576(ra) # 800037d0 <uartputc_sync>
    80002e00:	02000513          	li	a0,32
    80002e04:	00001097          	auipc	ra,0x1
    80002e08:	9cc080e7          	jalr	-1588(ra) # 800037d0 <uartputc_sync>
    80002e0c:	00013403          	ld	s0,0(sp)
    80002e10:	00813083          	ld	ra,8(sp)
    80002e14:	00800513          	li	a0,8
    80002e18:	01010113          	addi	sp,sp,16
    80002e1c:	00001317          	auipc	t1,0x1
    80002e20:	9b430067          	jr	-1612(t1) # 800037d0 <uartputc_sync>

0000000080002e24 <consoleintr>:
    80002e24:	fe010113          	addi	sp,sp,-32
    80002e28:	00813823          	sd	s0,16(sp)
    80002e2c:	00913423          	sd	s1,8(sp)
    80002e30:	01213023          	sd	s2,0(sp)
    80002e34:	00113c23          	sd	ra,24(sp)
    80002e38:	02010413          	addi	s0,sp,32
    80002e3c:	00004917          	auipc	s2,0x4
    80002e40:	d6c90913          	addi	s2,s2,-660 # 80006ba8 <cons>
    80002e44:	00050493          	mv	s1,a0
    80002e48:	00090513          	mv	a0,s2
    80002e4c:	00001097          	auipc	ra,0x1
    80002e50:	e40080e7          	jalr	-448(ra) # 80003c8c <acquire>
    80002e54:	02048c63          	beqz	s1,80002e8c <consoleintr+0x68>
    80002e58:	0a092783          	lw	a5,160(s2)
    80002e5c:	09892703          	lw	a4,152(s2)
    80002e60:	07f00693          	li	a3,127
    80002e64:	40e7873b          	subw	a4,a5,a4
    80002e68:	02e6e263          	bltu	a3,a4,80002e8c <consoleintr+0x68>
    80002e6c:	00d00713          	li	a4,13
    80002e70:	04e48063          	beq	s1,a4,80002eb0 <consoleintr+0x8c>
    80002e74:	07f7f713          	andi	a4,a5,127
    80002e78:	00e90733          	add	a4,s2,a4
    80002e7c:	0017879b          	addiw	a5,a5,1
    80002e80:	0af92023          	sw	a5,160(s2)
    80002e84:	00970c23          	sb	s1,24(a4)
    80002e88:	08f92e23          	sw	a5,156(s2)
    80002e8c:	01013403          	ld	s0,16(sp)
    80002e90:	01813083          	ld	ra,24(sp)
    80002e94:	00813483          	ld	s1,8(sp)
    80002e98:	00013903          	ld	s2,0(sp)
    80002e9c:	00004517          	auipc	a0,0x4
    80002ea0:	d0c50513          	addi	a0,a0,-756 # 80006ba8 <cons>
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00001317          	auipc	t1,0x1
    80002eac:	eb030067          	jr	-336(t1) # 80003d58 <release>
    80002eb0:	00a00493          	li	s1,10
    80002eb4:	fc1ff06f          	j	80002e74 <consoleintr+0x50>

0000000080002eb8 <consoleinit>:
    80002eb8:	fe010113          	addi	sp,sp,-32
    80002ebc:	00113c23          	sd	ra,24(sp)
    80002ec0:	00813823          	sd	s0,16(sp)
    80002ec4:	00913423          	sd	s1,8(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00004497          	auipc	s1,0x4
    80002ed0:	cdc48493          	addi	s1,s1,-804 # 80006ba8 <cons>
    80002ed4:	00048513          	mv	a0,s1
    80002ed8:	00002597          	auipc	a1,0x2
    80002edc:	3b058593          	addi	a1,a1,944 # 80005288 <_ZZ8printHexmE9hexDigits+0x140>
    80002ee0:	00001097          	auipc	ra,0x1
    80002ee4:	d88080e7          	jalr	-632(ra) # 80003c68 <initlock>
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	7ac080e7          	jalr	1964(ra) # 80003694 <uartinit>
    80002ef0:	01813083          	ld	ra,24(sp)
    80002ef4:	01013403          	ld	s0,16(sp)
    80002ef8:	00000797          	auipc	a5,0x0
    80002efc:	d9c78793          	addi	a5,a5,-612 # 80002c94 <consoleread>
    80002f00:	0af4bc23          	sd	a5,184(s1)
    80002f04:	00000797          	auipc	a5,0x0
    80002f08:	cec78793          	addi	a5,a5,-788 # 80002bf0 <consolewrite>
    80002f0c:	0cf4b023          	sd	a5,192(s1)
    80002f10:	00813483          	ld	s1,8(sp)
    80002f14:	02010113          	addi	sp,sp,32
    80002f18:	00008067          	ret

0000000080002f1c <console_read>:
    80002f1c:	ff010113          	addi	sp,sp,-16
    80002f20:	00813423          	sd	s0,8(sp)
    80002f24:	01010413          	addi	s0,sp,16
    80002f28:	00813403          	ld	s0,8(sp)
    80002f2c:	00004317          	auipc	t1,0x4
    80002f30:	d3433303          	ld	t1,-716(t1) # 80006c60 <devsw+0x10>
    80002f34:	01010113          	addi	sp,sp,16
    80002f38:	00030067          	jr	t1

0000000080002f3c <console_write>:
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00813423          	sd	s0,8(sp)
    80002f44:	01010413          	addi	s0,sp,16
    80002f48:	00813403          	ld	s0,8(sp)
    80002f4c:	00004317          	auipc	t1,0x4
    80002f50:	d1c33303          	ld	t1,-740(t1) # 80006c68 <devsw+0x18>
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00030067          	jr	t1

0000000080002f5c <panic>:
    80002f5c:	fe010113          	addi	sp,sp,-32
    80002f60:	00113c23          	sd	ra,24(sp)
    80002f64:	00813823          	sd	s0,16(sp)
    80002f68:	00913423          	sd	s1,8(sp)
    80002f6c:	02010413          	addi	s0,sp,32
    80002f70:	00050493          	mv	s1,a0
    80002f74:	00002517          	auipc	a0,0x2
    80002f78:	31c50513          	addi	a0,a0,796 # 80005290 <_ZZ8printHexmE9hexDigits+0x148>
    80002f7c:	00004797          	auipc	a5,0x4
    80002f80:	d807a623          	sw	zero,-628(a5) # 80006d08 <pr+0x18>
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	034080e7          	jalr	52(ra) # 80002fb8 <__printf>
    80002f8c:	00048513          	mv	a0,s1
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	028080e7          	jalr	40(ra) # 80002fb8 <__printf>
    80002f98:	00002517          	auipc	a0,0x2
    80002f9c:	12850513          	addi	a0,a0,296 # 800050c0 <kvmincrease+0x9a0>
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	018080e7          	jalr	24(ra) # 80002fb8 <__printf>
    80002fa8:	00100793          	li	a5,1
    80002fac:	00003717          	auipc	a4,0x3
    80002fb0:	acf72e23          	sw	a5,-1316(a4) # 80005a88 <panicked>
    80002fb4:	0000006f          	j	80002fb4 <panic+0x58>

0000000080002fb8 <__printf>:
    80002fb8:	f3010113          	addi	sp,sp,-208
    80002fbc:	08813023          	sd	s0,128(sp)
    80002fc0:	07313423          	sd	s3,104(sp)
    80002fc4:	09010413          	addi	s0,sp,144
    80002fc8:	05813023          	sd	s8,64(sp)
    80002fcc:	08113423          	sd	ra,136(sp)
    80002fd0:	06913c23          	sd	s1,120(sp)
    80002fd4:	07213823          	sd	s2,112(sp)
    80002fd8:	07413023          	sd	s4,96(sp)
    80002fdc:	05513c23          	sd	s5,88(sp)
    80002fe0:	05613823          	sd	s6,80(sp)
    80002fe4:	05713423          	sd	s7,72(sp)
    80002fe8:	03913c23          	sd	s9,56(sp)
    80002fec:	03a13823          	sd	s10,48(sp)
    80002ff0:	03b13423          	sd	s11,40(sp)
    80002ff4:	00004317          	auipc	t1,0x4
    80002ff8:	cfc30313          	addi	t1,t1,-772 # 80006cf0 <pr>
    80002ffc:	01832c03          	lw	s8,24(t1)
    80003000:	00b43423          	sd	a1,8(s0)
    80003004:	00c43823          	sd	a2,16(s0)
    80003008:	00d43c23          	sd	a3,24(s0)
    8000300c:	02e43023          	sd	a4,32(s0)
    80003010:	02f43423          	sd	a5,40(s0)
    80003014:	03043823          	sd	a6,48(s0)
    80003018:	03143c23          	sd	a7,56(s0)
    8000301c:	00050993          	mv	s3,a0
    80003020:	4a0c1663          	bnez	s8,800034cc <__printf+0x514>
    80003024:	60098c63          	beqz	s3,8000363c <__printf+0x684>
    80003028:	0009c503          	lbu	a0,0(s3)
    8000302c:	00840793          	addi	a5,s0,8
    80003030:	f6f43c23          	sd	a5,-136(s0)
    80003034:	00000493          	li	s1,0
    80003038:	22050063          	beqz	a0,80003258 <__printf+0x2a0>
    8000303c:	00002a37          	lui	s4,0x2
    80003040:	00018ab7          	lui	s5,0x18
    80003044:	000f4b37          	lui	s6,0xf4
    80003048:	00989bb7          	lui	s7,0x989
    8000304c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003050:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003054:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003058:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000305c:	00148c9b          	addiw	s9,s1,1
    80003060:	02500793          	li	a5,37
    80003064:	01998933          	add	s2,s3,s9
    80003068:	38f51263          	bne	a0,a5,800033ec <__printf+0x434>
    8000306c:	00094783          	lbu	a5,0(s2)
    80003070:	00078c9b          	sext.w	s9,a5
    80003074:	1e078263          	beqz	a5,80003258 <__printf+0x2a0>
    80003078:	0024849b          	addiw	s1,s1,2
    8000307c:	07000713          	li	a4,112
    80003080:	00998933          	add	s2,s3,s1
    80003084:	38e78a63          	beq	a5,a4,80003418 <__printf+0x460>
    80003088:	20f76863          	bltu	a4,a5,80003298 <__printf+0x2e0>
    8000308c:	42a78863          	beq	a5,a0,800034bc <__printf+0x504>
    80003090:	06400713          	li	a4,100
    80003094:	40e79663          	bne	a5,a4,800034a0 <__printf+0x4e8>
    80003098:	f7843783          	ld	a5,-136(s0)
    8000309c:	0007a603          	lw	a2,0(a5)
    800030a0:	00878793          	addi	a5,a5,8
    800030a4:	f6f43c23          	sd	a5,-136(s0)
    800030a8:	42064a63          	bltz	a2,800034dc <__printf+0x524>
    800030ac:	00a00713          	li	a4,10
    800030b0:	02e677bb          	remuw	a5,a2,a4
    800030b4:	00002d97          	auipc	s11,0x2
    800030b8:	204d8d93          	addi	s11,s11,516 # 800052b8 <digits>
    800030bc:	00900593          	li	a1,9
    800030c0:	0006051b          	sext.w	a0,a2
    800030c4:	00000c93          	li	s9,0
    800030c8:	02079793          	slli	a5,a5,0x20
    800030cc:	0207d793          	srli	a5,a5,0x20
    800030d0:	00fd87b3          	add	a5,s11,a5
    800030d4:	0007c783          	lbu	a5,0(a5)
    800030d8:	02e656bb          	divuw	a3,a2,a4
    800030dc:	f8f40023          	sb	a5,-128(s0)
    800030e0:	14c5d863          	bge	a1,a2,80003230 <__printf+0x278>
    800030e4:	06300593          	li	a1,99
    800030e8:	00100c93          	li	s9,1
    800030ec:	02e6f7bb          	remuw	a5,a3,a4
    800030f0:	02079793          	slli	a5,a5,0x20
    800030f4:	0207d793          	srli	a5,a5,0x20
    800030f8:	00fd87b3          	add	a5,s11,a5
    800030fc:	0007c783          	lbu	a5,0(a5)
    80003100:	02e6d73b          	divuw	a4,a3,a4
    80003104:	f8f400a3          	sb	a5,-127(s0)
    80003108:	12a5f463          	bgeu	a1,a0,80003230 <__printf+0x278>
    8000310c:	00a00693          	li	a3,10
    80003110:	00900593          	li	a1,9
    80003114:	02d777bb          	remuw	a5,a4,a3
    80003118:	02079793          	slli	a5,a5,0x20
    8000311c:	0207d793          	srli	a5,a5,0x20
    80003120:	00fd87b3          	add	a5,s11,a5
    80003124:	0007c503          	lbu	a0,0(a5)
    80003128:	02d757bb          	divuw	a5,a4,a3
    8000312c:	f8a40123          	sb	a0,-126(s0)
    80003130:	48e5f263          	bgeu	a1,a4,800035b4 <__printf+0x5fc>
    80003134:	06300513          	li	a0,99
    80003138:	02d7f5bb          	remuw	a1,a5,a3
    8000313c:	02059593          	slli	a1,a1,0x20
    80003140:	0205d593          	srli	a1,a1,0x20
    80003144:	00bd85b3          	add	a1,s11,a1
    80003148:	0005c583          	lbu	a1,0(a1)
    8000314c:	02d7d7bb          	divuw	a5,a5,a3
    80003150:	f8b401a3          	sb	a1,-125(s0)
    80003154:	48e57263          	bgeu	a0,a4,800035d8 <__printf+0x620>
    80003158:	3e700513          	li	a0,999
    8000315c:	02d7f5bb          	remuw	a1,a5,a3
    80003160:	02059593          	slli	a1,a1,0x20
    80003164:	0205d593          	srli	a1,a1,0x20
    80003168:	00bd85b3          	add	a1,s11,a1
    8000316c:	0005c583          	lbu	a1,0(a1)
    80003170:	02d7d7bb          	divuw	a5,a5,a3
    80003174:	f8b40223          	sb	a1,-124(s0)
    80003178:	46e57663          	bgeu	a0,a4,800035e4 <__printf+0x62c>
    8000317c:	02d7f5bb          	remuw	a1,a5,a3
    80003180:	02059593          	slli	a1,a1,0x20
    80003184:	0205d593          	srli	a1,a1,0x20
    80003188:	00bd85b3          	add	a1,s11,a1
    8000318c:	0005c583          	lbu	a1,0(a1)
    80003190:	02d7d7bb          	divuw	a5,a5,a3
    80003194:	f8b402a3          	sb	a1,-123(s0)
    80003198:	46ea7863          	bgeu	s4,a4,80003608 <__printf+0x650>
    8000319c:	02d7f5bb          	remuw	a1,a5,a3
    800031a0:	02059593          	slli	a1,a1,0x20
    800031a4:	0205d593          	srli	a1,a1,0x20
    800031a8:	00bd85b3          	add	a1,s11,a1
    800031ac:	0005c583          	lbu	a1,0(a1)
    800031b0:	02d7d7bb          	divuw	a5,a5,a3
    800031b4:	f8b40323          	sb	a1,-122(s0)
    800031b8:	3eeaf863          	bgeu	s5,a4,800035a8 <__printf+0x5f0>
    800031bc:	02d7f5bb          	remuw	a1,a5,a3
    800031c0:	02059593          	slli	a1,a1,0x20
    800031c4:	0205d593          	srli	a1,a1,0x20
    800031c8:	00bd85b3          	add	a1,s11,a1
    800031cc:	0005c583          	lbu	a1,0(a1)
    800031d0:	02d7d7bb          	divuw	a5,a5,a3
    800031d4:	f8b403a3          	sb	a1,-121(s0)
    800031d8:	42eb7e63          	bgeu	s6,a4,80003614 <__printf+0x65c>
    800031dc:	02d7f5bb          	remuw	a1,a5,a3
    800031e0:	02059593          	slli	a1,a1,0x20
    800031e4:	0205d593          	srli	a1,a1,0x20
    800031e8:	00bd85b3          	add	a1,s11,a1
    800031ec:	0005c583          	lbu	a1,0(a1)
    800031f0:	02d7d7bb          	divuw	a5,a5,a3
    800031f4:	f8b40423          	sb	a1,-120(s0)
    800031f8:	42ebfc63          	bgeu	s7,a4,80003630 <__printf+0x678>
    800031fc:	02079793          	slli	a5,a5,0x20
    80003200:	0207d793          	srli	a5,a5,0x20
    80003204:	00fd8db3          	add	s11,s11,a5
    80003208:	000dc703          	lbu	a4,0(s11)
    8000320c:	00a00793          	li	a5,10
    80003210:	00900c93          	li	s9,9
    80003214:	f8e404a3          	sb	a4,-119(s0)
    80003218:	00065c63          	bgez	a2,80003230 <__printf+0x278>
    8000321c:	f9040713          	addi	a4,s0,-112
    80003220:	00f70733          	add	a4,a4,a5
    80003224:	02d00693          	li	a3,45
    80003228:	fed70823          	sb	a3,-16(a4)
    8000322c:	00078c93          	mv	s9,a5
    80003230:	f8040793          	addi	a5,s0,-128
    80003234:	01978cb3          	add	s9,a5,s9
    80003238:	f7f40d13          	addi	s10,s0,-129
    8000323c:	000cc503          	lbu	a0,0(s9)
    80003240:	fffc8c93          	addi	s9,s9,-1
    80003244:	00000097          	auipc	ra,0x0
    80003248:	b90080e7          	jalr	-1136(ra) # 80002dd4 <consputc>
    8000324c:	ffac98e3          	bne	s9,s10,8000323c <__printf+0x284>
    80003250:	00094503          	lbu	a0,0(s2)
    80003254:	e00514e3          	bnez	a0,8000305c <__printf+0xa4>
    80003258:	1a0c1663          	bnez	s8,80003404 <__printf+0x44c>
    8000325c:	08813083          	ld	ra,136(sp)
    80003260:	08013403          	ld	s0,128(sp)
    80003264:	07813483          	ld	s1,120(sp)
    80003268:	07013903          	ld	s2,112(sp)
    8000326c:	06813983          	ld	s3,104(sp)
    80003270:	06013a03          	ld	s4,96(sp)
    80003274:	05813a83          	ld	s5,88(sp)
    80003278:	05013b03          	ld	s6,80(sp)
    8000327c:	04813b83          	ld	s7,72(sp)
    80003280:	04013c03          	ld	s8,64(sp)
    80003284:	03813c83          	ld	s9,56(sp)
    80003288:	03013d03          	ld	s10,48(sp)
    8000328c:	02813d83          	ld	s11,40(sp)
    80003290:	0d010113          	addi	sp,sp,208
    80003294:	00008067          	ret
    80003298:	07300713          	li	a4,115
    8000329c:	1ce78a63          	beq	a5,a4,80003470 <__printf+0x4b8>
    800032a0:	07800713          	li	a4,120
    800032a4:	1ee79e63          	bne	a5,a4,800034a0 <__printf+0x4e8>
    800032a8:	f7843783          	ld	a5,-136(s0)
    800032ac:	0007a703          	lw	a4,0(a5)
    800032b0:	00878793          	addi	a5,a5,8
    800032b4:	f6f43c23          	sd	a5,-136(s0)
    800032b8:	28074263          	bltz	a4,8000353c <__printf+0x584>
    800032bc:	00002d97          	auipc	s11,0x2
    800032c0:	ffcd8d93          	addi	s11,s11,-4 # 800052b8 <digits>
    800032c4:	00f77793          	andi	a5,a4,15
    800032c8:	00fd87b3          	add	a5,s11,a5
    800032cc:	0007c683          	lbu	a3,0(a5)
    800032d0:	00f00613          	li	a2,15
    800032d4:	0007079b          	sext.w	a5,a4
    800032d8:	f8d40023          	sb	a3,-128(s0)
    800032dc:	0047559b          	srliw	a1,a4,0x4
    800032e0:	0047569b          	srliw	a3,a4,0x4
    800032e4:	00000c93          	li	s9,0
    800032e8:	0ee65063          	bge	a2,a4,800033c8 <__printf+0x410>
    800032ec:	00f6f693          	andi	a3,a3,15
    800032f0:	00dd86b3          	add	a3,s11,a3
    800032f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800032f8:	0087d79b          	srliw	a5,a5,0x8
    800032fc:	00100c93          	li	s9,1
    80003300:	f8d400a3          	sb	a3,-127(s0)
    80003304:	0cb67263          	bgeu	a2,a1,800033c8 <__printf+0x410>
    80003308:	00f7f693          	andi	a3,a5,15
    8000330c:	00dd86b3          	add	a3,s11,a3
    80003310:	0006c583          	lbu	a1,0(a3)
    80003314:	00f00613          	li	a2,15
    80003318:	0047d69b          	srliw	a3,a5,0x4
    8000331c:	f8b40123          	sb	a1,-126(s0)
    80003320:	0047d593          	srli	a1,a5,0x4
    80003324:	28f67e63          	bgeu	a2,a5,800035c0 <__printf+0x608>
    80003328:	00f6f693          	andi	a3,a3,15
    8000332c:	00dd86b3          	add	a3,s11,a3
    80003330:	0006c503          	lbu	a0,0(a3)
    80003334:	0087d813          	srli	a6,a5,0x8
    80003338:	0087d69b          	srliw	a3,a5,0x8
    8000333c:	f8a401a3          	sb	a0,-125(s0)
    80003340:	28b67663          	bgeu	a2,a1,800035cc <__printf+0x614>
    80003344:	00f6f693          	andi	a3,a3,15
    80003348:	00dd86b3          	add	a3,s11,a3
    8000334c:	0006c583          	lbu	a1,0(a3)
    80003350:	00c7d513          	srli	a0,a5,0xc
    80003354:	00c7d69b          	srliw	a3,a5,0xc
    80003358:	f8b40223          	sb	a1,-124(s0)
    8000335c:	29067a63          	bgeu	a2,a6,800035f0 <__printf+0x638>
    80003360:	00f6f693          	andi	a3,a3,15
    80003364:	00dd86b3          	add	a3,s11,a3
    80003368:	0006c583          	lbu	a1,0(a3)
    8000336c:	0107d813          	srli	a6,a5,0x10
    80003370:	0107d69b          	srliw	a3,a5,0x10
    80003374:	f8b402a3          	sb	a1,-123(s0)
    80003378:	28a67263          	bgeu	a2,a0,800035fc <__printf+0x644>
    8000337c:	00f6f693          	andi	a3,a3,15
    80003380:	00dd86b3          	add	a3,s11,a3
    80003384:	0006c683          	lbu	a3,0(a3)
    80003388:	0147d79b          	srliw	a5,a5,0x14
    8000338c:	f8d40323          	sb	a3,-122(s0)
    80003390:	21067663          	bgeu	a2,a6,8000359c <__printf+0x5e4>
    80003394:	02079793          	slli	a5,a5,0x20
    80003398:	0207d793          	srli	a5,a5,0x20
    8000339c:	00fd8db3          	add	s11,s11,a5
    800033a0:	000dc683          	lbu	a3,0(s11)
    800033a4:	00800793          	li	a5,8
    800033a8:	00700c93          	li	s9,7
    800033ac:	f8d403a3          	sb	a3,-121(s0)
    800033b0:	00075c63          	bgez	a4,800033c8 <__printf+0x410>
    800033b4:	f9040713          	addi	a4,s0,-112
    800033b8:	00f70733          	add	a4,a4,a5
    800033bc:	02d00693          	li	a3,45
    800033c0:	fed70823          	sb	a3,-16(a4)
    800033c4:	00078c93          	mv	s9,a5
    800033c8:	f8040793          	addi	a5,s0,-128
    800033cc:	01978cb3          	add	s9,a5,s9
    800033d0:	f7f40d13          	addi	s10,s0,-129
    800033d4:	000cc503          	lbu	a0,0(s9)
    800033d8:	fffc8c93          	addi	s9,s9,-1
    800033dc:	00000097          	auipc	ra,0x0
    800033e0:	9f8080e7          	jalr	-1544(ra) # 80002dd4 <consputc>
    800033e4:	ff9d18e3          	bne	s10,s9,800033d4 <__printf+0x41c>
    800033e8:	0100006f          	j	800033f8 <__printf+0x440>
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	9e8080e7          	jalr	-1560(ra) # 80002dd4 <consputc>
    800033f4:	000c8493          	mv	s1,s9
    800033f8:	00094503          	lbu	a0,0(s2)
    800033fc:	c60510e3          	bnez	a0,8000305c <__printf+0xa4>
    80003400:	e40c0ee3          	beqz	s8,8000325c <__printf+0x2a4>
    80003404:	00004517          	auipc	a0,0x4
    80003408:	8ec50513          	addi	a0,a0,-1812 # 80006cf0 <pr>
    8000340c:	00001097          	auipc	ra,0x1
    80003410:	94c080e7          	jalr	-1716(ra) # 80003d58 <release>
    80003414:	e49ff06f          	j	8000325c <__printf+0x2a4>
    80003418:	f7843783          	ld	a5,-136(s0)
    8000341c:	03000513          	li	a0,48
    80003420:	01000d13          	li	s10,16
    80003424:	00878713          	addi	a4,a5,8
    80003428:	0007bc83          	ld	s9,0(a5)
    8000342c:	f6e43c23          	sd	a4,-136(s0)
    80003430:	00000097          	auipc	ra,0x0
    80003434:	9a4080e7          	jalr	-1628(ra) # 80002dd4 <consputc>
    80003438:	07800513          	li	a0,120
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	998080e7          	jalr	-1640(ra) # 80002dd4 <consputc>
    80003444:	00002d97          	auipc	s11,0x2
    80003448:	e74d8d93          	addi	s11,s11,-396 # 800052b8 <digits>
    8000344c:	03ccd793          	srli	a5,s9,0x3c
    80003450:	00fd87b3          	add	a5,s11,a5
    80003454:	0007c503          	lbu	a0,0(a5)
    80003458:	fffd0d1b          	addiw	s10,s10,-1
    8000345c:	004c9c93          	slli	s9,s9,0x4
    80003460:	00000097          	auipc	ra,0x0
    80003464:	974080e7          	jalr	-1676(ra) # 80002dd4 <consputc>
    80003468:	fe0d12e3          	bnez	s10,8000344c <__printf+0x494>
    8000346c:	f8dff06f          	j	800033f8 <__printf+0x440>
    80003470:	f7843783          	ld	a5,-136(s0)
    80003474:	0007bc83          	ld	s9,0(a5)
    80003478:	00878793          	addi	a5,a5,8
    8000347c:	f6f43c23          	sd	a5,-136(s0)
    80003480:	000c9a63          	bnez	s9,80003494 <__printf+0x4dc>
    80003484:	1080006f          	j	8000358c <__printf+0x5d4>
    80003488:	001c8c93          	addi	s9,s9,1
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	948080e7          	jalr	-1720(ra) # 80002dd4 <consputc>
    80003494:	000cc503          	lbu	a0,0(s9)
    80003498:	fe0518e3          	bnez	a0,80003488 <__printf+0x4d0>
    8000349c:	f5dff06f          	j	800033f8 <__printf+0x440>
    800034a0:	02500513          	li	a0,37
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	930080e7          	jalr	-1744(ra) # 80002dd4 <consputc>
    800034ac:	000c8513          	mv	a0,s9
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	924080e7          	jalr	-1756(ra) # 80002dd4 <consputc>
    800034b8:	f41ff06f          	j	800033f8 <__printf+0x440>
    800034bc:	02500513          	li	a0,37
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	914080e7          	jalr	-1772(ra) # 80002dd4 <consputc>
    800034c8:	f31ff06f          	j	800033f8 <__printf+0x440>
    800034cc:	00030513          	mv	a0,t1
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	7bc080e7          	jalr	1980(ra) # 80003c8c <acquire>
    800034d8:	b4dff06f          	j	80003024 <__printf+0x6c>
    800034dc:	40c0053b          	negw	a0,a2
    800034e0:	00a00713          	li	a4,10
    800034e4:	02e576bb          	remuw	a3,a0,a4
    800034e8:	00002d97          	auipc	s11,0x2
    800034ec:	dd0d8d93          	addi	s11,s11,-560 # 800052b8 <digits>
    800034f0:	ff700593          	li	a1,-9
    800034f4:	02069693          	slli	a3,a3,0x20
    800034f8:	0206d693          	srli	a3,a3,0x20
    800034fc:	00dd86b3          	add	a3,s11,a3
    80003500:	0006c683          	lbu	a3,0(a3)
    80003504:	02e557bb          	divuw	a5,a0,a4
    80003508:	f8d40023          	sb	a3,-128(s0)
    8000350c:	10b65e63          	bge	a2,a1,80003628 <__printf+0x670>
    80003510:	06300593          	li	a1,99
    80003514:	02e7f6bb          	remuw	a3,a5,a4
    80003518:	02069693          	slli	a3,a3,0x20
    8000351c:	0206d693          	srli	a3,a3,0x20
    80003520:	00dd86b3          	add	a3,s11,a3
    80003524:	0006c683          	lbu	a3,0(a3)
    80003528:	02e7d73b          	divuw	a4,a5,a4
    8000352c:	00200793          	li	a5,2
    80003530:	f8d400a3          	sb	a3,-127(s0)
    80003534:	bca5ece3          	bltu	a1,a0,8000310c <__printf+0x154>
    80003538:	ce5ff06f          	j	8000321c <__printf+0x264>
    8000353c:	40e007bb          	negw	a5,a4
    80003540:	00002d97          	auipc	s11,0x2
    80003544:	d78d8d93          	addi	s11,s11,-648 # 800052b8 <digits>
    80003548:	00f7f693          	andi	a3,a5,15
    8000354c:	00dd86b3          	add	a3,s11,a3
    80003550:	0006c583          	lbu	a1,0(a3)
    80003554:	ff100613          	li	a2,-15
    80003558:	0047d69b          	srliw	a3,a5,0x4
    8000355c:	f8b40023          	sb	a1,-128(s0)
    80003560:	0047d59b          	srliw	a1,a5,0x4
    80003564:	0ac75e63          	bge	a4,a2,80003620 <__printf+0x668>
    80003568:	00f6f693          	andi	a3,a3,15
    8000356c:	00dd86b3          	add	a3,s11,a3
    80003570:	0006c603          	lbu	a2,0(a3)
    80003574:	00f00693          	li	a3,15
    80003578:	0087d79b          	srliw	a5,a5,0x8
    8000357c:	f8c400a3          	sb	a2,-127(s0)
    80003580:	d8b6e4e3          	bltu	a3,a1,80003308 <__printf+0x350>
    80003584:	00200793          	li	a5,2
    80003588:	e2dff06f          	j	800033b4 <__printf+0x3fc>
    8000358c:	00002c97          	auipc	s9,0x2
    80003590:	d0cc8c93          	addi	s9,s9,-756 # 80005298 <_ZZ8printHexmE9hexDigits+0x150>
    80003594:	02800513          	li	a0,40
    80003598:	ef1ff06f          	j	80003488 <__printf+0x4d0>
    8000359c:	00700793          	li	a5,7
    800035a0:	00600c93          	li	s9,6
    800035a4:	e0dff06f          	j	800033b0 <__printf+0x3f8>
    800035a8:	00700793          	li	a5,7
    800035ac:	00600c93          	li	s9,6
    800035b0:	c69ff06f          	j	80003218 <__printf+0x260>
    800035b4:	00300793          	li	a5,3
    800035b8:	00200c93          	li	s9,2
    800035bc:	c5dff06f          	j	80003218 <__printf+0x260>
    800035c0:	00300793          	li	a5,3
    800035c4:	00200c93          	li	s9,2
    800035c8:	de9ff06f          	j	800033b0 <__printf+0x3f8>
    800035cc:	00400793          	li	a5,4
    800035d0:	00300c93          	li	s9,3
    800035d4:	dddff06f          	j	800033b0 <__printf+0x3f8>
    800035d8:	00400793          	li	a5,4
    800035dc:	00300c93          	li	s9,3
    800035e0:	c39ff06f          	j	80003218 <__printf+0x260>
    800035e4:	00500793          	li	a5,5
    800035e8:	00400c93          	li	s9,4
    800035ec:	c2dff06f          	j	80003218 <__printf+0x260>
    800035f0:	00500793          	li	a5,5
    800035f4:	00400c93          	li	s9,4
    800035f8:	db9ff06f          	j	800033b0 <__printf+0x3f8>
    800035fc:	00600793          	li	a5,6
    80003600:	00500c93          	li	s9,5
    80003604:	dadff06f          	j	800033b0 <__printf+0x3f8>
    80003608:	00600793          	li	a5,6
    8000360c:	00500c93          	li	s9,5
    80003610:	c09ff06f          	j	80003218 <__printf+0x260>
    80003614:	00800793          	li	a5,8
    80003618:	00700c93          	li	s9,7
    8000361c:	bfdff06f          	j	80003218 <__printf+0x260>
    80003620:	00100793          	li	a5,1
    80003624:	d91ff06f          	j	800033b4 <__printf+0x3fc>
    80003628:	00100793          	li	a5,1
    8000362c:	bf1ff06f          	j	8000321c <__printf+0x264>
    80003630:	00900793          	li	a5,9
    80003634:	00800c93          	li	s9,8
    80003638:	be1ff06f          	j	80003218 <__printf+0x260>
    8000363c:	00002517          	auipc	a0,0x2
    80003640:	c6450513          	addi	a0,a0,-924 # 800052a0 <_ZZ8printHexmE9hexDigits+0x158>
    80003644:	00000097          	auipc	ra,0x0
    80003648:	918080e7          	jalr	-1768(ra) # 80002f5c <panic>

000000008000364c <printfinit>:
    8000364c:	fe010113          	addi	sp,sp,-32
    80003650:	00813823          	sd	s0,16(sp)
    80003654:	00913423          	sd	s1,8(sp)
    80003658:	00113c23          	sd	ra,24(sp)
    8000365c:	02010413          	addi	s0,sp,32
    80003660:	00003497          	auipc	s1,0x3
    80003664:	69048493          	addi	s1,s1,1680 # 80006cf0 <pr>
    80003668:	00048513          	mv	a0,s1
    8000366c:	00002597          	auipc	a1,0x2
    80003670:	c4458593          	addi	a1,a1,-956 # 800052b0 <_ZZ8printHexmE9hexDigits+0x168>
    80003674:	00000097          	auipc	ra,0x0
    80003678:	5f4080e7          	jalr	1524(ra) # 80003c68 <initlock>
    8000367c:	01813083          	ld	ra,24(sp)
    80003680:	01013403          	ld	s0,16(sp)
    80003684:	0004ac23          	sw	zero,24(s1)
    80003688:	00813483          	ld	s1,8(sp)
    8000368c:	02010113          	addi	sp,sp,32
    80003690:	00008067          	ret

0000000080003694 <uartinit>:
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00813423          	sd	s0,8(sp)
    8000369c:	01010413          	addi	s0,sp,16
    800036a0:	100007b7          	lui	a5,0x10000
    800036a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800036a8:	f8000713          	li	a4,-128
    800036ac:	00e781a3          	sb	a4,3(a5)
    800036b0:	00300713          	li	a4,3
    800036b4:	00e78023          	sb	a4,0(a5)
    800036b8:	000780a3          	sb	zero,1(a5)
    800036bc:	00e781a3          	sb	a4,3(a5)
    800036c0:	00700693          	li	a3,7
    800036c4:	00d78123          	sb	a3,2(a5)
    800036c8:	00e780a3          	sb	a4,1(a5)
    800036cc:	00813403          	ld	s0,8(sp)
    800036d0:	01010113          	addi	sp,sp,16
    800036d4:	00008067          	ret

00000000800036d8 <uartputc>:
    800036d8:	00002797          	auipc	a5,0x2
    800036dc:	3b07a783          	lw	a5,944(a5) # 80005a88 <panicked>
    800036e0:	00078463          	beqz	a5,800036e8 <uartputc+0x10>
    800036e4:	0000006f          	j	800036e4 <uartputc+0xc>
    800036e8:	fd010113          	addi	sp,sp,-48
    800036ec:	02813023          	sd	s0,32(sp)
    800036f0:	00913c23          	sd	s1,24(sp)
    800036f4:	01213823          	sd	s2,16(sp)
    800036f8:	01313423          	sd	s3,8(sp)
    800036fc:	02113423          	sd	ra,40(sp)
    80003700:	03010413          	addi	s0,sp,48
    80003704:	00002917          	auipc	s2,0x2
    80003708:	38c90913          	addi	s2,s2,908 # 80005a90 <uart_tx_r>
    8000370c:	00093783          	ld	a5,0(s2)
    80003710:	00002497          	auipc	s1,0x2
    80003714:	38848493          	addi	s1,s1,904 # 80005a98 <uart_tx_w>
    80003718:	0004b703          	ld	a4,0(s1)
    8000371c:	02078693          	addi	a3,a5,32
    80003720:	00050993          	mv	s3,a0
    80003724:	02e69c63          	bne	a3,a4,8000375c <uartputc+0x84>
    80003728:	00001097          	auipc	ra,0x1
    8000372c:	834080e7          	jalr	-1996(ra) # 80003f5c <push_on>
    80003730:	00093783          	ld	a5,0(s2)
    80003734:	0004b703          	ld	a4,0(s1)
    80003738:	02078793          	addi	a5,a5,32
    8000373c:	00e79463          	bne	a5,a4,80003744 <uartputc+0x6c>
    80003740:	0000006f          	j	80003740 <uartputc+0x68>
    80003744:	00001097          	auipc	ra,0x1
    80003748:	88c080e7          	jalr	-1908(ra) # 80003fd0 <pop_on>
    8000374c:	00093783          	ld	a5,0(s2)
    80003750:	0004b703          	ld	a4,0(s1)
    80003754:	02078693          	addi	a3,a5,32
    80003758:	fce688e3          	beq	a3,a4,80003728 <uartputc+0x50>
    8000375c:	01f77693          	andi	a3,a4,31
    80003760:	00003597          	auipc	a1,0x3
    80003764:	5b058593          	addi	a1,a1,1456 # 80006d10 <uart_tx_buf>
    80003768:	00d586b3          	add	a3,a1,a3
    8000376c:	00170713          	addi	a4,a4,1
    80003770:	01368023          	sb	s3,0(a3)
    80003774:	00e4b023          	sd	a4,0(s1)
    80003778:	10000637          	lui	a2,0x10000
    8000377c:	02f71063          	bne	a4,a5,8000379c <uartputc+0xc4>
    80003780:	0340006f          	j	800037b4 <uartputc+0xdc>
    80003784:	00074703          	lbu	a4,0(a4)
    80003788:	00f93023          	sd	a5,0(s2)
    8000378c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003790:	00093783          	ld	a5,0(s2)
    80003794:	0004b703          	ld	a4,0(s1)
    80003798:	00f70e63          	beq	a4,a5,800037b4 <uartputc+0xdc>
    8000379c:	00564683          	lbu	a3,5(a2)
    800037a0:	01f7f713          	andi	a4,a5,31
    800037a4:	00e58733          	add	a4,a1,a4
    800037a8:	0206f693          	andi	a3,a3,32
    800037ac:	00178793          	addi	a5,a5,1
    800037b0:	fc069ae3          	bnez	a3,80003784 <uartputc+0xac>
    800037b4:	02813083          	ld	ra,40(sp)
    800037b8:	02013403          	ld	s0,32(sp)
    800037bc:	01813483          	ld	s1,24(sp)
    800037c0:	01013903          	ld	s2,16(sp)
    800037c4:	00813983          	ld	s3,8(sp)
    800037c8:	03010113          	addi	sp,sp,48
    800037cc:	00008067          	ret

00000000800037d0 <uartputc_sync>:
    800037d0:	ff010113          	addi	sp,sp,-16
    800037d4:	00813423          	sd	s0,8(sp)
    800037d8:	01010413          	addi	s0,sp,16
    800037dc:	00002717          	auipc	a4,0x2
    800037e0:	2ac72703          	lw	a4,684(a4) # 80005a88 <panicked>
    800037e4:	02071663          	bnez	a4,80003810 <uartputc_sync+0x40>
    800037e8:	00050793          	mv	a5,a0
    800037ec:	100006b7          	lui	a3,0x10000
    800037f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800037f4:	02077713          	andi	a4,a4,32
    800037f8:	fe070ce3          	beqz	a4,800037f0 <uartputc_sync+0x20>
    800037fc:	0ff7f793          	andi	a5,a5,255
    80003800:	00f68023          	sb	a5,0(a3)
    80003804:	00813403          	ld	s0,8(sp)
    80003808:	01010113          	addi	sp,sp,16
    8000380c:	00008067          	ret
    80003810:	0000006f          	j	80003810 <uartputc_sync+0x40>

0000000080003814 <uartstart>:
    80003814:	ff010113          	addi	sp,sp,-16
    80003818:	00813423          	sd	s0,8(sp)
    8000381c:	01010413          	addi	s0,sp,16
    80003820:	00002617          	auipc	a2,0x2
    80003824:	27060613          	addi	a2,a2,624 # 80005a90 <uart_tx_r>
    80003828:	00002517          	auipc	a0,0x2
    8000382c:	27050513          	addi	a0,a0,624 # 80005a98 <uart_tx_w>
    80003830:	00063783          	ld	a5,0(a2)
    80003834:	00053703          	ld	a4,0(a0)
    80003838:	04f70263          	beq	a4,a5,8000387c <uartstart+0x68>
    8000383c:	100005b7          	lui	a1,0x10000
    80003840:	00003817          	auipc	a6,0x3
    80003844:	4d080813          	addi	a6,a6,1232 # 80006d10 <uart_tx_buf>
    80003848:	01c0006f          	j	80003864 <uartstart+0x50>
    8000384c:	0006c703          	lbu	a4,0(a3)
    80003850:	00f63023          	sd	a5,0(a2)
    80003854:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003858:	00063783          	ld	a5,0(a2)
    8000385c:	00053703          	ld	a4,0(a0)
    80003860:	00f70e63          	beq	a4,a5,8000387c <uartstart+0x68>
    80003864:	01f7f713          	andi	a4,a5,31
    80003868:	00e806b3          	add	a3,a6,a4
    8000386c:	0055c703          	lbu	a4,5(a1)
    80003870:	00178793          	addi	a5,a5,1
    80003874:	02077713          	andi	a4,a4,32
    80003878:	fc071ae3          	bnez	a4,8000384c <uartstart+0x38>
    8000387c:	00813403          	ld	s0,8(sp)
    80003880:	01010113          	addi	sp,sp,16
    80003884:	00008067          	ret

0000000080003888 <uartgetc>:
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00813423          	sd	s0,8(sp)
    80003890:	01010413          	addi	s0,sp,16
    80003894:	10000737          	lui	a4,0x10000
    80003898:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000389c:	0017f793          	andi	a5,a5,1
    800038a0:	00078c63          	beqz	a5,800038b8 <uartgetc+0x30>
    800038a4:	00074503          	lbu	a0,0(a4)
    800038a8:	0ff57513          	andi	a0,a0,255
    800038ac:	00813403          	ld	s0,8(sp)
    800038b0:	01010113          	addi	sp,sp,16
    800038b4:	00008067          	ret
    800038b8:	fff00513          	li	a0,-1
    800038bc:	ff1ff06f          	j	800038ac <uartgetc+0x24>

00000000800038c0 <uartintr>:
    800038c0:	100007b7          	lui	a5,0x10000
    800038c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800038c8:	0017f793          	andi	a5,a5,1
    800038cc:	0a078463          	beqz	a5,80003974 <uartintr+0xb4>
    800038d0:	fe010113          	addi	sp,sp,-32
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	00113c23          	sd	ra,24(sp)
    800038e0:	02010413          	addi	s0,sp,32
    800038e4:	100004b7          	lui	s1,0x10000
    800038e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800038ec:	0ff57513          	andi	a0,a0,255
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	534080e7          	jalr	1332(ra) # 80002e24 <consoleintr>
    800038f8:	0054c783          	lbu	a5,5(s1)
    800038fc:	0017f793          	andi	a5,a5,1
    80003900:	fe0794e3          	bnez	a5,800038e8 <uartintr+0x28>
    80003904:	00002617          	auipc	a2,0x2
    80003908:	18c60613          	addi	a2,a2,396 # 80005a90 <uart_tx_r>
    8000390c:	00002517          	auipc	a0,0x2
    80003910:	18c50513          	addi	a0,a0,396 # 80005a98 <uart_tx_w>
    80003914:	00063783          	ld	a5,0(a2)
    80003918:	00053703          	ld	a4,0(a0)
    8000391c:	04f70263          	beq	a4,a5,80003960 <uartintr+0xa0>
    80003920:	100005b7          	lui	a1,0x10000
    80003924:	00003817          	auipc	a6,0x3
    80003928:	3ec80813          	addi	a6,a6,1004 # 80006d10 <uart_tx_buf>
    8000392c:	01c0006f          	j	80003948 <uartintr+0x88>
    80003930:	0006c703          	lbu	a4,0(a3)
    80003934:	00f63023          	sd	a5,0(a2)
    80003938:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000393c:	00063783          	ld	a5,0(a2)
    80003940:	00053703          	ld	a4,0(a0)
    80003944:	00f70e63          	beq	a4,a5,80003960 <uartintr+0xa0>
    80003948:	01f7f713          	andi	a4,a5,31
    8000394c:	00e806b3          	add	a3,a6,a4
    80003950:	0055c703          	lbu	a4,5(a1)
    80003954:	00178793          	addi	a5,a5,1
    80003958:	02077713          	andi	a4,a4,32
    8000395c:	fc071ae3          	bnez	a4,80003930 <uartintr+0x70>
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00813483          	ld	s1,8(sp)
    8000396c:	02010113          	addi	sp,sp,32
    80003970:	00008067          	ret
    80003974:	00002617          	auipc	a2,0x2
    80003978:	11c60613          	addi	a2,a2,284 # 80005a90 <uart_tx_r>
    8000397c:	00002517          	auipc	a0,0x2
    80003980:	11c50513          	addi	a0,a0,284 # 80005a98 <uart_tx_w>
    80003984:	00063783          	ld	a5,0(a2)
    80003988:	00053703          	ld	a4,0(a0)
    8000398c:	04f70263          	beq	a4,a5,800039d0 <uartintr+0x110>
    80003990:	100005b7          	lui	a1,0x10000
    80003994:	00003817          	auipc	a6,0x3
    80003998:	37c80813          	addi	a6,a6,892 # 80006d10 <uart_tx_buf>
    8000399c:	01c0006f          	j	800039b8 <uartintr+0xf8>
    800039a0:	0006c703          	lbu	a4,0(a3)
    800039a4:	00f63023          	sd	a5,0(a2)
    800039a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800039ac:	00063783          	ld	a5,0(a2)
    800039b0:	00053703          	ld	a4,0(a0)
    800039b4:	02f70063          	beq	a4,a5,800039d4 <uartintr+0x114>
    800039b8:	01f7f713          	andi	a4,a5,31
    800039bc:	00e806b3          	add	a3,a6,a4
    800039c0:	0055c703          	lbu	a4,5(a1)
    800039c4:	00178793          	addi	a5,a5,1
    800039c8:	02077713          	andi	a4,a4,32
    800039cc:	fc071ae3          	bnez	a4,800039a0 <uartintr+0xe0>
    800039d0:	00008067          	ret
    800039d4:	00008067          	ret

00000000800039d8 <kinit>:
    800039d8:	fc010113          	addi	sp,sp,-64
    800039dc:	02913423          	sd	s1,40(sp)
    800039e0:	fffff7b7          	lui	a5,0xfffff
    800039e4:	00004497          	auipc	s1,0x4
    800039e8:	35b48493          	addi	s1,s1,859 # 80007d3f <end+0xfff>
    800039ec:	02813823          	sd	s0,48(sp)
    800039f0:	01313c23          	sd	s3,24(sp)
    800039f4:	00f4f4b3          	and	s1,s1,a5
    800039f8:	02113c23          	sd	ra,56(sp)
    800039fc:	03213023          	sd	s2,32(sp)
    80003a00:	01413823          	sd	s4,16(sp)
    80003a04:	01513423          	sd	s5,8(sp)
    80003a08:	04010413          	addi	s0,sp,64
    80003a0c:	000017b7          	lui	a5,0x1
    80003a10:	01100993          	li	s3,17
    80003a14:	00f487b3          	add	a5,s1,a5
    80003a18:	01b99993          	slli	s3,s3,0x1b
    80003a1c:	06f9e063          	bltu	s3,a5,80003a7c <kinit+0xa4>
    80003a20:	00003a97          	auipc	s5,0x3
    80003a24:	320a8a93          	addi	s5,s5,800 # 80006d40 <end>
    80003a28:	0754ec63          	bltu	s1,s5,80003aa0 <kinit+0xc8>
    80003a2c:	0734fa63          	bgeu	s1,s3,80003aa0 <kinit+0xc8>
    80003a30:	00088a37          	lui	s4,0x88
    80003a34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003a38:	00002917          	auipc	s2,0x2
    80003a3c:	06890913          	addi	s2,s2,104 # 80005aa0 <kmem>
    80003a40:	00ca1a13          	slli	s4,s4,0xc
    80003a44:	0140006f          	j	80003a58 <kinit+0x80>
    80003a48:	000017b7          	lui	a5,0x1
    80003a4c:	00f484b3          	add	s1,s1,a5
    80003a50:	0554e863          	bltu	s1,s5,80003aa0 <kinit+0xc8>
    80003a54:	0534f663          	bgeu	s1,s3,80003aa0 <kinit+0xc8>
    80003a58:	00001637          	lui	a2,0x1
    80003a5c:	00100593          	li	a1,1
    80003a60:	00048513          	mv	a0,s1
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	5e4080e7          	jalr	1508(ra) # 80004048 <__memset>
    80003a6c:	00093783          	ld	a5,0(s2)
    80003a70:	00f4b023          	sd	a5,0(s1)
    80003a74:	00993023          	sd	s1,0(s2)
    80003a78:	fd4498e3          	bne	s1,s4,80003a48 <kinit+0x70>
    80003a7c:	03813083          	ld	ra,56(sp)
    80003a80:	03013403          	ld	s0,48(sp)
    80003a84:	02813483          	ld	s1,40(sp)
    80003a88:	02013903          	ld	s2,32(sp)
    80003a8c:	01813983          	ld	s3,24(sp)
    80003a90:	01013a03          	ld	s4,16(sp)
    80003a94:	00813a83          	ld	s5,8(sp)
    80003a98:	04010113          	addi	sp,sp,64
    80003a9c:	00008067          	ret
    80003aa0:	00002517          	auipc	a0,0x2
    80003aa4:	83050513          	addi	a0,a0,-2000 # 800052d0 <digits+0x18>
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	4b4080e7          	jalr	1204(ra) # 80002f5c <panic>

0000000080003ab0 <freerange>:
    80003ab0:	fc010113          	addi	sp,sp,-64
    80003ab4:	000017b7          	lui	a5,0x1
    80003ab8:	02913423          	sd	s1,40(sp)
    80003abc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003ac0:	009504b3          	add	s1,a0,s1
    80003ac4:	fffff537          	lui	a0,0xfffff
    80003ac8:	02813823          	sd	s0,48(sp)
    80003acc:	02113c23          	sd	ra,56(sp)
    80003ad0:	03213023          	sd	s2,32(sp)
    80003ad4:	01313c23          	sd	s3,24(sp)
    80003ad8:	01413823          	sd	s4,16(sp)
    80003adc:	01513423          	sd	s5,8(sp)
    80003ae0:	01613023          	sd	s6,0(sp)
    80003ae4:	04010413          	addi	s0,sp,64
    80003ae8:	00a4f4b3          	and	s1,s1,a0
    80003aec:	00f487b3          	add	a5,s1,a5
    80003af0:	06f5e463          	bltu	a1,a5,80003b58 <freerange+0xa8>
    80003af4:	00003a97          	auipc	s5,0x3
    80003af8:	24ca8a93          	addi	s5,s5,588 # 80006d40 <end>
    80003afc:	0954e263          	bltu	s1,s5,80003b80 <freerange+0xd0>
    80003b00:	01100993          	li	s3,17
    80003b04:	01b99993          	slli	s3,s3,0x1b
    80003b08:	0734fc63          	bgeu	s1,s3,80003b80 <freerange+0xd0>
    80003b0c:	00058a13          	mv	s4,a1
    80003b10:	00002917          	auipc	s2,0x2
    80003b14:	f9090913          	addi	s2,s2,-112 # 80005aa0 <kmem>
    80003b18:	00002b37          	lui	s6,0x2
    80003b1c:	0140006f          	j	80003b30 <freerange+0x80>
    80003b20:	000017b7          	lui	a5,0x1
    80003b24:	00f484b3          	add	s1,s1,a5
    80003b28:	0554ec63          	bltu	s1,s5,80003b80 <freerange+0xd0>
    80003b2c:	0534fa63          	bgeu	s1,s3,80003b80 <freerange+0xd0>
    80003b30:	00001637          	lui	a2,0x1
    80003b34:	00100593          	li	a1,1
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	00000097          	auipc	ra,0x0
    80003b40:	50c080e7          	jalr	1292(ra) # 80004048 <__memset>
    80003b44:	00093703          	ld	a4,0(s2)
    80003b48:	016487b3          	add	a5,s1,s6
    80003b4c:	00e4b023          	sd	a4,0(s1)
    80003b50:	00993023          	sd	s1,0(s2)
    80003b54:	fcfa76e3          	bgeu	s4,a5,80003b20 <freerange+0x70>
    80003b58:	03813083          	ld	ra,56(sp)
    80003b5c:	03013403          	ld	s0,48(sp)
    80003b60:	02813483          	ld	s1,40(sp)
    80003b64:	02013903          	ld	s2,32(sp)
    80003b68:	01813983          	ld	s3,24(sp)
    80003b6c:	01013a03          	ld	s4,16(sp)
    80003b70:	00813a83          	ld	s5,8(sp)
    80003b74:	00013b03          	ld	s6,0(sp)
    80003b78:	04010113          	addi	sp,sp,64
    80003b7c:	00008067          	ret
    80003b80:	00001517          	auipc	a0,0x1
    80003b84:	75050513          	addi	a0,a0,1872 # 800052d0 <digits+0x18>
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	3d4080e7          	jalr	980(ra) # 80002f5c <panic>

0000000080003b90 <kfree>:
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	00913423          	sd	s1,8(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	03451793          	slli	a5,a0,0x34
    80003ba8:	04079c63          	bnez	a5,80003c00 <kfree+0x70>
    80003bac:	00003797          	auipc	a5,0x3
    80003bb0:	19478793          	addi	a5,a5,404 # 80006d40 <end>
    80003bb4:	00050493          	mv	s1,a0
    80003bb8:	04f56463          	bltu	a0,a5,80003c00 <kfree+0x70>
    80003bbc:	01100793          	li	a5,17
    80003bc0:	01b79793          	slli	a5,a5,0x1b
    80003bc4:	02f57e63          	bgeu	a0,a5,80003c00 <kfree+0x70>
    80003bc8:	00001637          	lui	a2,0x1
    80003bcc:	00100593          	li	a1,1
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	478080e7          	jalr	1144(ra) # 80004048 <__memset>
    80003bd8:	00002797          	auipc	a5,0x2
    80003bdc:	ec878793          	addi	a5,a5,-312 # 80005aa0 <kmem>
    80003be0:	0007b703          	ld	a4,0(a5)
    80003be4:	01813083          	ld	ra,24(sp)
    80003be8:	01013403          	ld	s0,16(sp)
    80003bec:	00e4b023          	sd	a4,0(s1)
    80003bf0:	0097b023          	sd	s1,0(a5)
    80003bf4:	00813483          	ld	s1,8(sp)
    80003bf8:	02010113          	addi	sp,sp,32
    80003bfc:	00008067          	ret
    80003c00:	00001517          	auipc	a0,0x1
    80003c04:	6d050513          	addi	a0,a0,1744 # 800052d0 <digits+0x18>
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	354080e7          	jalr	852(ra) # 80002f5c <panic>

0000000080003c10 <kalloc>:
    80003c10:	fe010113          	addi	sp,sp,-32
    80003c14:	00813823          	sd	s0,16(sp)
    80003c18:	00913423          	sd	s1,8(sp)
    80003c1c:	00113c23          	sd	ra,24(sp)
    80003c20:	02010413          	addi	s0,sp,32
    80003c24:	00002797          	auipc	a5,0x2
    80003c28:	e7c78793          	addi	a5,a5,-388 # 80005aa0 <kmem>
    80003c2c:	0007b483          	ld	s1,0(a5)
    80003c30:	02048063          	beqz	s1,80003c50 <kalloc+0x40>
    80003c34:	0004b703          	ld	a4,0(s1)
    80003c38:	00001637          	lui	a2,0x1
    80003c3c:	00500593          	li	a1,5
    80003c40:	00048513          	mv	a0,s1
    80003c44:	00e7b023          	sd	a4,0(a5)
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	400080e7          	jalr	1024(ra) # 80004048 <__memset>
    80003c50:	01813083          	ld	ra,24(sp)
    80003c54:	01013403          	ld	s0,16(sp)
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	02010113          	addi	sp,sp,32
    80003c64:	00008067          	ret

0000000080003c68 <initlock>:
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00813423          	sd	s0,8(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	00813403          	ld	s0,8(sp)
    80003c78:	00b53423          	sd	a1,8(a0)
    80003c7c:	00052023          	sw	zero,0(a0)
    80003c80:	00053823          	sd	zero,16(a0)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret

0000000080003c8c <acquire>:
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	00113c23          	sd	ra,24(sp)
    80003c9c:	01213023          	sd	s2,0(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    80003ca4:	00050493          	mv	s1,a0
    80003ca8:	10002973          	csrr	s2,sstatus
    80003cac:	100027f3          	csrr	a5,sstatus
    80003cb0:	ffd7f793          	andi	a5,a5,-3
    80003cb4:	10079073          	csrw	sstatus,a5
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	8e0080e7          	jalr	-1824(ra) # 80002598 <mycpu>
    80003cc0:	07852783          	lw	a5,120(a0)
    80003cc4:	06078e63          	beqz	a5,80003d40 <acquire+0xb4>
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	8d0080e7          	jalr	-1840(ra) # 80002598 <mycpu>
    80003cd0:	07852783          	lw	a5,120(a0)
    80003cd4:	0004a703          	lw	a4,0(s1)
    80003cd8:	0017879b          	addiw	a5,a5,1
    80003cdc:	06f52c23          	sw	a5,120(a0)
    80003ce0:	04071063          	bnez	a4,80003d20 <acquire+0x94>
    80003ce4:	00100713          	li	a4,1
    80003ce8:	00070793          	mv	a5,a4
    80003cec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003cf0:	0007879b          	sext.w	a5,a5
    80003cf4:	fe079ae3          	bnez	a5,80003ce8 <acquire+0x5c>
    80003cf8:	0ff0000f          	fence
    80003cfc:	fffff097          	auipc	ra,0xfffff
    80003d00:	89c080e7          	jalr	-1892(ra) # 80002598 <mycpu>
    80003d04:	01813083          	ld	ra,24(sp)
    80003d08:	01013403          	ld	s0,16(sp)
    80003d0c:	00a4b823          	sd	a0,16(s1)
    80003d10:	00013903          	ld	s2,0(sp)
    80003d14:	00813483          	ld	s1,8(sp)
    80003d18:	02010113          	addi	sp,sp,32
    80003d1c:	00008067          	ret
    80003d20:	0104b903          	ld	s2,16(s1)
    80003d24:	fffff097          	auipc	ra,0xfffff
    80003d28:	874080e7          	jalr	-1932(ra) # 80002598 <mycpu>
    80003d2c:	faa91ce3          	bne	s2,a0,80003ce4 <acquire+0x58>
    80003d30:	00001517          	auipc	a0,0x1
    80003d34:	5a850513          	addi	a0,a0,1448 # 800052d8 <digits+0x20>
    80003d38:	fffff097          	auipc	ra,0xfffff
    80003d3c:	224080e7          	jalr	548(ra) # 80002f5c <panic>
    80003d40:	00195913          	srli	s2,s2,0x1
    80003d44:	fffff097          	auipc	ra,0xfffff
    80003d48:	854080e7          	jalr	-1964(ra) # 80002598 <mycpu>
    80003d4c:	00197913          	andi	s2,s2,1
    80003d50:	07252e23          	sw	s2,124(a0)
    80003d54:	f75ff06f          	j	80003cc8 <acquire+0x3c>

0000000080003d58 <release>:
    80003d58:	fe010113          	addi	sp,sp,-32
    80003d5c:	00813823          	sd	s0,16(sp)
    80003d60:	00113c23          	sd	ra,24(sp)
    80003d64:	00913423          	sd	s1,8(sp)
    80003d68:	01213023          	sd	s2,0(sp)
    80003d6c:	02010413          	addi	s0,sp,32
    80003d70:	00052783          	lw	a5,0(a0)
    80003d74:	00079a63          	bnez	a5,80003d88 <release+0x30>
    80003d78:	00001517          	auipc	a0,0x1
    80003d7c:	56850513          	addi	a0,a0,1384 # 800052e0 <digits+0x28>
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	1dc080e7          	jalr	476(ra) # 80002f5c <panic>
    80003d88:	01053903          	ld	s2,16(a0)
    80003d8c:	00050493          	mv	s1,a0
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	808080e7          	jalr	-2040(ra) # 80002598 <mycpu>
    80003d98:	fea910e3          	bne	s2,a0,80003d78 <release+0x20>
    80003d9c:	0004b823          	sd	zero,16(s1)
    80003da0:	0ff0000f          	fence
    80003da4:	0f50000f          	fence	iorw,ow
    80003da8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003dac:	ffffe097          	auipc	ra,0xffffe
    80003db0:	7ec080e7          	jalr	2028(ra) # 80002598 <mycpu>
    80003db4:	100027f3          	csrr	a5,sstatus
    80003db8:	0027f793          	andi	a5,a5,2
    80003dbc:	04079a63          	bnez	a5,80003e10 <release+0xb8>
    80003dc0:	07852783          	lw	a5,120(a0)
    80003dc4:	02f05e63          	blez	a5,80003e00 <release+0xa8>
    80003dc8:	fff7871b          	addiw	a4,a5,-1
    80003dcc:	06e52c23          	sw	a4,120(a0)
    80003dd0:	00071c63          	bnez	a4,80003de8 <release+0x90>
    80003dd4:	07c52783          	lw	a5,124(a0)
    80003dd8:	00078863          	beqz	a5,80003de8 <release+0x90>
    80003ddc:	100027f3          	csrr	a5,sstatus
    80003de0:	0027e793          	ori	a5,a5,2
    80003de4:	10079073          	csrw	sstatus,a5
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	00013903          	ld	s2,0(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret
    80003e00:	00001517          	auipc	a0,0x1
    80003e04:	50050513          	addi	a0,a0,1280 # 80005300 <digits+0x48>
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	154080e7          	jalr	340(ra) # 80002f5c <panic>
    80003e10:	00001517          	auipc	a0,0x1
    80003e14:	4d850513          	addi	a0,a0,1240 # 800052e8 <digits+0x30>
    80003e18:	fffff097          	auipc	ra,0xfffff
    80003e1c:	144080e7          	jalr	324(ra) # 80002f5c <panic>

0000000080003e20 <holding>:
    80003e20:	00052783          	lw	a5,0(a0)
    80003e24:	00079663          	bnez	a5,80003e30 <holding+0x10>
    80003e28:	00000513          	li	a0,0
    80003e2c:	00008067          	ret
    80003e30:	fe010113          	addi	sp,sp,-32
    80003e34:	00813823          	sd	s0,16(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	00113c23          	sd	ra,24(sp)
    80003e40:	02010413          	addi	s0,sp,32
    80003e44:	01053483          	ld	s1,16(a0)
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	750080e7          	jalr	1872(ra) # 80002598 <mycpu>
    80003e50:	01813083          	ld	ra,24(sp)
    80003e54:	01013403          	ld	s0,16(sp)
    80003e58:	40a48533          	sub	a0,s1,a0
    80003e5c:	00153513          	seqz	a0,a0
    80003e60:	00813483          	ld	s1,8(sp)
    80003e64:	02010113          	addi	sp,sp,32
    80003e68:	00008067          	ret

0000000080003e6c <push_off>:
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00113c23          	sd	ra,24(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	100024f3          	csrr	s1,sstatus
    80003e84:	100027f3          	csrr	a5,sstatus
    80003e88:	ffd7f793          	andi	a5,a5,-3
    80003e8c:	10079073          	csrw	sstatus,a5
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	708080e7          	jalr	1800(ra) # 80002598 <mycpu>
    80003e98:	07852783          	lw	a5,120(a0)
    80003e9c:	02078663          	beqz	a5,80003ec8 <push_off+0x5c>
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	6f8080e7          	jalr	1784(ra) # 80002598 <mycpu>
    80003ea8:	07852783          	lw	a5,120(a0)
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	0017879b          	addiw	a5,a5,1
    80003eb8:	06f52c23          	sw	a5,120(a0)
    80003ebc:	00813483          	ld	s1,8(sp)
    80003ec0:	02010113          	addi	sp,sp,32
    80003ec4:	00008067          	ret
    80003ec8:	0014d493          	srli	s1,s1,0x1
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	6cc080e7          	jalr	1740(ra) # 80002598 <mycpu>
    80003ed4:	0014f493          	andi	s1,s1,1
    80003ed8:	06952e23          	sw	s1,124(a0)
    80003edc:	fc5ff06f          	j	80003ea0 <push_off+0x34>

0000000080003ee0 <pop_off>:
    80003ee0:	ff010113          	addi	sp,sp,-16
    80003ee4:	00813023          	sd	s0,0(sp)
    80003ee8:	00113423          	sd	ra,8(sp)
    80003eec:	01010413          	addi	s0,sp,16
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	6a8080e7          	jalr	1704(ra) # 80002598 <mycpu>
    80003ef8:	100027f3          	csrr	a5,sstatus
    80003efc:	0027f793          	andi	a5,a5,2
    80003f00:	04079663          	bnez	a5,80003f4c <pop_off+0x6c>
    80003f04:	07852783          	lw	a5,120(a0)
    80003f08:	02f05a63          	blez	a5,80003f3c <pop_off+0x5c>
    80003f0c:	fff7871b          	addiw	a4,a5,-1
    80003f10:	06e52c23          	sw	a4,120(a0)
    80003f14:	00071c63          	bnez	a4,80003f2c <pop_off+0x4c>
    80003f18:	07c52783          	lw	a5,124(a0)
    80003f1c:	00078863          	beqz	a5,80003f2c <pop_off+0x4c>
    80003f20:	100027f3          	csrr	a5,sstatus
    80003f24:	0027e793          	ori	a5,a5,2
    80003f28:	10079073          	csrw	sstatus,a5
    80003f2c:	00813083          	ld	ra,8(sp)
    80003f30:	00013403          	ld	s0,0(sp)
    80003f34:	01010113          	addi	sp,sp,16
    80003f38:	00008067          	ret
    80003f3c:	00001517          	auipc	a0,0x1
    80003f40:	3c450513          	addi	a0,a0,964 # 80005300 <digits+0x48>
    80003f44:	fffff097          	auipc	ra,0xfffff
    80003f48:	018080e7          	jalr	24(ra) # 80002f5c <panic>
    80003f4c:	00001517          	auipc	a0,0x1
    80003f50:	39c50513          	addi	a0,a0,924 # 800052e8 <digits+0x30>
    80003f54:	fffff097          	auipc	ra,0xfffff
    80003f58:	008080e7          	jalr	8(ra) # 80002f5c <panic>

0000000080003f5c <push_on>:
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00813823          	sd	s0,16(sp)
    80003f64:	00113c23          	sd	ra,24(sp)
    80003f68:	00913423          	sd	s1,8(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    80003f70:	100024f3          	csrr	s1,sstatus
    80003f74:	100027f3          	csrr	a5,sstatus
    80003f78:	0027e793          	ori	a5,a5,2
    80003f7c:	10079073          	csrw	sstatus,a5
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	618080e7          	jalr	1560(ra) # 80002598 <mycpu>
    80003f88:	07852783          	lw	a5,120(a0)
    80003f8c:	02078663          	beqz	a5,80003fb8 <push_on+0x5c>
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	608080e7          	jalr	1544(ra) # 80002598 <mycpu>
    80003f98:	07852783          	lw	a5,120(a0)
    80003f9c:	01813083          	ld	ra,24(sp)
    80003fa0:	01013403          	ld	s0,16(sp)
    80003fa4:	0017879b          	addiw	a5,a5,1
    80003fa8:	06f52c23          	sw	a5,120(a0)
    80003fac:	00813483          	ld	s1,8(sp)
    80003fb0:	02010113          	addi	sp,sp,32
    80003fb4:	00008067          	ret
    80003fb8:	0014d493          	srli	s1,s1,0x1
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	5dc080e7          	jalr	1500(ra) # 80002598 <mycpu>
    80003fc4:	0014f493          	andi	s1,s1,1
    80003fc8:	06952e23          	sw	s1,124(a0)
    80003fcc:	fc5ff06f          	j	80003f90 <push_on+0x34>

0000000080003fd0 <pop_on>:
    80003fd0:	ff010113          	addi	sp,sp,-16
    80003fd4:	00813023          	sd	s0,0(sp)
    80003fd8:	00113423          	sd	ra,8(sp)
    80003fdc:	01010413          	addi	s0,sp,16
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	5b8080e7          	jalr	1464(ra) # 80002598 <mycpu>
    80003fe8:	100027f3          	csrr	a5,sstatus
    80003fec:	0027f793          	andi	a5,a5,2
    80003ff0:	04078463          	beqz	a5,80004038 <pop_on+0x68>
    80003ff4:	07852783          	lw	a5,120(a0)
    80003ff8:	02f05863          	blez	a5,80004028 <pop_on+0x58>
    80003ffc:	fff7879b          	addiw	a5,a5,-1
    80004000:	06f52c23          	sw	a5,120(a0)
    80004004:	07853783          	ld	a5,120(a0)
    80004008:	00079863          	bnez	a5,80004018 <pop_on+0x48>
    8000400c:	100027f3          	csrr	a5,sstatus
    80004010:	ffd7f793          	andi	a5,a5,-3
    80004014:	10079073          	csrw	sstatus,a5
    80004018:	00813083          	ld	ra,8(sp)
    8000401c:	00013403          	ld	s0,0(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret
    80004028:	00001517          	auipc	a0,0x1
    8000402c:	30050513          	addi	a0,a0,768 # 80005328 <digits+0x70>
    80004030:	fffff097          	auipc	ra,0xfffff
    80004034:	f2c080e7          	jalr	-212(ra) # 80002f5c <panic>
    80004038:	00001517          	auipc	a0,0x1
    8000403c:	2d050513          	addi	a0,a0,720 # 80005308 <digits+0x50>
    80004040:	fffff097          	auipc	ra,0xfffff
    80004044:	f1c080e7          	jalr	-228(ra) # 80002f5c <panic>

0000000080004048 <__memset>:
    80004048:	ff010113          	addi	sp,sp,-16
    8000404c:	00813423          	sd	s0,8(sp)
    80004050:	01010413          	addi	s0,sp,16
    80004054:	1a060e63          	beqz	a2,80004210 <__memset+0x1c8>
    80004058:	40a007b3          	neg	a5,a0
    8000405c:	0077f793          	andi	a5,a5,7
    80004060:	00778693          	addi	a3,a5,7
    80004064:	00b00813          	li	a6,11
    80004068:	0ff5f593          	andi	a1,a1,255
    8000406c:	fff6071b          	addiw	a4,a2,-1
    80004070:	1b06e663          	bltu	a3,a6,8000421c <__memset+0x1d4>
    80004074:	1cd76463          	bltu	a4,a3,8000423c <__memset+0x1f4>
    80004078:	1a078e63          	beqz	a5,80004234 <__memset+0x1ec>
    8000407c:	00b50023          	sb	a1,0(a0)
    80004080:	00100713          	li	a4,1
    80004084:	1ae78463          	beq	a5,a4,8000422c <__memset+0x1e4>
    80004088:	00b500a3          	sb	a1,1(a0)
    8000408c:	00200713          	li	a4,2
    80004090:	1ae78a63          	beq	a5,a4,80004244 <__memset+0x1fc>
    80004094:	00b50123          	sb	a1,2(a0)
    80004098:	00300713          	li	a4,3
    8000409c:	18e78463          	beq	a5,a4,80004224 <__memset+0x1dc>
    800040a0:	00b501a3          	sb	a1,3(a0)
    800040a4:	00400713          	li	a4,4
    800040a8:	1ae78263          	beq	a5,a4,8000424c <__memset+0x204>
    800040ac:	00b50223          	sb	a1,4(a0)
    800040b0:	00500713          	li	a4,5
    800040b4:	1ae78063          	beq	a5,a4,80004254 <__memset+0x20c>
    800040b8:	00b502a3          	sb	a1,5(a0)
    800040bc:	00700713          	li	a4,7
    800040c0:	18e79e63          	bne	a5,a4,8000425c <__memset+0x214>
    800040c4:	00b50323          	sb	a1,6(a0)
    800040c8:	00700e93          	li	t4,7
    800040cc:	00859713          	slli	a4,a1,0x8
    800040d0:	00e5e733          	or	a4,a1,a4
    800040d4:	01059e13          	slli	t3,a1,0x10
    800040d8:	01c76e33          	or	t3,a4,t3
    800040dc:	01859313          	slli	t1,a1,0x18
    800040e0:	006e6333          	or	t1,t3,t1
    800040e4:	02059893          	slli	a7,a1,0x20
    800040e8:	40f60e3b          	subw	t3,a2,a5
    800040ec:	011368b3          	or	a7,t1,a7
    800040f0:	02859813          	slli	a6,a1,0x28
    800040f4:	0108e833          	or	a6,a7,a6
    800040f8:	03059693          	slli	a3,a1,0x30
    800040fc:	003e589b          	srliw	a7,t3,0x3
    80004100:	00d866b3          	or	a3,a6,a3
    80004104:	03859713          	slli	a4,a1,0x38
    80004108:	00389813          	slli	a6,a7,0x3
    8000410c:	00f507b3          	add	a5,a0,a5
    80004110:	00e6e733          	or	a4,a3,a4
    80004114:	000e089b          	sext.w	a7,t3
    80004118:	00f806b3          	add	a3,a6,a5
    8000411c:	00e7b023          	sd	a4,0(a5)
    80004120:	00878793          	addi	a5,a5,8
    80004124:	fed79ce3          	bne	a5,a3,8000411c <__memset+0xd4>
    80004128:	ff8e7793          	andi	a5,t3,-8
    8000412c:	0007871b          	sext.w	a4,a5
    80004130:	01d787bb          	addw	a5,a5,t4
    80004134:	0ce88e63          	beq	a7,a4,80004210 <__memset+0x1c8>
    80004138:	00f50733          	add	a4,a0,a5
    8000413c:	00b70023          	sb	a1,0(a4)
    80004140:	0017871b          	addiw	a4,a5,1
    80004144:	0cc77663          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    80004148:	00e50733          	add	a4,a0,a4
    8000414c:	00b70023          	sb	a1,0(a4)
    80004150:	0027871b          	addiw	a4,a5,2
    80004154:	0ac77e63          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    80004158:	00e50733          	add	a4,a0,a4
    8000415c:	00b70023          	sb	a1,0(a4)
    80004160:	0037871b          	addiw	a4,a5,3
    80004164:	0ac77663          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    80004168:	00e50733          	add	a4,a0,a4
    8000416c:	00b70023          	sb	a1,0(a4)
    80004170:	0047871b          	addiw	a4,a5,4
    80004174:	08c77e63          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    80004178:	00e50733          	add	a4,a0,a4
    8000417c:	00b70023          	sb	a1,0(a4)
    80004180:	0057871b          	addiw	a4,a5,5
    80004184:	08c77663          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    80004188:	00e50733          	add	a4,a0,a4
    8000418c:	00b70023          	sb	a1,0(a4)
    80004190:	0067871b          	addiw	a4,a5,6
    80004194:	06c77e63          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    80004198:	00e50733          	add	a4,a0,a4
    8000419c:	00b70023          	sb	a1,0(a4)
    800041a0:	0077871b          	addiw	a4,a5,7
    800041a4:	06c77663          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    800041a8:	00e50733          	add	a4,a0,a4
    800041ac:	00b70023          	sb	a1,0(a4)
    800041b0:	0087871b          	addiw	a4,a5,8
    800041b4:	04c77e63          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    800041b8:	00e50733          	add	a4,a0,a4
    800041bc:	00b70023          	sb	a1,0(a4)
    800041c0:	0097871b          	addiw	a4,a5,9
    800041c4:	04c77663          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    800041c8:	00e50733          	add	a4,a0,a4
    800041cc:	00b70023          	sb	a1,0(a4)
    800041d0:	00a7871b          	addiw	a4,a5,10
    800041d4:	02c77e63          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00b70023          	sb	a1,0(a4)
    800041e0:	00b7871b          	addiw	a4,a5,11
    800041e4:	02c77663          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	00c7871b          	addiw	a4,a5,12
    800041f4:	00c77e63          	bgeu	a4,a2,80004210 <__memset+0x1c8>
    800041f8:	00e50733          	add	a4,a0,a4
    800041fc:	00b70023          	sb	a1,0(a4)
    80004200:	00d7879b          	addiw	a5,a5,13
    80004204:	00c7f663          	bgeu	a5,a2,80004210 <__memset+0x1c8>
    80004208:	00f507b3          	add	a5,a0,a5
    8000420c:	00b78023          	sb	a1,0(a5)
    80004210:	00813403          	ld	s0,8(sp)
    80004214:	01010113          	addi	sp,sp,16
    80004218:	00008067          	ret
    8000421c:	00b00693          	li	a3,11
    80004220:	e55ff06f          	j	80004074 <__memset+0x2c>
    80004224:	00300e93          	li	t4,3
    80004228:	ea5ff06f          	j	800040cc <__memset+0x84>
    8000422c:	00100e93          	li	t4,1
    80004230:	e9dff06f          	j	800040cc <__memset+0x84>
    80004234:	00000e93          	li	t4,0
    80004238:	e95ff06f          	j	800040cc <__memset+0x84>
    8000423c:	00000793          	li	a5,0
    80004240:	ef9ff06f          	j	80004138 <__memset+0xf0>
    80004244:	00200e93          	li	t4,2
    80004248:	e85ff06f          	j	800040cc <__memset+0x84>
    8000424c:	00400e93          	li	t4,4
    80004250:	e7dff06f          	j	800040cc <__memset+0x84>
    80004254:	00500e93          	li	t4,5
    80004258:	e75ff06f          	j	800040cc <__memset+0x84>
    8000425c:	00600e93          	li	t4,6
    80004260:	e6dff06f          	j	800040cc <__memset+0x84>

0000000080004264 <__memmove>:
    80004264:	ff010113          	addi	sp,sp,-16
    80004268:	00813423          	sd	s0,8(sp)
    8000426c:	01010413          	addi	s0,sp,16
    80004270:	0e060863          	beqz	a2,80004360 <__memmove+0xfc>
    80004274:	fff6069b          	addiw	a3,a2,-1
    80004278:	0006881b          	sext.w	a6,a3
    8000427c:	0ea5e863          	bltu	a1,a0,8000436c <__memmove+0x108>
    80004280:	00758713          	addi	a4,a1,7
    80004284:	00a5e7b3          	or	a5,a1,a0
    80004288:	40a70733          	sub	a4,a4,a0
    8000428c:	0077f793          	andi	a5,a5,7
    80004290:	00f73713          	sltiu	a4,a4,15
    80004294:	00174713          	xori	a4,a4,1
    80004298:	0017b793          	seqz	a5,a5
    8000429c:	00e7f7b3          	and	a5,a5,a4
    800042a0:	10078863          	beqz	a5,800043b0 <__memmove+0x14c>
    800042a4:	00900793          	li	a5,9
    800042a8:	1107f463          	bgeu	a5,a6,800043b0 <__memmove+0x14c>
    800042ac:	0036581b          	srliw	a6,a2,0x3
    800042b0:	fff8081b          	addiw	a6,a6,-1
    800042b4:	02081813          	slli	a6,a6,0x20
    800042b8:	01d85893          	srli	a7,a6,0x1d
    800042bc:	00858813          	addi	a6,a1,8
    800042c0:	00058793          	mv	a5,a1
    800042c4:	00050713          	mv	a4,a0
    800042c8:	01088833          	add	a6,a7,a6
    800042cc:	0007b883          	ld	a7,0(a5)
    800042d0:	00878793          	addi	a5,a5,8
    800042d4:	00870713          	addi	a4,a4,8
    800042d8:	ff173c23          	sd	a7,-8(a4)
    800042dc:	ff0798e3          	bne	a5,a6,800042cc <__memmove+0x68>
    800042e0:	ff867713          	andi	a4,a2,-8
    800042e4:	02071793          	slli	a5,a4,0x20
    800042e8:	0207d793          	srli	a5,a5,0x20
    800042ec:	00f585b3          	add	a1,a1,a5
    800042f0:	40e686bb          	subw	a3,a3,a4
    800042f4:	00f507b3          	add	a5,a0,a5
    800042f8:	06e60463          	beq	a2,a4,80004360 <__memmove+0xfc>
    800042fc:	0005c703          	lbu	a4,0(a1)
    80004300:	00e78023          	sb	a4,0(a5)
    80004304:	04068e63          	beqz	a3,80004360 <__memmove+0xfc>
    80004308:	0015c603          	lbu	a2,1(a1)
    8000430c:	00100713          	li	a4,1
    80004310:	00c780a3          	sb	a2,1(a5)
    80004314:	04e68663          	beq	a3,a4,80004360 <__memmove+0xfc>
    80004318:	0025c603          	lbu	a2,2(a1)
    8000431c:	00200713          	li	a4,2
    80004320:	00c78123          	sb	a2,2(a5)
    80004324:	02e68e63          	beq	a3,a4,80004360 <__memmove+0xfc>
    80004328:	0035c603          	lbu	a2,3(a1)
    8000432c:	00300713          	li	a4,3
    80004330:	00c781a3          	sb	a2,3(a5)
    80004334:	02e68663          	beq	a3,a4,80004360 <__memmove+0xfc>
    80004338:	0045c603          	lbu	a2,4(a1)
    8000433c:	00400713          	li	a4,4
    80004340:	00c78223          	sb	a2,4(a5)
    80004344:	00e68e63          	beq	a3,a4,80004360 <__memmove+0xfc>
    80004348:	0055c603          	lbu	a2,5(a1)
    8000434c:	00500713          	li	a4,5
    80004350:	00c782a3          	sb	a2,5(a5)
    80004354:	00e68663          	beq	a3,a4,80004360 <__memmove+0xfc>
    80004358:	0065c703          	lbu	a4,6(a1)
    8000435c:	00e78323          	sb	a4,6(a5)
    80004360:	00813403          	ld	s0,8(sp)
    80004364:	01010113          	addi	sp,sp,16
    80004368:	00008067          	ret
    8000436c:	02061713          	slli	a4,a2,0x20
    80004370:	02075713          	srli	a4,a4,0x20
    80004374:	00e587b3          	add	a5,a1,a4
    80004378:	f0f574e3          	bgeu	a0,a5,80004280 <__memmove+0x1c>
    8000437c:	02069613          	slli	a2,a3,0x20
    80004380:	02065613          	srli	a2,a2,0x20
    80004384:	fff64613          	not	a2,a2
    80004388:	00e50733          	add	a4,a0,a4
    8000438c:	00c78633          	add	a2,a5,a2
    80004390:	fff7c683          	lbu	a3,-1(a5)
    80004394:	fff78793          	addi	a5,a5,-1
    80004398:	fff70713          	addi	a4,a4,-1
    8000439c:	00d70023          	sb	a3,0(a4)
    800043a0:	fec798e3          	bne	a5,a2,80004390 <__memmove+0x12c>
    800043a4:	00813403          	ld	s0,8(sp)
    800043a8:	01010113          	addi	sp,sp,16
    800043ac:	00008067          	ret
    800043b0:	02069713          	slli	a4,a3,0x20
    800043b4:	02075713          	srli	a4,a4,0x20
    800043b8:	00170713          	addi	a4,a4,1
    800043bc:	00e50733          	add	a4,a0,a4
    800043c0:	00050793          	mv	a5,a0
    800043c4:	0005c683          	lbu	a3,0(a1)
    800043c8:	00178793          	addi	a5,a5,1
    800043cc:	00158593          	addi	a1,a1,1
    800043d0:	fed78fa3          	sb	a3,-1(a5)
    800043d4:	fee798e3          	bne	a5,a4,800043c4 <__memmove+0x160>
    800043d8:	f89ff06f          	j	80004360 <__memmove+0xfc>

00000000800043dc <__mem_free>:
    800043dc:	ff010113          	addi	sp,sp,-16
    800043e0:	00813423          	sd	s0,8(sp)
    800043e4:	01010413          	addi	s0,sp,16
    800043e8:	00001597          	auipc	a1,0x1
    800043ec:	6c058593          	addi	a1,a1,1728 # 80005aa8 <freep>
    800043f0:	0005b783          	ld	a5,0(a1)
    800043f4:	ff050693          	addi	a3,a0,-16
    800043f8:	0007b703          	ld	a4,0(a5)
    800043fc:	00d7fc63          	bgeu	a5,a3,80004414 <__mem_free+0x38>
    80004400:	00e6ee63          	bltu	a3,a4,8000441c <__mem_free+0x40>
    80004404:	00e7fc63          	bgeu	a5,a4,8000441c <__mem_free+0x40>
    80004408:	00070793          	mv	a5,a4
    8000440c:	0007b703          	ld	a4,0(a5)
    80004410:	fed7e8e3          	bltu	a5,a3,80004400 <__mem_free+0x24>
    80004414:	fee7eae3          	bltu	a5,a4,80004408 <__mem_free+0x2c>
    80004418:	fee6f8e3          	bgeu	a3,a4,80004408 <__mem_free+0x2c>
    8000441c:	ff852803          	lw	a6,-8(a0)
    80004420:	02081613          	slli	a2,a6,0x20
    80004424:	01c65613          	srli	a2,a2,0x1c
    80004428:	00c68633          	add	a2,a3,a2
    8000442c:	02c70a63          	beq	a4,a2,80004460 <__mem_free+0x84>
    80004430:	fee53823          	sd	a4,-16(a0)
    80004434:	0087a503          	lw	a0,8(a5)
    80004438:	02051613          	slli	a2,a0,0x20
    8000443c:	01c65613          	srli	a2,a2,0x1c
    80004440:	00c78633          	add	a2,a5,a2
    80004444:	04c68263          	beq	a3,a2,80004488 <__mem_free+0xac>
    80004448:	00813403          	ld	s0,8(sp)
    8000444c:	00d7b023          	sd	a3,0(a5)
    80004450:	00f5b023          	sd	a5,0(a1)
    80004454:	00000513          	li	a0,0
    80004458:	01010113          	addi	sp,sp,16
    8000445c:	00008067          	ret
    80004460:	00872603          	lw	a2,8(a4)
    80004464:	00073703          	ld	a4,0(a4)
    80004468:	0106083b          	addw	a6,a2,a6
    8000446c:	ff052c23          	sw	a6,-8(a0)
    80004470:	fee53823          	sd	a4,-16(a0)
    80004474:	0087a503          	lw	a0,8(a5)
    80004478:	02051613          	slli	a2,a0,0x20
    8000447c:	01c65613          	srli	a2,a2,0x1c
    80004480:	00c78633          	add	a2,a5,a2
    80004484:	fcc692e3          	bne	a3,a2,80004448 <__mem_free+0x6c>
    80004488:	00813403          	ld	s0,8(sp)
    8000448c:	0105053b          	addw	a0,a0,a6
    80004490:	00a7a423          	sw	a0,8(a5)
    80004494:	00e7b023          	sd	a4,0(a5)
    80004498:	00f5b023          	sd	a5,0(a1)
    8000449c:	00000513          	li	a0,0
    800044a0:	01010113          	addi	sp,sp,16
    800044a4:	00008067          	ret

00000000800044a8 <__mem_alloc>:
    800044a8:	fc010113          	addi	sp,sp,-64
    800044ac:	02813823          	sd	s0,48(sp)
    800044b0:	02913423          	sd	s1,40(sp)
    800044b4:	03213023          	sd	s2,32(sp)
    800044b8:	01513423          	sd	s5,8(sp)
    800044bc:	02113c23          	sd	ra,56(sp)
    800044c0:	01313c23          	sd	s3,24(sp)
    800044c4:	01413823          	sd	s4,16(sp)
    800044c8:	01613023          	sd	s6,0(sp)
    800044cc:	04010413          	addi	s0,sp,64
    800044d0:	00001a97          	auipc	s5,0x1
    800044d4:	5d8a8a93          	addi	s5,s5,1496 # 80005aa8 <freep>
    800044d8:	00f50913          	addi	s2,a0,15
    800044dc:	000ab683          	ld	a3,0(s5)
    800044e0:	00495913          	srli	s2,s2,0x4
    800044e4:	0019049b          	addiw	s1,s2,1
    800044e8:	00048913          	mv	s2,s1
    800044ec:	0c068c63          	beqz	a3,800045c4 <__mem_alloc+0x11c>
    800044f0:	0006b503          	ld	a0,0(a3)
    800044f4:	00852703          	lw	a4,8(a0)
    800044f8:	10977063          	bgeu	a4,s1,800045f8 <__mem_alloc+0x150>
    800044fc:	000017b7          	lui	a5,0x1
    80004500:	0009099b          	sext.w	s3,s2
    80004504:	0af4e863          	bltu	s1,a5,800045b4 <__mem_alloc+0x10c>
    80004508:	02099a13          	slli	s4,s3,0x20
    8000450c:	01ca5a13          	srli	s4,s4,0x1c
    80004510:	fff00b13          	li	s6,-1
    80004514:	0100006f          	j	80004524 <__mem_alloc+0x7c>
    80004518:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000451c:	00852703          	lw	a4,8(a0)
    80004520:	04977463          	bgeu	a4,s1,80004568 <__mem_alloc+0xc0>
    80004524:	00050793          	mv	a5,a0
    80004528:	fea698e3          	bne	a3,a0,80004518 <__mem_alloc+0x70>
    8000452c:	000a0513          	mv	a0,s4
    80004530:	00000097          	auipc	ra,0x0
    80004534:	1f0080e7          	jalr	496(ra) # 80004720 <kvmincrease>
    80004538:	00050793          	mv	a5,a0
    8000453c:	01050513          	addi	a0,a0,16
    80004540:	07678e63          	beq	a5,s6,800045bc <__mem_alloc+0x114>
    80004544:	0137a423          	sw	s3,8(a5)
    80004548:	00000097          	auipc	ra,0x0
    8000454c:	e94080e7          	jalr	-364(ra) # 800043dc <__mem_free>
    80004550:	000ab783          	ld	a5,0(s5)
    80004554:	06078463          	beqz	a5,800045bc <__mem_alloc+0x114>
    80004558:	0007b503          	ld	a0,0(a5)
    8000455c:	00078693          	mv	a3,a5
    80004560:	00852703          	lw	a4,8(a0)
    80004564:	fc9760e3          	bltu	a4,s1,80004524 <__mem_alloc+0x7c>
    80004568:	08e48263          	beq	s1,a4,800045ec <__mem_alloc+0x144>
    8000456c:	4127073b          	subw	a4,a4,s2
    80004570:	02071693          	slli	a3,a4,0x20
    80004574:	01c6d693          	srli	a3,a3,0x1c
    80004578:	00e52423          	sw	a4,8(a0)
    8000457c:	00d50533          	add	a0,a0,a3
    80004580:	01252423          	sw	s2,8(a0)
    80004584:	00fab023          	sd	a5,0(s5)
    80004588:	01050513          	addi	a0,a0,16
    8000458c:	03813083          	ld	ra,56(sp)
    80004590:	03013403          	ld	s0,48(sp)
    80004594:	02813483          	ld	s1,40(sp)
    80004598:	02013903          	ld	s2,32(sp)
    8000459c:	01813983          	ld	s3,24(sp)
    800045a0:	01013a03          	ld	s4,16(sp)
    800045a4:	00813a83          	ld	s5,8(sp)
    800045a8:	00013b03          	ld	s6,0(sp)
    800045ac:	04010113          	addi	sp,sp,64
    800045b0:	00008067          	ret
    800045b4:	000019b7          	lui	s3,0x1
    800045b8:	f51ff06f          	j	80004508 <__mem_alloc+0x60>
    800045bc:	00000513          	li	a0,0
    800045c0:	fcdff06f          	j	8000458c <__mem_alloc+0xe4>
    800045c4:	00002797          	auipc	a5,0x2
    800045c8:	76c78793          	addi	a5,a5,1900 # 80006d30 <base>
    800045cc:	00078513          	mv	a0,a5
    800045d0:	00fab023          	sd	a5,0(s5)
    800045d4:	00f7b023          	sd	a5,0(a5)
    800045d8:	00000713          	li	a4,0
    800045dc:	00002797          	auipc	a5,0x2
    800045e0:	7407ae23          	sw	zero,1884(a5) # 80006d38 <base+0x8>
    800045e4:	00050693          	mv	a3,a0
    800045e8:	f11ff06f          	j	800044f8 <__mem_alloc+0x50>
    800045ec:	00053703          	ld	a4,0(a0)
    800045f0:	00e7b023          	sd	a4,0(a5)
    800045f4:	f91ff06f          	j	80004584 <__mem_alloc+0xdc>
    800045f8:	00068793          	mv	a5,a3
    800045fc:	f6dff06f          	j	80004568 <__mem_alloc+0xc0>

0000000080004600 <__putc>:
    80004600:	fe010113          	addi	sp,sp,-32
    80004604:	00813823          	sd	s0,16(sp)
    80004608:	00113c23          	sd	ra,24(sp)
    8000460c:	02010413          	addi	s0,sp,32
    80004610:	00050793          	mv	a5,a0
    80004614:	fef40593          	addi	a1,s0,-17
    80004618:	00100613          	li	a2,1
    8000461c:	00000513          	li	a0,0
    80004620:	fef407a3          	sb	a5,-17(s0)
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	918080e7          	jalr	-1768(ra) # 80002f3c <console_write>
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	00008067          	ret

000000008000463c <__getc>:
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00813823          	sd	s0,16(sp)
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	02010413          	addi	s0,sp,32
    8000464c:	fe840593          	addi	a1,s0,-24
    80004650:	00100613          	li	a2,1
    80004654:	00000513          	li	a0,0
    80004658:	fffff097          	auipc	ra,0xfffff
    8000465c:	8c4080e7          	jalr	-1852(ra) # 80002f1c <console_read>
    80004660:	fe844503          	lbu	a0,-24(s0)
    80004664:	01813083          	ld	ra,24(sp)
    80004668:	01013403          	ld	s0,16(sp)
    8000466c:	02010113          	addi	sp,sp,32
    80004670:	00008067          	ret

0000000080004674 <console_handler>:
    80004674:	fe010113          	addi	sp,sp,-32
    80004678:	00813823          	sd	s0,16(sp)
    8000467c:	00113c23          	sd	ra,24(sp)
    80004680:	00913423          	sd	s1,8(sp)
    80004684:	02010413          	addi	s0,sp,32
    80004688:	14202773          	csrr	a4,scause
    8000468c:	100027f3          	csrr	a5,sstatus
    80004690:	0027f793          	andi	a5,a5,2
    80004694:	06079e63          	bnez	a5,80004710 <console_handler+0x9c>
    80004698:	00074c63          	bltz	a4,800046b0 <console_handler+0x3c>
    8000469c:	01813083          	ld	ra,24(sp)
    800046a0:	01013403          	ld	s0,16(sp)
    800046a4:	00813483          	ld	s1,8(sp)
    800046a8:	02010113          	addi	sp,sp,32
    800046ac:	00008067          	ret
    800046b0:	0ff77713          	andi	a4,a4,255
    800046b4:	00900793          	li	a5,9
    800046b8:	fef712e3          	bne	a4,a5,8000469c <console_handler+0x28>
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	4b8080e7          	jalr	1208(ra) # 80002b74 <plic_claim>
    800046c4:	00a00793          	li	a5,10
    800046c8:	00050493          	mv	s1,a0
    800046cc:	02f50c63          	beq	a0,a5,80004704 <console_handler+0x90>
    800046d0:	fc0506e3          	beqz	a0,8000469c <console_handler+0x28>
    800046d4:	00050593          	mv	a1,a0
    800046d8:	00001517          	auipc	a0,0x1
    800046dc:	b5850513          	addi	a0,a0,-1192 # 80005230 <_ZZ8printHexmE9hexDigits+0xe8>
    800046e0:	fffff097          	auipc	ra,0xfffff
    800046e4:	8d8080e7          	jalr	-1832(ra) # 80002fb8 <__printf>
    800046e8:	01013403          	ld	s0,16(sp)
    800046ec:	01813083          	ld	ra,24(sp)
    800046f0:	00048513          	mv	a0,s1
    800046f4:	00813483          	ld	s1,8(sp)
    800046f8:	02010113          	addi	sp,sp,32
    800046fc:	ffffe317          	auipc	t1,0xffffe
    80004700:	4b030067          	jr	1200(t1) # 80002bac <plic_complete>
    80004704:	fffff097          	auipc	ra,0xfffff
    80004708:	1bc080e7          	jalr	444(ra) # 800038c0 <uartintr>
    8000470c:	fddff06f          	j	800046e8 <console_handler+0x74>
    80004710:	00001517          	auipc	a0,0x1
    80004714:	c2050513          	addi	a0,a0,-992 # 80005330 <digits+0x78>
    80004718:	fffff097          	auipc	ra,0xfffff
    8000471c:	844080e7          	jalr	-1980(ra) # 80002f5c <panic>

0000000080004720 <kvmincrease>:
    80004720:	fe010113          	addi	sp,sp,-32
    80004724:	01213023          	sd	s2,0(sp)
    80004728:	00001937          	lui	s2,0x1
    8000472c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00113c23          	sd	ra,24(sp)
    80004738:	00913423          	sd	s1,8(sp)
    8000473c:	02010413          	addi	s0,sp,32
    80004740:	01250933          	add	s2,a0,s2
    80004744:	00c95913          	srli	s2,s2,0xc
    80004748:	02090863          	beqz	s2,80004778 <kvmincrease+0x58>
    8000474c:	00000493          	li	s1,0
    80004750:	00148493          	addi	s1,s1,1
    80004754:	fffff097          	auipc	ra,0xfffff
    80004758:	4bc080e7          	jalr	1212(ra) # 80003c10 <kalloc>
    8000475c:	fe991ae3          	bne	s2,s1,80004750 <kvmincrease+0x30>
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00813483          	ld	s1,8(sp)
    8000476c:	00013903          	ld	s2,0(sp)
    80004770:	02010113          	addi	sp,sp,32
    80004774:	00008067          	ret
    80004778:	01813083          	ld	ra,24(sp)
    8000477c:	01013403          	ld	s0,16(sp)
    80004780:	00813483          	ld	s1,8(sp)
    80004784:	00013903          	ld	s2,0(sp)
    80004788:	00000513          	li	a0,0
    8000478c:	02010113          	addi	sp,sp,32
    80004790:	00008067          	ret
	...
