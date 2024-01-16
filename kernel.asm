
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
    8000001c:	2f0020ef          	jal	ra,8000230c <start>

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
    800011ac:	505000ef          	jal	ra,80001eb0 <_ZN5Riscv13handleSyscallEv>
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
    800012bc:	5e1000ef          	jal	ra,8000209c <_ZN5Riscv20handleTimerInterruptEv>
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
    8000134c:	5a1000ef          	jal	ra,800020ec <_ZN5Riscv22handleConsoleInterruptEv>
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
    800013d8:	53d000ef          	jal	ra,80002114 <_ZN5Riscv14handleBadCauseEv>
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

00000000800013f8 <_Z4testi>:
#include "../h/syscall_c.hpp"
#include "../lib/console.h"

int test(int arg)
{
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813423          	sd	s0,8(sp)
    80001400:	01010413          	addi	s0,sp,16
    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (arg));
    80001404:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x55));
    80001408:	05500793          	li	a5,85
    8000140c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001410:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001414:	00050513          	mv	a0,a0
    return ret;
}
    80001418:	0005051b          	sext.w	a0,a0
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z9mem_allocm>:
void* mem_alloc(size_t size){
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16

    void* ptr = nullptr; //moram u startu da ga imam inicijalizovanog
    int numMemBlocks = size/MEM_BLOCK_SIZE;
    80001434:	00655793          	srli	a5,a0,0x6
    80001438:	0007879b          	sext.w	a5,a5
    if(size%MEM_BLOCK_SIZE) numMemBlocks += 1;
    8000143c:	03f57513          	andi	a0,a0,63
    80001440:	00050463          	beqz	a0,80001448 <_Z9mem_allocm+0x20>
    80001444:	0017879b          	addiw	a5,a5,1
    __asm__ volatile("mv a0, %0" : : "r" (0x01));
    80001448:	00100713          	li	a4,1
    8000144c:	00070513          	mv	a0,a4
    __asm__ volatile("mv a1, %0" : : "r" (numMemBlocks));
    80001450:	00078593          	mv	a1,a5
    __asm__ volatile("ecall");
    80001454:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ptr));
    80001458:	00050513          	mv	a0,a0
    return ptr;
}
    8000145c:	00813403          	ld	s0,8(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_Z8mem_freePv>:
int mem_free(void* ptr){
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00813423          	sd	s0,8(sp)
    80001470:	01010413          	addi	s0,sp,16
    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (ptr));
    80001474:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x02));
    80001478:	00200793          	li	a5,2
    8000147c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001480:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001484:	00050513          	mv	a0,a0
    return ret;
}
    80001488:	0005051b          	sext.w	a0,a0
    8000148c:	00813403          	ld	s0,8(sp)
    80001490:	01010113          	addi	sp,sp,16
    80001494:	00008067          	ret

0000000080001498 <_Z13thread_createPP7kThreadPFvPvES2_>:

int thread_create(thread_t * handle, void(*start_routine)(void*), void* arg){
    80001498:	fd010113          	addi	sp,sp,-48
    8000149c:	02113423          	sd	ra,40(sp)
    800014a0:	02813023          	sd	s0,32(sp)
    800014a4:	00913c23          	sd	s1,24(sp)
    800014a8:	01213823          	sd	s2,16(sp)
    800014ac:	01313423          	sd	s3,8(sp)
    800014b0:	03010413          	addi	s0,sp,48
    800014b4:	00050993          	mv	s3,a0
    800014b8:	00058493          	mv	s1,a1
    800014bc:	00060913          	mv	s2,a2

    int ret = 0;
    void* stack_space;
    if(start_routine)  stack_space = mem_alloc(DEFAULT_STACK_SIZE); //dira a0 (u kom nam povratna adresa)
    800014c0:	04058863          	beqz	a1,80001510 <_Z13thread_createPP7kThreadPFvPvES2_+0x78>
    800014c4:	00001537          	lui	a0,0x1
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	f60080e7          	jalr	-160(ra) # 80001428 <_Z9mem_allocm>
    else stack_space = nullptr;
    __asm__ volatile("mv a1, %0": :"r"(handle));
    800014d0:	00098593          	mv	a1,s3
    __asm__ volatile("mv a2, %0": :"r"(start_routine)); //proveri
    800014d4:	00048613          	mv	a2,s1
    __asm__ volatile("mv a3, %0": :"r"(arg));
    800014d8:	00090693          	mv	a3,s2
    __asm__ volatile("mv a4, %0": : "r"(stack_space)); //stavi stack_space na ox11
    800014dc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x11));
    800014e0:	01100793          	li	a5,17
    800014e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall"); //ovo je trenutak u kom menjam rezim
    800014e8:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800014ec:	00050513          	mv	a0,a0
    return ret;

}
    800014f0:	0005051b          	sext.w	a0,a0
    800014f4:	02813083          	ld	ra,40(sp)
    800014f8:	02013403          	ld	s0,32(sp)
    800014fc:	01813483          	ld	s1,24(sp)
    80001500:	01013903          	ld	s2,16(sp)
    80001504:	00813983          	ld	s3,8(sp)
    80001508:	03010113          	addi	sp,sp,48
    8000150c:	00008067          	ret
    else stack_space = nullptr;
    80001510:	00000513          	li	a0,0
    80001514:	fbdff06f          	j	800014d0 <_Z13thread_createPP7kThreadPFvPvES2_+0x38>

0000000080001518 <_Z11thread_exitv>:

int thread_exit(){
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00813423          	sd	s0,8(sp)
    80001520:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a0, %0" : : "r" (0x12));
    80001524:	01200793          	li	a5,18
    80001528:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000152c:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001530:	00050513          	mv	a0,a0
    return ret;

}
    80001534:	0005051b          	sext.w	a0,a0
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00813423          	sd	s0,8(sp)
    8000154c:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a0, %0" : : "r" (0x13));
    80001550:	01300793          	li	a5,19
    80001554:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001558:	00000073          	ecall
}
    8000155c:	00813403          	ld	s0,8(sp)
    80001560:	01010113          	addi	sp,sp,16
    80001564:	00008067          	ret

0000000080001568 <_Z11thread_joinP7kThread>:

void thread_join(thread_t handle){
    80001568:	ff010113          	addi	sp,sp,-16
    8000156c:	00813423          	sd	s0,8(sp)
    80001570:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001574:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x14));
    80001578:	01400793          	li	a5,20
    8000157c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001580:	00000073          	ecall
}
    80001584:	00813403          	ld	s0,8(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_Z8sem_openPP10kSemaphorej>:

int sem_open(sem_t* handle, unsigned init){
    80001590:	ff010113          	addi	sp,sp,-16
    80001594:	00813423          	sd	s0,8(sp)
    80001598:	01010413          	addi	s0,sp,16

    int ret = 0;

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000159c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0" : : "r" (init));
    800015a0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a0, %0" : : "r" (0x21));
    800015a4:	02100793          	li	a5,33
    800015a8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015ac:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800015b0:	00050513          	mv	a0,a0
    return ret;

}
    800015b4:	0005051b          	sext.w	a0,a0
    800015b8:	00813403          	ld	s0,8(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_Z9sem_closeP10kSemaphore>:

int sem_close(sem_t handle){
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800015d0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x22));
    800015d4:	02200793          	li	a5,34
    800015d8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015dc:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800015e0:	00050513          	mv	a0,a0
    return ret;

}
    800015e4:	0005051b          	sext.w	a0,a0
    800015e8:	00813403          	ld	s0,8(sp)
    800015ec:	01010113          	addi	sp,sp,16
    800015f0:	00008067          	ret

00000000800015f4 <_Z8sem_waitP10kSemaphore>:

int sem_wait(sem_t id){
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001600:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x23));
    80001604:	02300793          	li	a5,35
    80001608:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000160c:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001610:	00050513          	mv	a0,a0
    return ret;

}
    80001614:	0005051b          	sext.w	a0,a0
    80001618:	00813403          	ld	s0,8(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret

0000000080001624 <_Z10sem_signalP10kSemaphore>:

int sem_signal(sem_t id){
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00813423          	sd	s0,8(sp)
    8000162c:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001630:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x24));
    80001634:	02400793          	li	a5,36
    80001638:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000163c:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001640:	00050513          	mv	a0,a0
    return ret;

}
    80001644:	0005051b          	sext.w	a0,a0
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_Z10time_sleepm>:

int time_sleep(time_t time){
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (time));
    80001660:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x31));
    80001664:	03100793          	li	a5,49
    80001668:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000166c:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001670:	00050513          	mv	a0,a0
    return ret;
}
    80001674:	0005051b          	sext.w	a0,a0
    80001678:	00813403          	ld	s0,8(sp)
    8000167c:	01010113          	addi	sp,sp,16
    80001680:	00008067          	ret

0000000080001684 <_Z4getcv>:

char getc(){
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00813423          	sd	s0,8(sp)
    8000168c:	01010413          	addi	s0,sp,16

    char ret = '0';
    __asm__ volatile("mv a0, %0" : : "r" (0x41));
    80001690:	04100793          	li	a5,65
    80001694:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001698:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000169c:	00050513          	mv	a0,a0
    return ret;

}
    800016a0:	0ff57513          	andi	a0,a0,255
    800016a4:	00813403          	ld	s0,8(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_Z4putcc>:

void putc(char c){
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00813423          	sd	s0,8(sp)
    800016b8:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (c));
    800016bc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x42));
    800016c0:	04200793          	li	a5,66
    800016c4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016c8:	00000073          	ecall

}
    800016cc:	00813403          	ld	s0,8(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZL9fibonaccim>:
#include "../h/print.hpp"
#include "../h/kThread.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    800016d8:	fe010113          	addi	sp,sp,-32
    800016dc:	00113c23          	sd	ra,24(sp)
    800016e0:	00813823          	sd	s0,16(sp)
    800016e4:	00913423          	sd	s1,8(sp)
    800016e8:	01213023          	sd	s2,0(sp)
    800016ec:	02010413          	addi	s0,sp,32
    800016f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800016f4:	00100793          	li	a5,1
    800016f8:	02a7f663          	bgeu	a5,a0,80001724 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    800016fc:	00357793          	andi	a5,a0,3
    80001700:	02078e63          	beqz	a5,8000173c <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001704:	fff48513          	addi	a0,s1,-1
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	fd0080e7          	jalr	-48(ra) # 800016d8 <_ZL9fibonaccim>
    80001710:	00050913          	mv	s2,a0
    80001714:	ffe48513          	addi	a0,s1,-2
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	fc0080e7          	jalr	-64(ra) # 800016d8 <_ZL9fibonaccim>
    80001720:	00a90533          	add	a0,s2,a0
}
    80001724:	01813083          	ld	ra,24(sp)
    80001728:	01013403          	ld	s0,16(sp)
    8000172c:	00813483          	ld	s1,8(sp)
    80001730:	00013903          	ld	s2,0(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	e08080e7          	jalr	-504(ra) # 80001544 <_Z15thread_dispatchv>
    80001744:	fc1ff06f          	j	80001704 <_ZL9fibonaccim+0x2c>

0000000080001748 <_Z11workerBodyAPv>:

void workerBodyA(void *)
{
    80001748:	fe010113          	addi	sp,sp,-32
    8000174c:	00113c23          	sd	ra,24(sp)
    80001750:	00813823          	sd	s0,16(sp)
    80001754:	00913423          	sd	s1,8(sp)
    80001758:	01213023          	sd	s2,0(sp)
    8000175c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001760:	00000493          	li	s1,0
    80001764:	0380006f          	j	8000179c <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001768:	00004517          	auipc	a0,0x4
    8000176c:	89850513          	addi	a0,a0,-1896 # 80005000 <kvmincrease+0x8f0>
    80001770:	00001097          	auipc	ra,0x1
    80001774:	a34080e7          	jalr	-1484(ra) # 800021a4 <_Z11printStringPKc>
        printInteger(i);
    80001778:	00048513          	mv	a0,s1
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	a6c080e7          	jalr	-1428(ra) # 800021e8 <_Z12printIntegerm>
        printString("\n");
    80001784:	00004517          	auipc	a0,0x4
    80001788:	98450513          	addi	a0,a0,-1660 # 80005108 <kvmincrease+0x9f8>
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	a18080e7          	jalr	-1512(ra) # 800021a4 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001794:	0014849b          	addiw	s1,s1,1
    80001798:	0ff4f493          	andi	s1,s1,255
    8000179c:	00200793          	li	a5,2
    800017a0:	fc97f4e3          	bgeu	a5,s1,80001768 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800017a4:	00004517          	auipc	a0,0x4
    800017a8:	86450513          	addi	a0,a0,-1948 # 80005008 <kvmincrease+0x8f8>
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	9f8080e7          	jalr	-1544(ra) # 800021a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800017b4:	00700313          	li	t1,7
    thread_dispatch();
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	d8c080e7          	jalr	-628(ra) # 80001544 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800017c0:	00030913          	mv	s2,t1

    printString("A: t1=");
    800017c4:	00004517          	auipc	a0,0x4
    800017c8:	85450513          	addi	a0,a0,-1964 # 80005018 <kvmincrease+0x908>
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	9d8080e7          	jalr	-1576(ra) # 800021a4 <_Z11printStringPKc>
    printInteger(t1);
    800017d4:	00090513          	mv	a0,s2
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	a10080e7          	jalr	-1520(ra) # 800021e8 <_Z12printIntegerm>
    printString("\n");
    800017e0:	00004517          	auipc	a0,0x4
    800017e4:	92850513          	addi	a0,a0,-1752 # 80005108 <kvmincrease+0x9f8>
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	9bc080e7          	jalr	-1604(ra) # 800021a4 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800017f0:	01400513          	li	a0,20
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	ee4080e7          	jalr	-284(ra) # 800016d8 <_ZL9fibonaccim>
    800017fc:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001800:	00004517          	auipc	a0,0x4
    80001804:	82050513          	addi	a0,a0,-2016 # 80005020 <kvmincrease+0x910>
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	99c080e7          	jalr	-1636(ra) # 800021a4 <_Z11printStringPKc>
    printInteger(result);
    80001810:	00090513          	mv	a0,s2
    80001814:	00001097          	auipc	ra,0x1
    80001818:	9d4080e7          	jalr	-1580(ra) # 800021e8 <_Z12printIntegerm>
    printString("\n");
    8000181c:	00004517          	auipc	a0,0x4
    80001820:	8ec50513          	addi	a0,a0,-1812 # 80005108 <kvmincrease+0x9f8>
    80001824:	00001097          	auipc	ra,0x1
    80001828:	980080e7          	jalr	-1664(ra) # 800021a4 <_Z11printStringPKc>
    8000182c:	0380006f          	j	80001864 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001830:	00003517          	auipc	a0,0x3
    80001834:	7d050513          	addi	a0,a0,2000 # 80005000 <kvmincrease+0x8f0>
    80001838:	00001097          	auipc	ra,0x1
    8000183c:	96c080e7          	jalr	-1684(ra) # 800021a4 <_Z11printStringPKc>
        printInteger(i);
    80001840:	00048513          	mv	a0,s1
    80001844:	00001097          	auipc	ra,0x1
    80001848:	9a4080e7          	jalr	-1628(ra) # 800021e8 <_Z12printIntegerm>
        printString("\n");
    8000184c:	00004517          	auipc	a0,0x4
    80001850:	8bc50513          	addi	a0,a0,-1860 # 80005108 <kvmincrease+0x9f8>
    80001854:	00001097          	auipc	ra,0x1
    80001858:	950080e7          	jalr	-1712(ra) # 800021a4 <_Z11printStringPKc>
    for (; i < 6; i++)
    8000185c:	0014849b          	addiw	s1,s1,1
    80001860:	0ff4f493          	andi	s1,s1,255
    80001864:	00500793          	li	a5,5
    80001868:	fc97f4e3          	bgeu	a5,s1,80001830 <_Z11workerBodyAPv+0xe8>
    }

    kThread::running->setFinished(true);
    8000186c:	00004797          	auipc	a5,0x4
    80001870:	1dc7b783          	ld	a5,476(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001874:	0007b783          	ld	a5,0(a5)

public:

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { kThread::finished = finished; }
    80001878:	00100713          	li	a4,1
    8000187c:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    80001880:	00000097          	auipc	ra,0x0
    80001884:	cc4080e7          	jalr	-828(ra) # 80001544 <_Z15thread_dispatchv>
    printString("yee");
    80001888:	00003517          	auipc	a0,0x3
    8000188c:	7a850513          	addi	a0,a0,1960 # 80005030 <kvmincrease+0x920>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	914080e7          	jalr	-1772(ra) # 800021a4 <_Z11printStringPKc>
}
    80001898:	01813083          	ld	ra,24(sp)
    8000189c:	01013403          	ld	s0,16(sp)
    800018a0:	00813483          	ld	s1,8(sp)
    800018a4:	00013903          	ld	s2,0(sp)
    800018a8:	02010113          	addi	sp,sp,32
    800018ac:	00008067          	ret

00000000800018b0 <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    800018b0:	fe010113          	addi	sp,sp,-32
    800018b4:	00113c23          	sd	ra,24(sp)
    800018b8:	00813823          	sd	s0,16(sp)
    800018bc:	00913423          	sd	s1,8(sp)
    800018c0:	01213023          	sd	s2,0(sp)
    800018c4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800018c8:	00a00493          	li	s1,10
    800018cc:	0380006f          	j	80001904 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800018d0:	00003517          	auipc	a0,0x3
    800018d4:	76850513          	addi	a0,a0,1896 # 80005038 <kvmincrease+0x928>
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	8cc080e7          	jalr	-1844(ra) # 800021a4 <_Z11printStringPKc>
        printInteger(i);
    800018e0:	00048513          	mv	a0,s1
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	904080e7          	jalr	-1788(ra) # 800021e8 <_Z12printIntegerm>
        printString("\n");
    800018ec:	00004517          	auipc	a0,0x4
    800018f0:	81c50513          	addi	a0,a0,-2020 # 80005108 <kvmincrease+0x9f8>
    800018f4:	00001097          	auipc	ra,0x1
    800018f8:	8b0080e7          	jalr	-1872(ra) # 800021a4 <_Z11printStringPKc>
    for (; i < 13; i++)
    800018fc:	0014849b          	addiw	s1,s1,1
    80001900:	0ff4f493          	andi	s1,s1,255
    80001904:	00c00793          	li	a5,12
    80001908:	fc97f4e3          	bgeu	a5,s1,800018d0 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    8000190c:	00003517          	auipc	a0,0x3
    80001910:	73450513          	addi	a0,a0,1844 # 80005040 <kvmincrease+0x930>
    80001914:	00001097          	auipc	ra,0x1
    80001918:	890080e7          	jalr	-1904(ra) # 800021a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000191c:	00500313          	li	t1,5
    thread_dispatch();
    80001920:	00000097          	auipc	ra,0x0
    80001924:	c24080e7          	jalr	-988(ra) # 80001544 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    80001928:	01700513          	li	a0,23
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	dac080e7          	jalr	-596(ra) # 800016d8 <_ZL9fibonaccim>
    80001934:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001938:	00003517          	auipc	a0,0x3
    8000193c:	6e850513          	addi	a0,a0,1768 # 80005020 <kvmincrease+0x910>
    80001940:	00001097          	auipc	ra,0x1
    80001944:	864080e7          	jalr	-1948(ra) # 800021a4 <_Z11printStringPKc>
    printInteger(result);
    80001948:	00090513          	mv	a0,s2
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	89c080e7          	jalr	-1892(ra) # 800021e8 <_Z12printIntegerm>
    printString("\n");
    80001954:	00003517          	auipc	a0,0x3
    80001958:	7b450513          	addi	a0,a0,1972 # 80005108 <kvmincrease+0x9f8>
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	848080e7          	jalr	-1976(ra) # 800021a4 <_Z11printStringPKc>
    80001964:	0380006f          	j	8000199c <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001968:	00003517          	auipc	a0,0x3
    8000196c:	6d050513          	addi	a0,a0,1744 # 80005038 <kvmincrease+0x928>
    80001970:	00001097          	auipc	ra,0x1
    80001974:	834080e7          	jalr	-1996(ra) # 800021a4 <_Z11printStringPKc>
        printInteger(i);
    80001978:	00048513          	mv	a0,s1
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	86c080e7          	jalr	-1940(ra) # 800021e8 <_Z12printIntegerm>
        printString("\n");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	78450513          	addi	a0,a0,1924 # 80005108 <kvmincrease+0x9f8>
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	818080e7          	jalr	-2024(ra) # 800021a4 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001994:	0014849b          	addiw	s1,s1,1
    80001998:	0ff4f493          	andi	s1,s1,255
    8000199c:	00f00793          	li	a5,15
    800019a0:	fc97f4e3          	bgeu	a5,s1,80001968 <_Z11workerBodyBPv+0xb8>
    }
    kThread::running->setFinished(true);
    800019a4:	00004797          	auipc	a5,0x4
    800019a8:	0a47b783          	ld	a5,164(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019ac:	0007b783          	ld	a5,0(a5)
    800019b0:	00100713          	li	a4,1
    800019b4:	02e78823          	sb	a4,48(a5)
    thread_dispatch();
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	b8c080e7          	jalr	-1140(ra) # 80001544 <_Z15thread_dispatchv>

}
    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	00813483          	ld	s1,8(sp)
    800019cc:	00013903          	ld	s2,0(sp)
    800019d0:	02010113          	addi	sp,sp,32
    800019d4:	00008067          	ret

00000000800019d8 <_Z11workerBodyCPv>:

void workerBodyC(void*)
{
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00113423          	sd	ra,8(sp)
    800019e0:	00813023          	sd	s0,0(sp)
    800019e4:	01010413          	addi	s0,sp,16
    while(1)
    {
        printString("C\n");
    800019e8:	00003517          	auipc	a0,0x3
    800019ec:	66850513          	addi	a0,a0,1640 # 80005050 <kvmincrease+0x940>
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	7b4080e7          	jalr	1972(ra) # 800021a4 <_Z11printStringPKc>
        kThread::yield();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	220080e7          	jalr	544(ra) # 80001c18 <_ZN7kThread5yieldEv>
    while(1)
    80001a00:	fe9ff06f          	j	800019e8 <_Z11workerBodyCPv+0x10>

0000000080001a04 <_Z11workerBodyDPv>:
    }
}

void workerBodyD(void*)
{
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00113423          	sd	ra,8(sp)
    80001a0c:	00813023          	sd	s0,0(sp)
    80001a10:	01010413          	addi	s0,sp,16
    while(1)
    {
        printString("D\n");
    80001a14:	00003517          	auipc	a0,0x3
    80001a18:	64450513          	addi	a0,a0,1604 # 80005058 <kvmincrease+0x948>
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	788080e7          	jalr	1928(ra) # 800021a4 <_Z11printStringPKc>
        kThread::yield();
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	1f4080e7          	jalr	500(ra) # 80001c18 <_ZN7kThread5yieldEv>
    while(1)
    80001a2c:	fe9ff06f          	j	80001a14 <_Z11workerBodyDPv+0x10>

0000000080001a30 <_ZN7kThread13threadWrapperEv>:

    kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	450080e7          	jalr	1104(ra) # 80001e90 <_ZN5Riscv10popSppSpieEv>
  //  printInteger(100);
    running->body(running->arg);
    80001a48:	00004797          	auipc	a5,0x4
    80001a4c:	0687b783          	ld	a5,104(a5) # 80005ab0 <_ZN7kThread7runningE>
    80001a50:	0087b703          	ld	a4,8(a5)
    80001a54:	0107b503          	ld	a0,16(a5)
    80001a58:	000700e7          	jalr	a4
//    ktThreadExit();
}
    80001a5c:	00813083          	ld	ra,8(sp)
    80001a60:	00013403          	ld	s0,0(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <_ZN7kThreadC1EPFvPvES0_S0_>:
kThread::kThread(Body body, void* arg, void* stack_space) : body(body), arg(arg),
    80001a6c:	fd010113          	addi	sp,sp,-48
    80001a70:	02113423          	sd	ra,40(sp)
    80001a74:	02813023          	sd	s0,32(sp)
    80001a78:	00913c23          	sd	s1,24(sp)
    80001a7c:	01213823          	sd	s2,16(sp)
    80001a80:	01313423          	sd	s3,8(sp)
    80001a84:	03010413          	addi	s0,sp,48
    80001a88:	00050493          	mv	s1,a0
    80001a8c:	00058913          	mv	s2,a1
    80001a90:	00068993          	mv	s3,a3
finished(false)
    80001a94:	00b53423          	sd	a1,8(a0)
    80001a98:	00c53823          	sd	a2,16(a0)
    stack(body!= nullptr ? new uint64[4096]: nullptr),
    80001a9c:	06058463          	beqz	a1,80001b04 <_ZN7kThreadC1EPFvPvES0_S0_+0x98>
    80001aa0:	00008537          	lui	a0,0x8
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	374080e7          	jalr	884(ra) # 80001e18 <_Znam>
finished(false)
    80001aac:	00a4bc23          	sd	a0,24(s1)
    context({body!=nullptr?(uint64)threadWrapper : 0,
    80001ab0:	04090e63          	beqz	s2,80001b0c <_ZN7kThreadC1EPFvPvES0_S0_+0xa0>
    80001ab4:	00000797          	auipc	a5,0x0
    80001ab8:	f7c78793          	addi	a5,a5,-132 # 80001a30 <_ZN7kThread13threadWrapperEv>
finished(false)
    80001abc:	02f4b023          	sd	a5,32(s1)
             stack_space != nullptr ? (uint64) &stack[4095] : 0 }),
    80001ac0:	04098a63          	beqz	s3,80001b14 <_ZN7kThreadC1EPFvPvES0_S0_+0xa8>
    80001ac4:	000087b7          	lui	a5,0x8
    80001ac8:	ff878793          	addi	a5,a5,-8 # 7ff8 <_entry-0x7fff8008>
    80001acc:	00f50533          	add	a0,a0,a5
finished(false)
    80001ad0:	02a4b423          	sd	a0,40(s1)
    80001ad4:	02048823          	sb	zero,48(s1)
        if(body != nullptr) { kScheduler::put(this);}
    80001ad8:	00090863          	beqz	s2,80001ae8 <_ZN7kThreadC1EPFvPvES0_S0_+0x7c>
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	67c080e7          	jalr	1660(ra) # 8000215c <_ZN10kScheduler3putEP7kThread>
    }
    80001ae8:	02813083          	ld	ra,40(sp)
    80001aec:	02013403          	ld	s0,32(sp)
    80001af0:	01813483          	ld	s1,24(sp)
    80001af4:	01013903          	ld	s2,16(sp)
    80001af8:	00813983          	ld	s3,8(sp)
    80001afc:	03010113          	addi	sp,sp,48
    80001b00:	00008067          	ret
    stack(body!= nullptr ? new uint64[4096]: nullptr),
    80001b04:	00000513          	li	a0,0
    80001b08:	fa5ff06f          	j	80001aac <_ZN7kThreadC1EPFvPvES0_S0_+0x40>
    context({body!=nullptr?(uint64)threadWrapper : 0,
    80001b0c:	00000793          	li	a5,0
    80001b10:	fadff06f          	j	80001abc <_ZN7kThreadC1EPFvPvES0_S0_+0x50>
             stack_space != nullptr ? (uint64) &stack[4095] : 0 }),
    80001b14:	00000513          	li	a0,0
    80001b18:	fb9ff06f          	j	80001ad0 <_ZN7kThreadC1EPFvPvES0_S0_+0x64>

0000000080001b1c <_ZN7kThread13createProcessEPFvPvES0_S0_>:
kThread* kThread::createProcess(Body body, void* args, void* stack_space) {
    80001b1c:	fd010113          	addi	sp,sp,-48
    80001b20:	02113423          	sd	ra,40(sp)
    80001b24:	02813023          	sd	s0,32(sp)
    80001b28:	00913c23          	sd	s1,24(sp)
    80001b2c:	01213823          	sd	s2,16(sp)
    80001b30:	01313423          	sd	s3,8(sp)
    80001b34:	01413023          	sd	s4,0(sp)
    80001b38:	03010413          	addi	s0,sp,48
    80001b3c:	00050913          	mv	s2,a0
    80001b40:	00058993          	mv	s3,a1
    80001b44:	00060a13          	mv	s4,a2
    return new kThread(body,args, stack_space);
    80001b48:	03800513          	li	a0,56
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	2a4080e7          	jalr	676(ra) # 80001df0 <_Znwm>
    80001b54:	00050493          	mv	s1,a0
    80001b58:	000a0693          	mv	a3,s4
    80001b5c:	00098613          	mv	a2,s3
    80001b60:	00090593          	mv	a1,s2
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	f08080e7          	jalr	-248(ra) # 80001a6c <_ZN7kThreadC1EPFvPvES0_S0_>
    80001b6c:	0200006f          	j	80001b8c <_ZN7kThread13createProcessEPFvPvES0_S0_+0x70>
    80001b70:	00050913          	mv	s2,a0
    80001b74:	00048513          	mv	a0,s1
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	2c8080e7          	jalr	712(ra) # 80001e40 <_ZdlPv>
    80001b80:	00090513          	mv	a0,s2
    80001b84:	00005097          	auipc	ra,0x5
    80001b88:	014080e7          	jalr	20(ra) # 80006b98 <_Unwind_Resume>
}
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	02813083          	ld	ra,40(sp)
    80001b94:	02013403          	ld	s0,32(sp)
    80001b98:	01813483          	ld	s1,24(sp)
    80001b9c:	01013903          	ld	s2,16(sp)
    80001ba0:	00813983          	ld	s3,8(sp)
    80001ba4:	00013a03          	ld	s4,0(sp)
    80001ba8:	03010113          	addi	sp,sp,48
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN7kThread8dispatchEv>:
{
    80001bb0:	fe010113          	addi	sp,sp,-32
    80001bb4:	00113c23          	sd	ra,24(sp)
    80001bb8:	00813823          	sd	s0,16(sp)
    80001bbc:	00913423          	sd	s1,8(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    kThread *old = running;
    80001bc4:	00004497          	auipc	s1,0x4
    80001bc8:	eec4b483          	ld	s1,-276(s1) # 80005ab0 <_ZN7kThread7runningE>
    inline bool isFinished() const { return finished; }
    80001bcc:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { kScheduler::put(old); }
    80001bd0:	02078c63          	beqz	a5,80001c08 <_ZN7kThread8dispatchEv+0x58>
    running = kScheduler::get();
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	558080e7          	jalr	1368(ra) # 8000212c <_ZN10kScheduler3getEv>
    80001bdc:	00004797          	auipc	a5,0x4
    80001be0:	eca7ba23          	sd	a0,-300(a5) # 80005ab0 <_ZN7kThread7runningE>
    kThread::contextSwitch(&old->context, &running->context);
    80001be4:	02050593          	addi	a1,a0,32 # 8020 <_entry-0x7fff7fe0>
    80001be8:	02048513          	addi	a0,s1,32
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	7f8080e7          	jalr	2040(ra) # 800013e4 <_ZN7kThread13contextSwitchEPNS_7ContextES1_>
}
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	00813483          	ld	s1,8(sp)
    80001c00:	02010113          	addi	sp,sp,32
    80001c04:	00008067          	ret
    if (!old->isFinished()) { kScheduler::put(old); }
    80001c08:	00048513          	mv	a0,s1
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	550080e7          	jalr	1360(ra) # 8000215c <_ZN10kScheduler3putEP7kThread>
    80001c14:	fc1ff06f          	j	80001bd4 <_ZN7kThread8dispatchEv+0x24>

0000000080001c18 <_ZN7kThread5yieldEv>:
{
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00113423          	sd	ra,8(sp)
    80001c20:	00813023          	sd	s0,0(sp)
    80001c24:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	3d8080e7          	jalr	984(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    kThread::dispatch();
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	f80080e7          	jalr	-128(ra) # 80001bb0 <_ZN7kThread8dispatchEv>
    Riscv::popRegisters();
    80001c38:	fffff097          	auipc	ra,0xfffff
    80001c3c:	444080e7          	jalr	1092(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001c40:	00813083          	ld	ra,8(sp)
    80001c44:	00013403          	ld	s0,0(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_ZN7kThread11kThreadExitEv>:

void kThread::kThreadExit() {
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00813423          	sd	s0,8(sp)
    80001c58:	01010413          	addi	s0,sp,16
//treba da oslobodi memoriju koju je zauzeo
//i da se obrise objekat niti
}
    80001c5c:	00813403          	ld	s0,8(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <main>:
#include "../h/workers.hpp"

extern "C" { extern int __supervisorTrap;}

int main()
{
    80001c68:	fb010113          	addi	sp,sp,-80
    80001c6c:	04113423          	sd	ra,72(sp)
    80001c70:	04813023          	sd	s0,64(sp)
    80001c74:	02913c23          	sd	s1,56(sp)
    80001c78:	03213823          	sd	s2,48(sp)
    80001c7c:	05010413          	addi	s0,sp,80


   __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
    80001c80:	00004797          	auipc	a5,0x4
    80001c84:	dd87b783          	ld	a5,-552(a5) # 80005a58 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c88:	0017e793          	ori	a5,a5,1
    80001c8c:	10579073          	csrw	stvec,a5
//    ret = test(13);
//    printInteger(ret);
//    printString(" test done\n");
//
    uint64  size = 4096;
    void* ptrA = mem_alloc(size);
    80001c90:	00001537          	lui	a0,0x1
    80001c94:	fffff097          	auipc	ra,0xfffff
    80001c98:	794080e7          	jalr	1940(ra) # 80001428 <_Z9mem_allocm>
    80001c9c:	fca43c23          	sd	a0,-40(s0)
    uint64 intPtr = (uint64)(&ptrA);
    printHex(intPtr);
    80001ca0:	fd840513          	addi	a0,s0,-40
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	5d4080e7          	jalr	1492(ra) # 80002278 <_Z8printHexm>
    printString(" mem_alloc done\n");
    80001cac:	00003517          	auipc	a0,0x3
    80001cb0:	3b450513          	addi	a0,a0,948 # 80005060 <kvmincrease+0x950>
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	4f0080e7          	jalr	1264(ra) # 800021a4 <_Z11printStringPKc>

    void* ptrB = mem_alloc(size);
    80001cbc:	00001537          	lui	a0,0x1
    80001cc0:	fffff097          	auipc	ra,0xfffff
    80001cc4:	768080e7          	jalr	1896(ra) # 80001428 <_Z9mem_allocm>
    80001cc8:	fca43823          	sd	a0,-48(s0)
    intPtr = (uint64)(&ptrB);
    printHex(intPtr);
    80001ccc:	fd040513          	addi	a0,s0,-48
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	5a8080e7          	jalr	1448(ra) # 80002278 <_Z8printHexm>
    printString(" mem_alloc done\n");
    80001cd8:	00003517          	auipc	a0,0x3
    80001cdc:	38850513          	addi	a0,a0,904 # 80005060 <kvmincrease+0x950>
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	4c4080e7          	jalr	1220(ra) # 800021a4 <_Z11printStringPKc>
//    int retB = thread_create(&threads[2], workerBodyB, nullptr);
//    printInteger(retB);
//    printString("\n");


    threads[0] = kThread::createProcess(nullptr,nullptr,nullptr);
    80001ce8:	00000613          	li	a2,0
    80001cec:	00000593          	li	a1,0
    80001cf0:	00000513          	li	a0,0
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	e28080e7          	jalr	-472(ra) # 80001b1c <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001cfc:	faa43c23          	sd	a0,-72(s0)
    kThread::running = threads[0];
    80001d00:	00004797          	auipc	a5,0x4
    80001d04:	d487b783          	ld	a5,-696(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d08:	00a7b023          	sd	a0,0(a5)
    threads[1] = kThread::createProcess(workerBodyA, nullptr, ptrA);
    80001d0c:	fd843603          	ld	a2,-40(s0)
    80001d10:	00000593          	li	a1,0
    80001d14:	00004517          	auipc	a0,0x4
    80001d18:	d3c53503          	ld	a0,-708(a0) # 80005a50 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	e00080e7          	jalr	-512(ra) # 80001b1c <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001d24:	fca43023          	sd	a0,-64(s0)
    printString("CoroutineA created\n");
    80001d28:	00003517          	auipc	a0,0x3
    80001d2c:	35050513          	addi	a0,a0,848 # 80005078 <kvmincrease+0x968>
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	474080e7          	jalr	1140(ra) # 800021a4 <_Z11printStringPKc>
    threads[2] = kThread::createProcess(workerBodyB, nullptr, ptrB);
    80001d38:	fd043603          	ld	a2,-48(s0)
    80001d3c:	00000593          	li	a1,0
    80001d40:	00004517          	auipc	a0,0x4
    80001d44:	d2053503          	ld	a0,-736(a0) # 80005a60 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	dd4080e7          	jalr	-556(ra) # 80001b1c <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001d50:	fca43423          	sd	a0,-56(s0)
    printString("CoroutineB created\n");
    80001d54:	00003517          	auipc	a0,0x3
    80001d58:	33c50513          	addi	a0,a0,828 # 80005090 <kvmincrease+0x980>
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	448080e7          	jalr	1096(ra) # 800021a4 <_Z11printStringPKc>
    80001d64:	00c0006f          	j	80001d70 <main+0x108>

    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    {
        thread_dispatch();
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	7dc080e7          	jalr	2012(ra) # 80001544 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    80001d70:	fc043783          	ld	a5,-64(s0)
    80001d74:	0307c783          	lbu	a5,48(a5)
    80001d78:	fe0788e3          	beqz	a5,80001d68 <main+0x100>
    80001d7c:	fc843783          	ld	a5,-56(s0)
    80001d80:	0307c783          	lbu	a5,48(a5)
    80001d84:	fe0782e3          	beqz	a5,80001d68 <main+0x100>
    80001d88:	fb840493          	addi	s1,s0,-72
    80001d8c:	0140006f          	j	80001da0 <main+0x138>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001d90:	00090513          	mv	a0,s2
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	0ac080e7          	jalr	172(ra) # 80001e40 <_ZdlPv>
    for (auto &thread: threads)
    80001d9c:	00848493          	addi	s1,s1,8
    80001da0:	fd040793          	addi	a5,s0,-48
    80001da4:	02f48063          	beq	s1,a5,80001dc4 <main+0x15c>
        delete thread;
    80001da8:	0004b903          	ld	s2,0(s1)
    80001dac:	fe0908e3          	beqz	s2,80001d9c <main+0x134>
    ~kThread() { delete[] stack; }
    80001db0:	01893503          	ld	a0,24(s2)
    80001db4:	fc050ee3          	beqz	a0,80001d90 <main+0x128>
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	0b0080e7          	jalr	176(ra) # 80001e68 <_ZdaPv>
    80001dc0:	fd1ff06f          	j	80001d90 <main+0x128>
    }
    //treba da testiras thread_create i thread_dispatch pomocu niti koje se nikad ne zavrsavaju
    printString("Main exit\n");
    80001dc4:	00003517          	auipc	a0,0x3
    80001dc8:	2e450513          	addi	a0,a0,740 # 800050a8 <kvmincrease+0x998>
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	3d8080e7          	jalr	984(ra) # 800021a4 <_Z11printStringPKc>
    return 0;

}
    80001dd4:	00000513          	li	a0,0
    80001dd8:	04813083          	ld	ra,72(sp)
    80001ddc:	04013403          	ld	s0,64(sp)
    80001de0:	03813483          	ld	s1,56(sp)
    80001de4:	03013903          	ld	s2,48(sp)
    80001de8:	05010113          	addi	sp,sp,80
    80001dec:	00008067          	ret

0000000080001df0 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001e00:	00002097          	auipc	ra,0x2
    80001e04:	698080e7          	jalr	1688(ra) # 80004498 <__mem_alloc>
}
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_Znam>:

void *operator new[](size_t n)
{
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00113423          	sd	ra,8(sp)
    80001e20:	00813023          	sd	s0,0(sp)
    80001e24:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001e28:	00002097          	auipc	ra,0x2
    80001e2c:	670080e7          	jalr	1648(ra) # 80004498 <__mem_alloc>
}
    80001e30:	00813083          	ld	ra,8(sp)
    80001e34:	00013403          	ld	s0,0(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001e50:	00002097          	auipc	ra,0x2
    80001e54:	57c080e7          	jalr	1404(ra) # 800043cc <__mem_free>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001e78:	00002097          	auipc	ra,0x2
    80001e7c:	554080e7          	jalr	1364(ra) # 800043cc <__mem_free>
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN5Riscv10popSppSpieEv>:
#include "../h/kThread.hpp"

using Body = void (*)(void *);

void Riscv::popSppSpie()
{
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00813423          	sd	s0,8(sp)
    80001e98:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra"); // sepc <=ra
    80001e9c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001ea0:	10200073          	sret
}
    80001ea4:	00813403          	ld	s0,8(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN5Riscv13handleSyscallEv>:

void Riscv::handleSyscall() {
    80001eb0:	fa010113          	addi	sp,sp,-96
    80001eb4:	04113c23          	sd	ra,88(sp)
    80001eb8:	04813823          	sd	s0,80(sp)
    80001ebc:	04913423          	sd	s1,72(sp)
    80001ec0:	06010413          	addi	s0,sp,96

    //uzimam parametre
    uint64 a0, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001ec4:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001ec8:	00058793          	mv	a5,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001ecc:	00060793          	mv	a5,a2
    __asm__ volatile("mv %0, a4" : "=r"(a3));
    80001ed0:	00070793          	mv	a5,a4
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001ed4:	00070793          	mv	a5,a4
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ed8:	142027f3          	csrr	a5,scause
    80001edc:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001ee0:	fb843483          	ld	s1,-72(s0)

    uint64  scause = r_scause();

    //ecall iz korisnickog, ecall iz sistemskog rezima
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)//syscall
    80001ee4:	ff848713          	addi	a4,s1,-8
    80001ee8:	00100793          	li	a5,1
    80001eec:	0ce7f263          	bgeu	a5,a4,80001fb0 <_ZN5Riscv13handleSyscallEv+0x100>

    }
    else

    {
        if(scause == 0x0000000000000002UL)
    80001ef0:	00200793          	li	a5,2
    80001ef4:	16f48663          	beq	s1,a5,80002060 <_ZN5Riscv13handleSyscallEv+0x1b0>
            printString("Ilegalna instrukcija\n:");
        else if (scause == 0x0000000000000005UL)
    80001ef8:	00500793          	li	a5,5
    80001efc:	16f48c63          	beq	s1,a5,80002074 <_ZN5Riscv13handleSyscallEv+0x1c4>
            printString("Nedozvolena adresa citanja\n");
        else if (scause == 0x0000000000000007UL)
    80001f00:	00700793          	li	a5,7
    80001f04:	18f48263          	beq	s1,a5,80002088 <_ZN5Riscv13handleSyscallEv+0x1d8>
            printString("Nedozvolena adresa upisa\n");


        printString("scause: ");
    80001f08:	00003517          	auipc	a0,0x3
    80001f0c:	20850513          	addi	a0,a0,520 # 80005110 <kvmincrease+0xa00>
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	294080e7          	jalr	660(ra) # 800021a4 <_Z11printStringPKc>
        printInteger(scause);
    80001f18:	00048513          	mv	a0,s1
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	2cc080e7          	jalr	716(ra) # 800021e8 <_Z12printIntegerm>
        printString("\n");
    80001f24:	00003517          	auipc	a0,0x3
    80001f28:	1e450513          	addi	a0,a0,484 # 80005108 <kvmincrease+0x9f8>
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	278080e7          	jalr	632(ra) # 800021a4 <_Z11printStringPKc>
        printString("sepc: ");
    80001f34:	00003517          	auipc	a0,0x3
    80001f38:	1ec50513          	addi	a0,a0,492 # 80005120 <kvmincrease+0xa10>
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	268080e7          	jalr	616(ra) # 800021a4 <_Z11printStringPKc>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f44:	141027f3          	csrr	a5,sepc
    80001f48:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001f4c:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	298080e7          	jalr	664(ra) # 800021e8 <_Z12printIntegerm>
        printString("\n");
    80001f58:	00003517          	auipc	a0,0x3
    80001f5c:	1b050513          	addi	a0,a0,432 # 80005108 <kvmincrease+0x9f8>
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	244080e7          	jalr	580(ra) # 800021a4 <_Z11printStringPKc>
        printString("stval: ");
    80001f68:	00003517          	auipc	a0,0x3
    80001f6c:	1c050513          	addi	a0,a0,448 # 80005128 <kvmincrease+0xa18>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	234080e7          	jalr	564(ra) # 800021a4 <_Z11printStringPKc>
}

inline uint64 Riscv::r_stval()
{
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001f78:	143027f3          	csrr	a5,stval
    80001f7c:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80001f80:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	264080e7          	jalr	612(ra) # 800021e8 <_Z12printIntegerm>
        printString("\n");
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	17c50513          	addi	a0,a0,380 # 80005108 <kvmincrease+0x9f8>
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	210080e7          	jalr	528(ra) # 800021a4 <_Z11printStringPKc>
        //while(1);
    }
}
    80001f9c:	05813083          	ld	ra,88(sp)
    80001fa0:	05013403          	ld	s0,80(sp)
    80001fa4:	04813483          	ld	s1,72(sp)
    80001fa8:	06010113          	addi	sp,sp,96
    80001fac:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001fb0:	141027f3          	csrr	a5,sepc
    80001fb4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001fb8:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+ 4; // jer pc pokazuje na trenutnu instrukciju tj ecall, a po povratku treba da sksocim na  sledecu da se ne bih vrtela vecno
    80001fbc:	00478793          	addi	a5,a5,4
    80001fc0:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fc4:	100027f3          	csrr	a5,sstatus
    80001fc8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001fcc:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus(); // kupim vrednost statusnog registra
    80001fd0:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a0" : "=r"(syscall));
    80001fd4:	00050793          	mv	a5,a0
        switch(syscall)
    80001fd8:	01100713          	li	a4,17
    80001fdc:	06e78c63          	beq	a5,a4,80002054 <_ZN5Riscv13handleSyscallEv+0x1a4>
    80001fe0:	02f76463          	bltu	a4,a5,80002008 <_ZN5Riscv13handleSyscallEv+0x158>
    80001fe4:	00100713          	li	a4,1
    80001fe8:	04e78063          	beq	a5,a4,80002028 <_ZN5Riscv13handleSyscallEv+0x178>
    80001fec:	00200713          	li	a4,2
    80001ff0:	04e79663          	bne	a5,a4,8000203c <_ZN5Riscv13handleSyscallEv+0x18c>
                __asm__ volatile("mv %0, a1": "=r"(ptr));
    80001ff4:	00058513          	mv	a0,a1
                ret = __mem_free(ptr);
    80001ff8:	00002097          	auipc	ra,0x2
    80001ffc:	3d4080e7          	jalr	980(ra) # 800043cc <__mem_free>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002000:	00050513          	mv	a0,a0
                break;
    80002004:	0380006f          	j	8000203c <_ZN5Riscv13handleSyscallEv+0x18c>
        switch(syscall)
    80002008:	01300713          	li	a4,19
    8000200c:	04e78463          	beq	a5,a4,80002054 <_ZN5Riscv13handleSyscallEv+0x1a4>
    80002010:	05500713          	li	a4,85
    80002014:	02e79463          	bne	a5,a4,8000203c <_ZN5Riscv13handleSyscallEv+0x18c>
                __asm__ volatile("mv %0, a1":"=r"(args));
    80002018:	00058793          	mv	a5,a1
                args += 6;
    8000201c:	0067879b          	addiw	a5,a5,6
                __asm__ volatile("mv a0, %0"::"r"(args));
    80002020:	00078513          	mv	a0,a5
                break;
    80002024:	0180006f          	j	8000203c <_ZN5Riscv13handleSyscallEv+0x18c>
                __asm__ volatile("mv %0, a1":"=r"(size));
    80002028:	00058513          	mv	a0,a1
                ptr = __mem_alloc(size);
    8000202c:	00651513          	slli	a0,a0,0x6
    80002030:	00002097          	auipc	ra,0x2
    80002034:	468080e7          	jalr	1128(ra) # 80004498 <__mem_alloc>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80002038:	00050513          	mv	a0,a0
        __asm__ volatile("sd a0, 80(fp)"); //resava mi problem sa a0 (skontaj sta si tu radila)
    8000203c:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80002040:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002044:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002048:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000204c:	14179073          	csrw	sepc,a5
}
    80002050:	f4dff06f          	j	80001f9c <_ZN5Riscv13handleSyscallEv+0xec>
                kThread::yield();
    80002054:	00000097          	auipc	ra,0x0
    80002058:	bc4080e7          	jalr	-1084(ra) # 80001c18 <_ZN7kThread5yieldEv>
                break;
    8000205c:	fe1ff06f          	j	8000203c <_ZN5Riscv13handleSyscallEv+0x18c>
            printString("Ilegalna instrukcija\n:");
    80002060:	00003517          	auipc	a0,0x3
    80002064:	05850513          	addi	a0,a0,88 # 800050b8 <kvmincrease+0x9a8>
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	13c080e7          	jalr	316(ra) # 800021a4 <_Z11printStringPKc>
    80002070:	e99ff06f          	j	80001f08 <_ZN5Riscv13handleSyscallEv+0x58>
            printString("Nedozvolena adresa citanja\n");
    80002074:	00003517          	auipc	a0,0x3
    80002078:	05c50513          	addi	a0,a0,92 # 800050d0 <kvmincrease+0x9c0>
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	128080e7          	jalr	296(ra) # 800021a4 <_Z11printStringPKc>
    80002084:	e85ff06f          	j	80001f08 <_ZN5Riscv13handleSyscallEv+0x58>
            printString("Nedozvolena adresa upisa\n");
    80002088:	00003517          	auipc	a0,0x3
    8000208c:	06850513          	addi	a0,a0,104 # 800050f0 <kvmincrease+0x9e0>
    80002090:	00000097          	auipc	ra,0x0
    80002094:	114080e7          	jalr	276(ra) # 800021a4 <_Z11printStringPKc>
    80002098:	e71ff06f          	j	80001f08 <_ZN5Riscv13handleSyscallEv+0x58>

000000008000209c <_ZN5Riscv20handleTimerInterruptEv>:
void Riscv::handleTimerInterrupt() {
    8000209c:	fd010113          	addi	sp,sp,-48
    800020a0:	02813423          	sd	s0,40(sp)
    800020a4:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800020a8:	00200793          	li	a5,2
    800020ac:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020b0:	141027f3          	csrr	a5,sepc
    800020b4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800020b8:	fd843783          	ld	a5,-40(s0)

    mc_sip(SIP_SSIP); //zasto ovo?? - ni ne radim vrv

    uint64 volatile sepc = r_sepc();
    800020bc:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020c0:	100027f3          	csrr	a5,sstatus
    800020c4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800020c8:	fd043783          	ld	a5,-48(s0)
    uint64 volatile sstatus = r_sstatus();
    800020cc:	fef43023          	sd	a5,-32(s0)
    w_sstatus(sstatus);
    800020d0:	fe043783          	ld	a5,-32(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020d4:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    800020d8:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020dc:	14179073          	csrw	sepc,a5
}
    800020e0:	02813403          	ld	s0,40(sp)
    800020e4:	03010113          	addi	sp,sp,48
    800020e8:	00008067          	ret

00000000800020ec <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
    console_handler();
    800020fc:	00002097          	auipc	ra,0x2
    80002100:	568080e7          	jalr	1384(ra) # 80004664 <console_handler>
}
    80002104:	00813083          	ld	ra,8(sp)
    80002108:	00013403          	ld	s0,0(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZN5Riscv14handleBadCauseEv>:

void Riscv::handleBadCause() {
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00813423          	sd	s0,8(sp)
    8000211c:	01010413          	addi	s0,sp,16

    80002120:	00813403          	ld	s0,8(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <_ZN10kScheduler3getEv>:

kThread* kScheduler::headReady = nullptr;
kThread* kScheduler::tailReady = nullptr;
//ne zaboravi idle nit da ubacis na pocetku
kThread* kScheduler::get()
{
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16

    kThread* tmp = headReady;
    80002138:	00004517          	auipc	a0,0x4
    8000213c:	98053503          	ld	a0,-1664(a0) # 80005ab8 <_ZN10kScheduler9headReadyE>
   if(headReady) headReady = headReady->nextReadyProccess;
    80002140:	00050863          	beqz	a0,80002150 <_ZN10kScheduler3getEv+0x24>
    80002144:	00053783          	ld	a5,0(a0)
    80002148:	00004717          	auipc	a4,0x4
    8000214c:	96f73823          	sd	a5,-1680(a4) # 80005ab8 <_ZN10kScheduler9headReadyE>
    return tmp;

}
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN10kScheduler3putEP7kThread>:

void kScheduler::put(kThread* thr)
{
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00813423          	sd	s0,8(sp)
    80002164:	01010413          	addi	s0,sp,16

    if(!headReady) headReady = thr;
    80002168:	00004797          	auipc	a5,0x4
    8000216c:	9507b783          	ld	a5,-1712(a5) # 80005ab8 <_ZN10kScheduler9headReadyE>
    80002170:	02078463          	beqz	a5,80002198 <_ZN10kScheduler3putEP7kThread+0x3c>

    if(tailReady)
    80002174:	00004797          	auipc	a5,0x4
    80002178:	94c7b783          	ld	a5,-1716(a5) # 80005ac0 <_ZN10kScheduler9tailReadyE>
    8000217c:	00078463          	beqz	a5,80002184 <_ZN10kScheduler3putEP7kThread+0x28>
    {
        tailReady->nextReadyProccess = thr;
    80002180:	00a7b023          	sd	a0,0(a5)
    }

     tailReady = thr;
    80002184:	00004797          	auipc	a5,0x4
    80002188:	92a7be23          	sd	a0,-1732(a5) # 80005ac0 <_ZN10kScheduler9tailReadyE>

}
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret
    if(!headReady) headReady = thr;
    80002198:	00004797          	auipc	a5,0x4
    8000219c:	92a7b023          	sd	a0,-1760(a5) # 80005ab8 <_ZN10kScheduler9headReadyE>
    800021a0:	fd5ff06f          	j	80002174 <_ZN10kScheduler3putEP7kThread+0x18>

00000000800021a4 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800021a4:	fe010113          	addi	sp,sp,-32
    800021a8:	00113c23          	sd	ra,24(sp)
    800021ac:	00813823          	sd	s0,16(sp)
    800021b0:	00913423          	sd	s1,8(sp)
    800021b4:	02010413          	addi	s0,sp,32
    800021b8:	00050493          	mv	s1,a0
    while (*string != '\0')
    800021bc:	0004c503          	lbu	a0,0(s1)
    800021c0:	00050a63          	beqz	a0,800021d4 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    800021c4:	00002097          	auipc	ra,0x2
    800021c8:	42c080e7          	jalr	1068(ra) # 800045f0 <__putc>
        string++;
    800021cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021d0:	fedff06f          	j	800021bc <_Z11printStringPKc+0x18>
    }
}
    800021d4:	01813083          	ld	ra,24(sp)
    800021d8:	01013403          	ld	s0,16(sp)
    800021dc:	00813483          	ld	s1,8(sp)
    800021e0:	02010113          	addi	sp,sp,32
    800021e4:	00008067          	ret

00000000800021e8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800021e8:	fd010113          	addi	sp,sp,-48
    800021ec:	02113423          	sd	ra,40(sp)
    800021f0:	02813023          	sd	s0,32(sp)
    800021f4:	00913c23          	sd	s1,24(sp)
    800021f8:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800021fc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002200:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002204:	00a00613          	li	a2,10
    80002208:	02c5773b          	remuw	a4,a0,a2
    8000220c:	02071693          	slli	a3,a4,0x20
    80002210:	0206d693          	srli	a3,a3,0x20
    80002214:	00003717          	auipc	a4,0x3
    80002218:	f1c70713          	addi	a4,a4,-228 # 80005130 <_ZZ12printIntegermE6digits>
    8000221c:	00d70733          	add	a4,a4,a3
    80002220:	00074703          	lbu	a4,0(a4)
    80002224:	fe040693          	addi	a3,s0,-32
    80002228:	009687b3          	add	a5,a3,s1
    8000222c:	0014849b          	addiw	s1,s1,1
    80002230:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002234:	0005071b          	sext.w	a4,a0
    80002238:	02c5553b          	divuw	a0,a0,a2
    8000223c:	00900793          	li	a5,9
    80002240:	fce7e2e3          	bltu	a5,a4,80002204 <_Z12printIntegerm+0x1c>

    if (neg==1)
        buf[i++] = '-';

    while (--i >= 0)
    80002244:	fff4849b          	addiw	s1,s1,-1
    80002248:	0004ce63          	bltz	s1,80002264 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    8000224c:	fe040793          	addi	a5,s0,-32
    80002250:	009787b3          	add	a5,a5,s1
    80002254:	ff07c503          	lbu	a0,-16(a5)
    80002258:	00002097          	auipc	ra,0x2
    8000225c:	398080e7          	jalr	920(ra) # 800045f0 <__putc>
    80002260:	fe5ff06f          	j	80002244 <_Z12printIntegerm+0x5c>
}
    80002264:	02813083          	ld	ra,40(sp)
    80002268:	02013403          	ld	s0,32(sp)
    8000226c:	01813483          	ld	s1,24(sp)
    80002270:	03010113          	addi	sp,sp,48
    80002274:	00008067          	ret

0000000080002278 <_Z8printHexm>:


void printHex(uint64 integer)
{
    80002278:	fc010113          	addi	sp,sp,-64
    8000227c:	02113c23          	sd	ra,56(sp)
    80002280:	02813823          	sd	s0,48(sp)
    80002284:	02913423          	sd	s1,40(sp)
    80002288:	04010413          	addi	s0,sp,64
    static char hexDigits[] = "0123456789ABCDEF";
    char hexChars[17];
    int index = 0;
    8000228c:	00000493          	li	s1,0

    while (integer > 0) {
    80002290:	02050863          	beqz	a0,800022c0 <_Z8printHexm+0x48>
        uint64 remainder = integer % 16;
    80002294:	00f57713          	andi	a4,a0,15
        hexChars[index++] = hexDigits[remainder];
    80002298:	00003797          	auipc	a5,0x3
    8000229c:	e9878793          	addi	a5,a5,-360 # 80005130 <_ZZ12printIntegermE6digits>
    800022a0:	00e787b3          	add	a5,a5,a4
    800022a4:	0107c703          	lbu	a4,16(a5)
    800022a8:	fe040793          	addi	a5,s0,-32
    800022ac:	009787b3          	add	a5,a5,s1
    800022b0:	fee78423          	sb	a4,-24(a5)
        integer /= 16;
    800022b4:	00455513          	srli	a0,a0,0x4
        hexChars[index++] = hexDigits[remainder];
    800022b8:	0014849b          	addiw	s1,s1,1
    while (integer > 0) {
    800022bc:	fd5ff06f          	j	80002290 <_Z8printHexm+0x18>
    }

    __putc('0');
    800022c0:	03000513          	li	a0,48
    800022c4:	00002097          	auipc	ra,0x2
    800022c8:	32c080e7          	jalr	812(ra) # 800045f0 <__putc>
    __putc('x');
    800022cc:	07800513          	li	a0,120
    800022d0:	00002097          	auipc	ra,0x2
    800022d4:	320080e7          	jalr	800(ra) # 800045f0 <__putc>
    // Print the hexadecimal characters in reverse order
    while (--index >= 0) {
    800022d8:	fff4849b          	addiw	s1,s1,-1
    800022dc:	0004ce63          	bltz	s1,800022f8 <_Z8printHexm+0x80>
        __putc(hexChars[index]);
    800022e0:	fe040793          	addi	a5,s0,-32
    800022e4:	009787b3          	add	a5,a5,s1
    800022e8:	fe87c503          	lbu	a0,-24(a5)
    800022ec:	00002097          	auipc	ra,0x2
    800022f0:	304080e7          	jalr	772(ra) # 800045f0 <__putc>
    800022f4:	fe5ff06f          	j	800022d8 <_Z8printHexm+0x60>
    }
    800022f8:	03813083          	ld	ra,56(sp)
    800022fc:	03013403          	ld	s0,48(sp)
    80002300:	02813483          	ld	s1,40(sp)
    80002304:	04010113          	addi	sp,sp,64
    80002308:	00008067          	ret

000000008000230c <start>:
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16
    80002318:	300027f3          	csrr	a5,mstatus
    8000231c:	ffffe737          	lui	a4,0xffffe
    80002320:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7abf>
    80002324:	00e7f7b3          	and	a5,a5,a4
    80002328:	00001737          	lui	a4,0x1
    8000232c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002330:	00e7e7b3          	or	a5,a5,a4
    80002334:	30079073          	csrw	mstatus,a5
    80002338:	00000797          	auipc	a5,0x0
    8000233c:	16078793          	addi	a5,a5,352 # 80002498 <system_main>
    80002340:	34179073          	csrw	mepc,a5
    80002344:	00000793          	li	a5,0
    80002348:	18079073          	csrw	satp,a5
    8000234c:	000107b7          	lui	a5,0x10
    80002350:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002354:	30279073          	csrw	medeleg,a5
    80002358:	30379073          	csrw	mideleg,a5
    8000235c:	104027f3          	csrr	a5,sie
    80002360:	2227e793          	ori	a5,a5,546
    80002364:	10479073          	csrw	sie,a5
    80002368:	fff00793          	li	a5,-1
    8000236c:	00a7d793          	srli	a5,a5,0xa
    80002370:	3b079073          	csrw	pmpaddr0,a5
    80002374:	00f00793          	li	a5,15
    80002378:	3a079073          	csrw	pmpcfg0,a5
    8000237c:	f14027f3          	csrr	a5,mhartid
    80002380:	0200c737          	lui	a4,0x200c
    80002384:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002388:	0007869b          	sext.w	a3,a5
    8000238c:	00269713          	slli	a4,a3,0x2
    80002390:	000f4637          	lui	a2,0xf4
    80002394:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002398:	00d70733          	add	a4,a4,a3
    8000239c:	0037979b          	slliw	a5,a5,0x3
    800023a0:	020046b7          	lui	a3,0x2004
    800023a4:	00d787b3          	add	a5,a5,a3
    800023a8:	00c585b3          	add	a1,a1,a2
    800023ac:	00371693          	slli	a3,a4,0x3
    800023b0:	00003717          	auipc	a4,0x3
    800023b4:	72070713          	addi	a4,a4,1824 # 80005ad0 <timer_scratch>
    800023b8:	00b7b023          	sd	a1,0(a5)
    800023bc:	00d70733          	add	a4,a4,a3
    800023c0:	00f73c23          	sd	a5,24(a4)
    800023c4:	02c73023          	sd	a2,32(a4)
    800023c8:	34071073          	csrw	mscratch,a4
    800023cc:	00000797          	auipc	a5,0x0
    800023d0:	6e478793          	addi	a5,a5,1764 # 80002ab0 <timervec>
    800023d4:	30579073          	csrw	mtvec,a5
    800023d8:	300027f3          	csrr	a5,mstatus
    800023dc:	0087e793          	ori	a5,a5,8
    800023e0:	30079073          	csrw	mstatus,a5
    800023e4:	304027f3          	csrr	a5,mie
    800023e8:	0807e793          	ori	a5,a5,128
    800023ec:	30479073          	csrw	mie,a5
    800023f0:	f14027f3          	csrr	a5,mhartid
    800023f4:	0007879b          	sext.w	a5,a5
    800023f8:	00078213          	mv	tp,a5
    800023fc:	30200073          	mret
    80002400:	00813403          	ld	s0,8(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <timerinit>:
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00813423          	sd	s0,8(sp)
    80002414:	01010413          	addi	s0,sp,16
    80002418:	f14027f3          	csrr	a5,mhartid
    8000241c:	0200c737          	lui	a4,0x200c
    80002420:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002424:	0007869b          	sext.w	a3,a5
    80002428:	00269713          	slli	a4,a3,0x2
    8000242c:	000f4637          	lui	a2,0xf4
    80002430:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002434:	00d70733          	add	a4,a4,a3
    80002438:	0037979b          	slliw	a5,a5,0x3
    8000243c:	020046b7          	lui	a3,0x2004
    80002440:	00d787b3          	add	a5,a5,a3
    80002444:	00c585b3          	add	a1,a1,a2
    80002448:	00371693          	slli	a3,a4,0x3
    8000244c:	00003717          	auipc	a4,0x3
    80002450:	68470713          	addi	a4,a4,1668 # 80005ad0 <timer_scratch>
    80002454:	00b7b023          	sd	a1,0(a5)
    80002458:	00d70733          	add	a4,a4,a3
    8000245c:	00f73c23          	sd	a5,24(a4)
    80002460:	02c73023          	sd	a2,32(a4)
    80002464:	34071073          	csrw	mscratch,a4
    80002468:	00000797          	auipc	a5,0x0
    8000246c:	64878793          	addi	a5,a5,1608 # 80002ab0 <timervec>
    80002470:	30579073          	csrw	mtvec,a5
    80002474:	300027f3          	csrr	a5,mstatus
    80002478:	0087e793          	ori	a5,a5,8
    8000247c:	30079073          	csrw	mstatus,a5
    80002480:	304027f3          	csrr	a5,mie
    80002484:	0807e793          	ori	a5,a5,128
    80002488:	30479073          	csrw	mie,a5
    8000248c:	00813403          	ld	s0,8(sp)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <system_main>:
    80002498:	fe010113          	addi	sp,sp,-32
    8000249c:	00813823          	sd	s0,16(sp)
    800024a0:	00913423          	sd	s1,8(sp)
    800024a4:	00113c23          	sd	ra,24(sp)
    800024a8:	02010413          	addi	s0,sp,32
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	0c4080e7          	jalr	196(ra) # 80002570 <cpuid>
    800024b4:	00003497          	auipc	s1,0x3
    800024b8:	5cc48493          	addi	s1,s1,1484 # 80005a80 <started>
    800024bc:	02050263          	beqz	a0,800024e0 <system_main+0x48>
    800024c0:	0004a783          	lw	a5,0(s1)
    800024c4:	0007879b          	sext.w	a5,a5
    800024c8:	fe078ce3          	beqz	a5,800024c0 <system_main+0x28>
    800024cc:	0ff0000f          	fence
    800024d0:	00003517          	auipc	a0,0x3
    800024d4:	cb850513          	addi	a0,a0,-840 # 80005188 <_ZZ8printHexmE9hexDigits+0x48>
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	a74080e7          	jalr	-1420(ra) # 80002f4c <panic>
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	9c8080e7          	jalr	-1592(ra) # 80002ea8 <consoleinit>
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	154080e7          	jalr	340(ra) # 8000363c <printfinit>
    800024f0:	00003517          	auipc	a0,0x3
    800024f4:	c1850513          	addi	a0,a0,-1000 # 80005108 <kvmincrease+0x9f8>
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	ab0080e7          	jalr	-1360(ra) # 80002fa8 <__printf>
    80002500:	00003517          	auipc	a0,0x3
    80002504:	c5850513          	addi	a0,a0,-936 # 80005158 <_ZZ8printHexmE9hexDigits+0x18>
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	aa0080e7          	jalr	-1376(ra) # 80002fa8 <__printf>
    80002510:	00003517          	auipc	a0,0x3
    80002514:	bf850513          	addi	a0,a0,-1032 # 80005108 <kvmincrease+0x9f8>
    80002518:	00001097          	auipc	ra,0x1
    8000251c:	a90080e7          	jalr	-1392(ra) # 80002fa8 <__printf>
    80002520:	00001097          	auipc	ra,0x1
    80002524:	4a8080e7          	jalr	1192(ra) # 800039c8 <kinit>
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	148080e7          	jalr	328(ra) # 80002670 <trapinit>
    80002530:	00000097          	auipc	ra,0x0
    80002534:	16c080e7          	jalr	364(ra) # 8000269c <trapinithart>
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	5b8080e7          	jalr	1464(ra) # 80002af0 <plicinit>
    80002540:	00000097          	auipc	ra,0x0
    80002544:	5d8080e7          	jalr	1496(ra) # 80002b18 <plicinithart>
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	078080e7          	jalr	120(ra) # 800025c0 <userinit>
    80002550:	0ff0000f          	fence
    80002554:	00100793          	li	a5,1
    80002558:	00003517          	auipc	a0,0x3
    8000255c:	c1850513          	addi	a0,a0,-1000 # 80005170 <_ZZ8printHexmE9hexDigits+0x30>
    80002560:	00f4a023          	sw	a5,0(s1)
    80002564:	00001097          	auipc	ra,0x1
    80002568:	a44080e7          	jalr	-1468(ra) # 80002fa8 <__printf>
    8000256c:	0000006f          	j	8000256c <system_main+0xd4>

0000000080002570 <cpuid>:
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00813423          	sd	s0,8(sp)
    80002578:	01010413          	addi	s0,sp,16
    8000257c:	00020513          	mv	a0,tp
    80002580:	00813403          	ld	s0,8(sp)
    80002584:	0005051b          	sext.w	a0,a0
    80002588:	01010113          	addi	sp,sp,16
    8000258c:	00008067          	ret

0000000080002590 <mycpu>:
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00813423          	sd	s0,8(sp)
    80002598:	01010413          	addi	s0,sp,16
    8000259c:	00020793          	mv	a5,tp
    800025a0:	00813403          	ld	s0,8(sp)
    800025a4:	0007879b          	sext.w	a5,a5
    800025a8:	00779793          	slli	a5,a5,0x7
    800025ac:	00004517          	auipc	a0,0x4
    800025b0:	55450513          	addi	a0,a0,1364 # 80006b00 <cpus>
    800025b4:	00f50533          	add	a0,a0,a5
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <userinit>:
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00813423          	sd	s0,8(sp)
    800025c8:	01010413          	addi	s0,sp,16
    800025cc:	00813403          	ld	s0,8(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	fffff317          	auipc	t1,0xfffff
    800025d8:	69430067          	jr	1684(t1) # 80001c68 <main>

00000000800025dc <either_copyout>:
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00813023          	sd	s0,0(sp)
    800025e4:	00113423          	sd	ra,8(sp)
    800025e8:	01010413          	addi	s0,sp,16
    800025ec:	02051663          	bnez	a0,80002618 <either_copyout+0x3c>
    800025f0:	00058513          	mv	a0,a1
    800025f4:	00060593          	mv	a1,a2
    800025f8:	0006861b          	sext.w	a2,a3
    800025fc:	00002097          	auipc	ra,0x2
    80002600:	c58080e7          	jalr	-936(ra) # 80004254 <__memmove>
    80002604:	00813083          	ld	ra,8(sp)
    80002608:	00013403          	ld	s0,0(sp)
    8000260c:	00000513          	li	a0,0
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret
    80002618:	00003517          	auipc	a0,0x3
    8000261c:	b9850513          	addi	a0,a0,-1128 # 800051b0 <_ZZ8printHexmE9hexDigits+0x70>
    80002620:	00001097          	auipc	ra,0x1
    80002624:	92c080e7          	jalr	-1748(ra) # 80002f4c <panic>

0000000080002628 <either_copyin>:
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00813023          	sd	s0,0(sp)
    80002630:	00113423          	sd	ra,8(sp)
    80002634:	01010413          	addi	s0,sp,16
    80002638:	02059463          	bnez	a1,80002660 <either_copyin+0x38>
    8000263c:	00060593          	mv	a1,a2
    80002640:	0006861b          	sext.w	a2,a3
    80002644:	00002097          	auipc	ra,0x2
    80002648:	c10080e7          	jalr	-1008(ra) # 80004254 <__memmove>
    8000264c:	00813083          	ld	ra,8(sp)
    80002650:	00013403          	ld	s0,0(sp)
    80002654:	00000513          	li	a0,0
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret
    80002660:	00003517          	auipc	a0,0x3
    80002664:	b7850513          	addi	a0,a0,-1160 # 800051d8 <_ZZ8printHexmE9hexDigits+0x98>
    80002668:	00001097          	auipc	ra,0x1
    8000266c:	8e4080e7          	jalr	-1820(ra) # 80002f4c <panic>

0000000080002670 <trapinit>:
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00813423          	sd	s0,8(sp)
    80002678:	01010413          	addi	s0,sp,16
    8000267c:	00813403          	ld	s0,8(sp)
    80002680:	00003597          	auipc	a1,0x3
    80002684:	b8058593          	addi	a1,a1,-1152 # 80005200 <_ZZ8printHexmE9hexDigits+0xc0>
    80002688:	00004517          	auipc	a0,0x4
    8000268c:	4f850513          	addi	a0,a0,1272 # 80006b80 <tickslock>
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00001317          	auipc	t1,0x1
    80002698:	5c430067          	jr	1476(t1) # 80003c58 <initlock>

000000008000269c <trapinithart>:
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    800026a8:	00000797          	auipc	a5,0x0
    800026ac:	2f878793          	addi	a5,a5,760 # 800029a0 <kernelvec>
    800026b0:	10579073          	csrw	stvec,a5
    800026b4:	00813403          	ld	s0,8(sp)
    800026b8:	01010113          	addi	sp,sp,16
    800026bc:	00008067          	ret

00000000800026c0 <usertrap>:
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00813423          	sd	s0,8(sp)
    800026c8:	01010413          	addi	s0,sp,16
    800026cc:	00813403          	ld	s0,8(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <usertrapret>:
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00813423          	sd	s0,8(sp)
    800026e0:	01010413          	addi	s0,sp,16
    800026e4:	00813403          	ld	s0,8(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <kerneltrap>:
    800026f0:	fe010113          	addi	sp,sp,-32
    800026f4:	00813823          	sd	s0,16(sp)
    800026f8:	00113c23          	sd	ra,24(sp)
    800026fc:	00913423          	sd	s1,8(sp)
    80002700:	02010413          	addi	s0,sp,32
    80002704:	142025f3          	csrr	a1,scause
    80002708:	100027f3          	csrr	a5,sstatus
    8000270c:	0027f793          	andi	a5,a5,2
    80002710:	10079c63          	bnez	a5,80002828 <kerneltrap+0x138>
    80002714:	142027f3          	csrr	a5,scause
    80002718:	0207ce63          	bltz	a5,80002754 <kerneltrap+0x64>
    8000271c:	00003517          	auipc	a0,0x3
    80002720:	b2c50513          	addi	a0,a0,-1236 # 80005248 <_ZZ8printHexmE9hexDigits+0x108>
    80002724:	00001097          	auipc	ra,0x1
    80002728:	884080e7          	jalr	-1916(ra) # 80002fa8 <__printf>
    8000272c:	141025f3          	csrr	a1,sepc
    80002730:	14302673          	csrr	a2,stval
    80002734:	00003517          	auipc	a0,0x3
    80002738:	b2450513          	addi	a0,a0,-1244 # 80005258 <_ZZ8printHexmE9hexDigits+0x118>
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	86c080e7          	jalr	-1940(ra) # 80002fa8 <__printf>
    80002744:	00003517          	auipc	a0,0x3
    80002748:	b2c50513          	addi	a0,a0,-1236 # 80005270 <_ZZ8printHexmE9hexDigits+0x130>
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	800080e7          	jalr	-2048(ra) # 80002f4c <panic>
    80002754:	0ff7f713          	andi	a4,a5,255
    80002758:	00900693          	li	a3,9
    8000275c:	04d70063          	beq	a4,a3,8000279c <kerneltrap+0xac>
    80002760:	fff00713          	li	a4,-1
    80002764:	03f71713          	slli	a4,a4,0x3f
    80002768:	00170713          	addi	a4,a4,1
    8000276c:	fae798e3          	bne	a5,a4,8000271c <kerneltrap+0x2c>
    80002770:	00000097          	auipc	ra,0x0
    80002774:	e00080e7          	jalr	-512(ra) # 80002570 <cpuid>
    80002778:	06050663          	beqz	a0,800027e4 <kerneltrap+0xf4>
    8000277c:	144027f3          	csrr	a5,sip
    80002780:	ffd7f793          	andi	a5,a5,-3
    80002784:	14479073          	csrw	sip,a5
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00008067          	ret
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	3c8080e7          	jalr	968(ra) # 80002b64 <plic_claim>
    800027a4:	00a00793          	li	a5,10
    800027a8:	00050493          	mv	s1,a0
    800027ac:	06f50863          	beq	a0,a5,8000281c <kerneltrap+0x12c>
    800027b0:	fc050ce3          	beqz	a0,80002788 <kerneltrap+0x98>
    800027b4:	00050593          	mv	a1,a0
    800027b8:	00003517          	auipc	a0,0x3
    800027bc:	a7050513          	addi	a0,a0,-1424 # 80005228 <_ZZ8printHexmE9hexDigits+0xe8>
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	7e8080e7          	jalr	2024(ra) # 80002fa8 <__printf>
    800027c8:	01013403          	ld	s0,16(sp)
    800027cc:	01813083          	ld	ra,24(sp)
    800027d0:	00048513          	mv	a0,s1
    800027d4:	00813483          	ld	s1,8(sp)
    800027d8:	02010113          	addi	sp,sp,32
    800027dc:	00000317          	auipc	t1,0x0
    800027e0:	3c030067          	jr	960(t1) # 80002b9c <plic_complete>
    800027e4:	00004517          	auipc	a0,0x4
    800027e8:	39c50513          	addi	a0,a0,924 # 80006b80 <tickslock>
    800027ec:	00001097          	auipc	ra,0x1
    800027f0:	490080e7          	jalr	1168(ra) # 80003c7c <acquire>
    800027f4:	00003717          	auipc	a4,0x3
    800027f8:	29070713          	addi	a4,a4,656 # 80005a84 <ticks>
    800027fc:	00072783          	lw	a5,0(a4)
    80002800:	00004517          	auipc	a0,0x4
    80002804:	38050513          	addi	a0,a0,896 # 80006b80 <tickslock>
    80002808:	0017879b          	addiw	a5,a5,1
    8000280c:	00f72023          	sw	a5,0(a4)
    80002810:	00001097          	auipc	ra,0x1
    80002814:	538080e7          	jalr	1336(ra) # 80003d48 <release>
    80002818:	f65ff06f          	j	8000277c <kerneltrap+0x8c>
    8000281c:	00001097          	auipc	ra,0x1
    80002820:	094080e7          	jalr	148(ra) # 800038b0 <uartintr>
    80002824:	fa5ff06f          	j	800027c8 <kerneltrap+0xd8>
    80002828:	00003517          	auipc	a0,0x3
    8000282c:	9e050513          	addi	a0,a0,-1568 # 80005208 <_ZZ8printHexmE9hexDigits+0xc8>
    80002830:	00000097          	auipc	ra,0x0
    80002834:	71c080e7          	jalr	1820(ra) # 80002f4c <panic>

0000000080002838 <clockintr>:
    80002838:	fe010113          	addi	sp,sp,-32
    8000283c:	00813823          	sd	s0,16(sp)
    80002840:	00913423          	sd	s1,8(sp)
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	02010413          	addi	s0,sp,32
    8000284c:	00004497          	auipc	s1,0x4
    80002850:	33448493          	addi	s1,s1,820 # 80006b80 <tickslock>
    80002854:	00048513          	mv	a0,s1
    80002858:	00001097          	auipc	ra,0x1
    8000285c:	424080e7          	jalr	1060(ra) # 80003c7c <acquire>
    80002860:	00003717          	auipc	a4,0x3
    80002864:	22470713          	addi	a4,a4,548 # 80005a84 <ticks>
    80002868:	00072783          	lw	a5,0(a4)
    8000286c:	01013403          	ld	s0,16(sp)
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	00048513          	mv	a0,s1
    80002878:	0017879b          	addiw	a5,a5,1
    8000287c:	00813483          	ld	s1,8(sp)
    80002880:	00f72023          	sw	a5,0(a4)
    80002884:	02010113          	addi	sp,sp,32
    80002888:	00001317          	auipc	t1,0x1
    8000288c:	4c030067          	jr	1216(t1) # 80003d48 <release>

0000000080002890 <devintr>:
    80002890:	142027f3          	csrr	a5,scause
    80002894:	00000513          	li	a0,0
    80002898:	0007c463          	bltz	a5,800028a0 <devintr+0x10>
    8000289c:	00008067          	ret
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00813823          	sd	s0,16(sp)
    800028a8:	00113c23          	sd	ra,24(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	02010413          	addi	s0,sp,32
    800028b4:	0ff7f713          	andi	a4,a5,255
    800028b8:	00900693          	li	a3,9
    800028bc:	04d70c63          	beq	a4,a3,80002914 <devintr+0x84>
    800028c0:	fff00713          	li	a4,-1
    800028c4:	03f71713          	slli	a4,a4,0x3f
    800028c8:	00170713          	addi	a4,a4,1
    800028cc:	00e78c63          	beq	a5,a4,800028e4 <devintr+0x54>
    800028d0:	01813083          	ld	ra,24(sp)
    800028d4:	01013403          	ld	s0,16(sp)
    800028d8:	00813483          	ld	s1,8(sp)
    800028dc:	02010113          	addi	sp,sp,32
    800028e0:	00008067          	ret
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	c8c080e7          	jalr	-884(ra) # 80002570 <cpuid>
    800028ec:	06050663          	beqz	a0,80002958 <devintr+0xc8>
    800028f0:	144027f3          	csrr	a5,sip
    800028f4:	ffd7f793          	andi	a5,a5,-3
    800028f8:	14479073          	csrw	sip,a5
    800028fc:	01813083          	ld	ra,24(sp)
    80002900:	01013403          	ld	s0,16(sp)
    80002904:	00813483          	ld	s1,8(sp)
    80002908:	00200513          	li	a0,2
    8000290c:	02010113          	addi	sp,sp,32
    80002910:	00008067          	ret
    80002914:	00000097          	auipc	ra,0x0
    80002918:	250080e7          	jalr	592(ra) # 80002b64 <plic_claim>
    8000291c:	00a00793          	li	a5,10
    80002920:	00050493          	mv	s1,a0
    80002924:	06f50663          	beq	a0,a5,80002990 <devintr+0x100>
    80002928:	00100513          	li	a0,1
    8000292c:	fa0482e3          	beqz	s1,800028d0 <devintr+0x40>
    80002930:	00048593          	mv	a1,s1
    80002934:	00003517          	auipc	a0,0x3
    80002938:	8f450513          	addi	a0,a0,-1804 # 80005228 <_ZZ8printHexmE9hexDigits+0xe8>
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	66c080e7          	jalr	1644(ra) # 80002fa8 <__printf>
    80002944:	00048513          	mv	a0,s1
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	254080e7          	jalr	596(ra) # 80002b9c <plic_complete>
    80002950:	00100513          	li	a0,1
    80002954:	f7dff06f          	j	800028d0 <devintr+0x40>
    80002958:	00004517          	auipc	a0,0x4
    8000295c:	22850513          	addi	a0,a0,552 # 80006b80 <tickslock>
    80002960:	00001097          	auipc	ra,0x1
    80002964:	31c080e7          	jalr	796(ra) # 80003c7c <acquire>
    80002968:	00003717          	auipc	a4,0x3
    8000296c:	11c70713          	addi	a4,a4,284 # 80005a84 <ticks>
    80002970:	00072783          	lw	a5,0(a4)
    80002974:	00004517          	auipc	a0,0x4
    80002978:	20c50513          	addi	a0,a0,524 # 80006b80 <tickslock>
    8000297c:	0017879b          	addiw	a5,a5,1
    80002980:	00f72023          	sw	a5,0(a4)
    80002984:	00001097          	auipc	ra,0x1
    80002988:	3c4080e7          	jalr	964(ra) # 80003d48 <release>
    8000298c:	f65ff06f          	j	800028f0 <devintr+0x60>
    80002990:	00001097          	auipc	ra,0x1
    80002994:	f20080e7          	jalr	-224(ra) # 800038b0 <uartintr>
    80002998:	fadff06f          	j	80002944 <devintr+0xb4>
    8000299c:	0000                	unimp
	...

00000000800029a0 <kernelvec>:
    800029a0:	f0010113          	addi	sp,sp,-256
    800029a4:	00113023          	sd	ra,0(sp)
    800029a8:	00213423          	sd	sp,8(sp)
    800029ac:	00313823          	sd	gp,16(sp)
    800029b0:	00413c23          	sd	tp,24(sp)
    800029b4:	02513023          	sd	t0,32(sp)
    800029b8:	02613423          	sd	t1,40(sp)
    800029bc:	02713823          	sd	t2,48(sp)
    800029c0:	02813c23          	sd	s0,56(sp)
    800029c4:	04913023          	sd	s1,64(sp)
    800029c8:	04a13423          	sd	a0,72(sp)
    800029cc:	04b13823          	sd	a1,80(sp)
    800029d0:	04c13c23          	sd	a2,88(sp)
    800029d4:	06d13023          	sd	a3,96(sp)
    800029d8:	06e13423          	sd	a4,104(sp)
    800029dc:	06f13823          	sd	a5,112(sp)
    800029e0:	07013c23          	sd	a6,120(sp)
    800029e4:	09113023          	sd	a7,128(sp)
    800029e8:	09213423          	sd	s2,136(sp)
    800029ec:	09313823          	sd	s3,144(sp)
    800029f0:	09413c23          	sd	s4,152(sp)
    800029f4:	0b513023          	sd	s5,160(sp)
    800029f8:	0b613423          	sd	s6,168(sp)
    800029fc:	0b713823          	sd	s7,176(sp)
    80002a00:	0b813c23          	sd	s8,184(sp)
    80002a04:	0d913023          	sd	s9,192(sp)
    80002a08:	0da13423          	sd	s10,200(sp)
    80002a0c:	0db13823          	sd	s11,208(sp)
    80002a10:	0dc13c23          	sd	t3,216(sp)
    80002a14:	0fd13023          	sd	t4,224(sp)
    80002a18:	0fe13423          	sd	t5,232(sp)
    80002a1c:	0ff13823          	sd	t6,240(sp)
    80002a20:	cd1ff0ef          	jal	ra,800026f0 <kerneltrap>
    80002a24:	00013083          	ld	ra,0(sp)
    80002a28:	00813103          	ld	sp,8(sp)
    80002a2c:	01013183          	ld	gp,16(sp)
    80002a30:	02013283          	ld	t0,32(sp)
    80002a34:	02813303          	ld	t1,40(sp)
    80002a38:	03013383          	ld	t2,48(sp)
    80002a3c:	03813403          	ld	s0,56(sp)
    80002a40:	04013483          	ld	s1,64(sp)
    80002a44:	04813503          	ld	a0,72(sp)
    80002a48:	05013583          	ld	a1,80(sp)
    80002a4c:	05813603          	ld	a2,88(sp)
    80002a50:	06013683          	ld	a3,96(sp)
    80002a54:	06813703          	ld	a4,104(sp)
    80002a58:	07013783          	ld	a5,112(sp)
    80002a5c:	07813803          	ld	a6,120(sp)
    80002a60:	08013883          	ld	a7,128(sp)
    80002a64:	08813903          	ld	s2,136(sp)
    80002a68:	09013983          	ld	s3,144(sp)
    80002a6c:	09813a03          	ld	s4,152(sp)
    80002a70:	0a013a83          	ld	s5,160(sp)
    80002a74:	0a813b03          	ld	s6,168(sp)
    80002a78:	0b013b83          	ld	s7,176(sp)
    80002a7c:	0b813c03          	ld	s8,184(sp)
    80002a80:	0c013c83          	ld	s9,192(sp)
    80002a84:	0c813d03          	ld	s10,200(sp)
    80002a88:	0d013d83          	ld	s11,208(sp)
    80002a8c:	0d813e03          	ld	t3,216(sp)
    80002a90:	0e013e83          	ld	t4,224(sp)
    80002a94:	0e813f03          	ld	t5,232(sp)
    80002a98:	0f013f83          	ld	t6,240(sp)
    80002a9c:	10010113          	addi	sp,sp,256
    80002aa0:	10200073          	sret
    80002aa4:	00000013          	nop
    80002aa8:	00000013          	nop
    80002aac:	00000013          	nop

0000000080002ab0 <timervec>:
    80002ab0:	34051573          	csrrw	a0,mscratch,a0
    80002ab4:	00b53023          	sd	a1,0(a0)
    80002ab8:	00c53423          	sd	a2,8(a0)
    80002abc:	00d53823          	sd	a3,16(a0)
    80002ac0:	01853583          	ld	a1,24(a0)
    80002ac4:	02053603          	ld	a2,32(a0)
    80002ac8:	0005b683          	ld	a3,0(a1)
    80002acc:	00c686b3          	add	a3,a3,a2
    80002ad0:	00d5b023          	sd	a3,0(a1)
    80002ad4:	00200593          	li	a1,2
    80002ad8:	14459073          	csrw	sip,a1
    80002adc:	01053683          	ld	a3,16(a0)
    80002ae0:	00853603          	ld	a2,8(a0)
    80002ae4:	00053583          	ld	a1,0(a0)
    80002ae8:	34051573          	csrrw	a0,mscratch,a0
    80002aec:	30200073          	mret

0000000080002af0 <plicinit>:
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00813423          	sd	s0,8(sp)
    80002af8:	01010413          	addi	s0,sp,16
    80002afc:	00813403          	ld	s0,8(sp)
    80002b00:	0c0007b7          	lui	a5,0xc000
    80002b04:	00100713          	li	a4,1
    80002b08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002b0c:	00e7a223          	sw	a4,4(a5)
    80002b10:	01010113          	addi	sp,sp,16
    80002b14:	00008067          	ret

0000000080002b18 <plicinithart>:
    80002b18:	ff010113          	addi	sp,sp,-16
    80002b1c:	00813023          	sd	s0,0(sp)
    80002b20:	00113423          	sd	ra,8(sp)
    80002b24:	01010413          	addi	s0,sp,16
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	a48080e7          	jalr	-1464(ra) # 80002570 <cpuid>
    80002b30:	0085171b          	slliw	a4,a0,0x8
    80002b34:	0c0027b7          	lui	a5,0xc002
    80002b38:	00e787b3          	add	a5,a5,a4
    80002b3c:	40200713          	li	a4,1026
    80002b40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	00d5151b          	slliw	a0,a0,0xd
    80002b50:	0c2017b7          	lui	a5,0xc201
    80002b54:	00a78533          	add	a0,a5,a0
    80002b58:	00052023          	sw	zero,0(a0)
    80002b5c:	01010113          	addi	sp,sp,16
    80002b60:	00008067          	ret

0000000080002b64 <plic_claim>:
    80002b64:	ff010113          	addi	sp,sp,-16
    80002b68:	00813023          	sd	s0,0(sp)
    80002b6c:	00113423          	sd	ra,8(sp)
    80002b70:	01010413          	addi	s0,sp,16
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	9fc080e7          	jalr	-1540(ra) # 80002570 <cpuid>
    80002b7c:	00813083          	ld	ra,8(sp)
    80002b80:	00013403          	ld	s0,0(sp)
    80002b84:	00d5151b          	slliw	a0,a0,0xd
    80002b88:	0c2017b7          	lui	a5,0xc201
    80002b8c:	00a78533          	add	a0,a5,a0
    80002b90:	00452503          	lw	a0,4(a0)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret

0000000080002b9c <plic_complete>:
    80002b9c:	fe010113          	addi	sp,sp,-32
    80002ba0:	00813823          	sd	s0,16(sp)
    80002ba4:	00913423          	sd	s1,8(sp)
    80002ba8:	00113c23          	sd	ra,24(sp)
    80002bac:	02010413          	addi	s0,sp,32
    80002bb0:	00050493          	mv	s1,a0
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	9bc080e7          	jalr	-1604(ra) # 80002570 <cpuid>
    80002bbc:	01813083          	ld	ra,24(sp)
    80002bc0:	01013403          	ld	s0,16(sp)
    80002bc4:	00d5179b          	slliw	a5,a0,0xd
    80002bc8:	0c201737          	lui	a4,0xc201
    80002bcc:	00f707b3          	add	a5,a4,a5
    80002bd0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002bd4:	00813483          	ld	s1,8(sp)
    80002bd8:	02010113          	addi	sp,sp,32
    80002bdc:	00008067          	ret

0000000080002be0 <consolewrite>:
    80002be0:	fb010113          	addi	sp,sp,-80
    80002be4:	04813023          	sd	s0,64(sp)
    80002be8:	04113423          	sd	ra,72(sp)
    80002bec:	02913c23          	sd	s1,56(sp)
    80002bf0:	03213823          	sd	s2,48(sp)
    80002bf4:	03313423          	sd	s3,40(sp)
    80002bf8:	03413023          	sd	s4,32(sp)
    80002bfc:	01513c23          	sd	s5,24(sp)
    80002c00:	05010413          	addi	s0,sp,80
    80002c04:	06c05c63          	blez	a2,80002c7c <consolewrite+0x9c>
    80002c08:	00060993          	mv	s3,a2
    80002c0c:	00050a13          	mv	s4,a0
    80002c10:	00058493          	mv	s1,a1
    80002c14:	00000913          	li	s2,0
    80002c18:	fff00a93          	li	s5,-1
    80002c1c:	01c0006f          	j	80002c38 <consolewrite+0x58>
    80002c20:	fbf44503          	lbu	a0,-65(s0)
    80002c24:	0019091b          	addiw	s2,s2,1
    80002c28:	00148493          	addi	s1,s1,1
    80002c2c:	00001097          	auipc	ra,0x1
    80002c30:	a9c080e7          	jalr	-1380(ra) # 800036c8 <uartputc>
    80002c34:	03298063          	beq	s3,s2,80002c54 <consolewrite+0x74>
    80002c38:	00048613          	mv	a2,s1
    80002c3c:	00100693          	li	a3,1
    80002c40:	000a0593          	mv	a1,s4
    80002c44:	fbf40513          	addi	a0,s0,-65
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	9e0080e7          	jalr	-1568(ra) # 80002628 <either_copyin>
    80002c50:	fd5518e3          	bne	a0,s5,80002c20 <consolewrite+0x40>
    80002c54:	04813083          	ld	ra,72(sp)
    80002c58:	04013403          	ld	s0,64(sp)
    80002c5c:	03813483          	ld	s1,56(sp)
    80002c60:	02813983          	ld	s3,40(sp)
    80002c64:	02013a03          	ld	s4,32(sp)
    80002c68:	01813a83          	ld	s5,24(sp)
    80002c6c:	00090513          	mv	a0,s2
    80002c70:	03013903          	ld	s2,48(sp)
    80002c74:	05010113          	addi	sp,sp,80
    80002c78:	00008067          	ret
    80002c7c:	00000913          	li	s2,0
    80002c80:	fd5ff06f          	j	80002c54 <consolewrite+0x74>

0000000080002c84 <consoleread>:
    80002c84:	f9010113          	addi	sp,sp,-112
    80002c88:	06813023          	sd	s0,96(sp)
    80002c8c:	04913c23          	sd	s1,88(sp)
    80002c90:	05213823          	sd	s2,80(sp)
    80002c94:	05313423          	sd	s3,72(sp)
    80002c98:	05413023          	sd	s4,64(sp)
    80002c9c:	03513c23          	sd	s5,56(sp)
    80002ca0:	03613823          	sd	s6,48(sp)
    80002ca4:	03713423          	sd	s7,40(sp)
    80002ca8:	03813023          	sd	s8,32(sp)
    80002cac:	06113423          	sd	ra,104(sp)
    80002cb0:	01913c23          	sd	s9,24(sp)
    80002cb4:	07010413          	addi	s0,sp,112
    80002cb8:	00060b93          	mv	s7,a2
    80002cbc:	00050913          	mv	s2,a0
    80002cc0:	00058c13          	mv	s8,a1
    80002cc4:	00060b1b          	sext.w	s6,a2
    80002cc8:	00004497          	auipc	s1,0x4
    80002ccc:	ee048493          	addi	s1,s1,-288 # 80006ba8 <cons>
    80002cd0:	00400993          	li	s3,4
    80002cd4:	fff00a13          	li	s4,-1
    80002cd8:	00a00a93          	li	s5,10
    80002cdc:	05705e63          	blez	s7,80002d38 <consoleread+0xb4>
    80002ce0:	09c4a703          	lw	a4,156(s1)
    80002ce4:	0984a783          	lw	a5,152(s1)
    80002ce8:	0007071b          	sext.w	a4,a4
    80002cec:	08e78463          	beq	a5,a4,80002d74 <consoleread+0xf0>
    80002cf0:	07f7f713          	andi	a4,a5,127
    80002cf4:	00e48733          	add	a4,s1,a4
    80002cf8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002cfc:	0017869b          	addiw	a3,a5,1
    80002d00:	08d4ac23          	sw	a3,152(s1)
    80002d04:	00070c9b          	sext.w	s9,a4
    80002d08:	0b370663          	beq	a4,s3,80002db4 <consoleread+0x130>
    80002d0c:	00100693          	li	a3,1
    80002d10:	f9f40613          	addi	a2,s0,-97
    80002d14:	000c0593          	mv	a1,s8
    80002d18:	00090513          	mv	a0,s2
    80002d1c:	f8e40fa3          	sb	a4,-97(s0)
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	8bc080e7          	jalr	-1860(ra) # 800025dc <either_copyout>
    80002d28:	01450863          	beq	a0,s4,80002d38 <consoleread+0xb4>
    80002d2c:	001c0c13          	addi	s8,s8,1
    80002d30:	fffb8b9b          	addiw	s7,s7,-1
    80002d34:	fb5c94e3          	bne	s9,s5,80002cdc <consoleread+0x58>
    80002d38:	000b851b          	sext.w	a0,s7
    80002d3c:	06813083          	ld	ra,104(sp)
    80002d40:	06013403          	ld	s0,96(sp)
    80002d44:	05813483          	ld	s1,88(sp)
    80002d48:	05013903          	ld	s2,80(sp)
    80002d4c:	04813983          	ld	s3,72(sp)
    80002d50:	04013a03          	ld	s4,64(sp)
    80002d54:	03813a83          	ld	s5,56(sp)
    80002d58:	02813b83          	ld	s7,40(sp)
    80002d5c:	02013c03          	ld	s8,32(sp)
    80002d60:	01813c83          	ld	s9,24(sp)
    80002d64:	40ab053b          	subw	a0,s6,a0
    80002d68:	03013b03          	ld	s6,48(sp)
    80002d6c:	07010113          	addi	sp,sp,112
    80002d70:	00008067          	ret
    80002d74:	00001097          	auipc	ra,0x1
    80002d78:	1d8080e7          	jalr	472(ra) # 80003f4c <push_on>
    80002d7c:	0984a703          	lw	a4,152(s1)
    80002d80:	09c4a783          	lw	a5,156(s1)
    80002d84:	0007879b          	sext.w	a5,a5
    80002d88:	fef70ce3          	beq	a4,a5,80002d80 <consoleread+0xfc>
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	234080e7          	jalr	564(ra) # 80003fc0 <pop_on>
    80002d94:	0984a783          	lw	a5,152(s1)
    80002d98:	07f7f713          	andi	a4,a5,127
    80002d9c:	00e48733          	add	a4,s1,a4
    80002da0:	01874703          	lbu	a4,24(a4)
    80002da4:	0017869b          	addiw	a3,a5,1
    80002da8:	08d4ac23          	sw	a3,152(s1)
    80002dac:	00070c9b          	sext.w	s9,a4
    80002db0:	f5371ee3          	bne	a4,s3,80002d0c <consoleread+0x88>
    80002db4:	000b851b          	sext.w	a0,s7
    80002db8:	f96bf2e3          	bgeu	s7,s6,80002d3c <consoleread+0xb8>
    80002dbc:	08f4ac23          	sw	a5,152(s1)
    80002dc0:	f7dff06f          	j	80002d3c <consoleread+0xb8>

0000000080002dc4 <consputc>:
    80002dc4:	10000793          	li	a5,256
    80002dc8:	00f50663          	beq	a0,a5,80002dd4 <consputc+0x10>
    80002dcc:	00001317          	auipc	t1,0x1
    80002dd0:	9f430067          	jr	-1548(t1) # 800037c0 <uartputc_sync>
    80002dd4:	ff010113          	addi	sp,sp,-16
    80002dd8:	00113423          	sd	ra,8(sp)
    80002ddc:	00813023          	sd	s0,0(sp)
    80002de0:	01010413          	addi	s0,sp,16
    80002de4:	00800513          	li	a0,8
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	9d8080e7          	jalr	-1576(ra) # 800037c0 <uartputc_sync>
    80002df0:	02000513          	li	a0,32
    80002df4:	00001097          	auipc	ra,0x1
    80002df8:	9cc080e7          	jalr	-1588(ra) # 800037c0 <uartputc_sync>
    80002dfc:	00013403          	ld	s0,0(sp)
    80002e00:	00813083          	ld	ra,8(sp)
    80002e04:	00800513          	li	a0,8
    80002e08:	01010113          	addi	sp,sp,16
    80002e0c:	00001317          	auipc	t1,0x1
    80002e10:	9b430067          	jr	-1612(t1) # 800037c0 <uartputc_sync>

0000000080002e14 <consoleintr>:
    80002e14:	fe010113          	addi	sp,sp,-32
    80002e18:	00813823          	sd	s0,16(sp)
    80002e1c:	00913423          	sd	s1,8(sp)
    80002e20:	01213023          	sd	s2,0(sp)
    80002e24:	00113c23          	sd	ra,24(sp)
    80002e28:	02010413          	addi	s0,sp,32
    80002e2c:	00004917          	auipc	s2,0x4
    80002e30:	d7c90913          	addi	s2,s2,-644 # 80006ba8 <cons>
    80002e34:	00050493          	mv	s1,a0
    80002e38:	00090513          	mv	a0,s2
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	e40080e7          	jalr	-448(ra) # 80003c7c <acquire>
    80002e44:	02048c63          	beqz	s1,80002e7c <consoleintr+0x68>
    80002e48:	0a092783          	lw	a5,160(s2)
    80002e4c:	09892703          	lw	a4,152(s2)
    80002e50:	07f00693          	li	a3,127
    80002e54:	40e7873b          	subw	a4,a5,a4
    80002e58:	02e6e263          	bltu	a3,a4,80002e7c <consoleintr+0x68>
    80002e5c:	00d00713          	li	a4,13
    80002e60:	04e48063          	beq	s1,a4,80002ea0 <consoleintr+0x8c>
    80002e64:	07f7f713          	andi	a4,a5,127
    80002e68:	00e90733          	add	a4,s2,a4
    80002e6c:	0017879b          	addiw	a5,a5,1
    80002e70:	0af92023          	sw	a5,160(s2)
    80002e74:	00970c23          	sb	s1,24(a4)
    80002e78:	08f92e23          	sw	a5,156(s2)
    80002e7c:	01013403          	ld	s0,16(sp)
    80002e80:	01813083          	ld	ra,24(sp)
    80002e84:	00813483          	ld	s1,8(sp)
    80002e88:	00013903          	ld	s2,0(sp)
    80002e8c:	00004517          	auipc	a0,0x4
    80002e90:	d1c50513          	addi	a0,a0,-740 # 80006ba8 <cons>
    80002e94:	02010113          	addi	sp,sp,32
    80002e98:	00001317          	auipc	t1,0x1
    80002e9c:	eb030067          	jr	-336(t1) # 80003d48 <release>
    80002ea0:	00a00493          	li	s1,10
    80002ea4:	fc1ff06f          	j	80002e64 <consoleintr+0x50>

0000000080002ea8 <consoleinit>:
    80002ea8:	fe010113          	addi	sp,sp,-32
    80002eac:	00113c23          	sd	ra,24(sp)
    80002eb0:	00813823          	sd	s0,16(sp)
    80002eb4:	00913423          	sd	s1,8(sp)
    80002eb8:	02010413          	addi	s0,sp,32
    80002ebc:	00004497          	auipc	s1,0x4
    80002ec0:	cec48493          	addi	s1,s1,-788 # 80006ba8 <cons>
    80002ec4:	00048513          	mv	a0,s1
    80002ec8:	00002597          	auipc	a1,0x2
    80002ecc:	3b858593          	addi	a1,a1,952 # 80005280 <_ZZ8printHexmE9hexDigits+0x140>
    80002ed0:	00001097          	auipc	ra,0x1
    80002ed4:	d88080e7          	jalr	-632(ra) # 80003c58 <initlock>
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	7ac080e7          	jalr	1964(ra) # 80003684 <uartinit>
    80002ee0:	01813083          	ld	ra,24(sp)
    80002ee4:	01013403          	ld	s0,16(sp)
    80002ee8:	00000797          	auipc	a5,0x0
    80002eec:	d9c78793          	addi	a5,a5,-612 # 80002c84 <consoleread>
    80002ef0:	0af4bc23          	sd	a5,184(s1)
    80002ef4:	00000797          	auipc	a5,0x0
    80002ef8:	cec78793          	addi	a5,a5,-788 # 80002be0 <consolewrite>
    80002efc:	0cf4b023          	sd	a5,192(s1)
    80002f00:	00813483          	ld	s1,8(sp)
    80002f04:	02010113          	addi	sp,sp,32
    80002f08:	00008067          	ret

0000000080002f0c <console_read>:
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00813423          	sd	s0,8(sp)
    80002f14:	01010413          	addi	s0,sp,16
    80002f18:	00813403          	ld	s0,8(sp)
    80002f1c:	00004317          	auipc	t1,0x4
    80002f20:	d4433303          	ld	t1,-700(t1) # 80006c60 <devsw+0x10>
    80002f24:	01010113          	addi	sp,sp,16
    80002f28:	00030067          	jr	t1

0000000080002f2c <console_write>:
    80002f2c:	ff010113          	addi	sp,sp,-16
    80002f30:	00813423          	sd	s0,8(sp)
    80002f34:	01010413          	addi	s0,sp,16
    80002f38:	00813403          	ld	s0,8(sp)
    80002f3c:	00004317          	auipc	t1,0x4
    80002f40:	d2c33303          	ld	t1,-724(t1) # 80006c68 <devsw+0x18>
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00030067          	jr	t1

0000000080002f4c <panic>:
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00113c23          	sd	ra,24(sp)
    80002f54:	00813823          	sd	s0,16(sp)
    80002f58:	00913423          	sd	s1,8(sp)
    80002f5c:	02010413          	addi	s0,sp,32
    80002f60:	00050493          	mv	s1,a0
    80002f64:	00002517          	auipc	a0,0x2
    80002f68:	32450513          	addi	a0,a0,804 # 80005288 <_ZZ8printHexmE9hexDigits+0x148>
    80002f6c:	00004797          	auipc	a5,0x4
    80002f70:	d807ae23          	sw	zero,-612(a5) # 80006d08 <pr+0x18>
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	034080e7          	jalr	52(ra) # 80002fa8 <__printf>
    80002f7c:	00048513          	mv	a0,s1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	028080e7          	jalr	40(ra) # 80002fa8 <__printf>
    80002f88:	00002517          	auipc	a0,0x2
    80002f8c:	18050513          	addi	a0,a0,384 # 80005108 <kvmincrease+0x9f8>
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	018080e7          	jalr	24(ra) # 80002fa8 <__printf>
    80002f98:	00100793          	li	a5,1
    80002f9c:	00003717          	auipc	a4,0x3
    80002fa0:	aef72623          	sw	a5,-1300(a4) # 80005a88 <panicked>
    80002fa4:	0000006f          	j	80002fa4 <panic+0x58>

0000000080002fa8 <__printf>:
    80002fa8:	f3010113          	addi	sp,sp,-208
    80002fac:	08813023          	sd	s0,128(sp)
    80002fb0:	07313423          	sd	s3,104(sp)
    80002fb4:	09010413          	addi	s0,sp,144
    80002fb8:	05813023          	sd	s8,64(sp)
    80002fbc:	08113423          	sd	ra,136(sp)
    80002fc0:	06913c23          	sd	s1,120(sp)
    80002fc4:	07213823          	sd	s2,112(sp)
    80002fc8:	07413023          	sd	s4,96(sp)
    80002fcc:	05513c23          	sd	s5,88(sp)
    80002fd0:	05613823          	sd	s6,80(sp)
    80002fd4:	05713423          	sd	s7,72(sp)
    80002fd8:	03913c23          	sd	s9,56(sp)
    80002fdc:	03a13823          	sd	s10,48(sp)
    80002fe0:	03b13423          	sd	s11,40(sp)
    80002fe4:	00004317          	auipc	t1,0x4
    80002fe8:	d0c30313          	addi	t1,t1,-756 # 80006cf0 <pr>
    80002fec:	01832c03          	lw	s8,24(t1)
    80002ff0:	00b43423          	sd	a1,8(s0)
    80002ff4:	00c43823          	sd	a2,16(s0)
    80002ff8:	00d43c23          	sd	a3,24(s0)
    80002ffc:	02e43023          	sd	a4,32(s0)
    80003000:	02f43423          	sd	a5,40(s0)
    80003004:	03043823          	sd	a6,48(s0)
    80003008:	03143c23          	sd	a7,56(s0)
    8000300c:	00050993          	mv	s3,a0
    80003010:	4a0c1663          	bnez	s8,800034bc <__printf+0x514>
    80003014:	60098c63          	beqz	s3,8000362c <__printf+0x684>
    80003018:	0009c503          	lbu	a0,0(s3)
    8000301c:	00840793          	addi	a5,s0,8
    80003020:	f6f43c23          	sd	a5,-136(s0)
    80003024:	00000493          	li	s1,0
    80003028:	22050063          	beqz	a0,80003248 <__printf+0x2a0>
    8000302c:	00002a37          	lui	s4,0x2
    80003030:	00018ab7          	lui	s5,0x18
    80003034:	000f4b37          	lui	s6,0xf4
    80003038:	00989bb7          	lui	s7,0x989
    8000303c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003040:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003044:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003048:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000304c:	00148c9b          	addiw	s9,s1,1
    80003050:	02500793          	li	a5,37
    80003054:	01998933          	add	s2,s3,s9
    80003058:	38f51263          	bne	a0,a5,800033dc <__printf+0x434>
    8000305c:	00094783          	lbu	a5,0(s2)
    80003060:	00078c9b          	sext.w	s9,a5
    80003064:	1e078263          	beqz	a5,80003248 <__printf+0x2a0>
    80003068:	0024849b          	addiw	s1,s1,2
    8000306c:	07000713          	li	a4,112
    80003070:	00998933          	add	s2,s3,s1
    80003074:	38e78a63          	beq	a5,a4,80003408 <__printf+0x460>
    80003078:	20f76863          	bltu	a4,a5,80003288 <__printf+0x2e0>
    8000307c:	42a78863          	beq	a5,a0,800034ac <__printf+0x504>
    80003080:	06400713          	li	a4,100
    80003084:	40e79663          	bne	a5,a4,80003490 <__printf+0x4e8>
    80003088:	f7843783          	ld	a5,-136(s0)
    8000308c:	0007a603          	lw	a2,0(a5)
    80003090:	00878793          	addi	a5,a5,8
    80003094:	f6f43c23          	sd	a5,-136(s0)
    80003098:	42064a63          	bltz	a2,800034cc <__printf+0x524>
    8000309c:	00a00713          	li	a4,10
    800030a0:	02e677bb          	remuw	a5,a2,a4
    800030a4:	00002d97          	auipc	s11,0x2
    800030a8:	20cd8d93          	addi	s11,s11,524 # 800052b0 <digits>
    800030ac:	00900593          	li	a1,9
    800030b0:	0006051b          	sext.w	a0,a2
    800030b4:	00000c93          	li	s9,0
    800030b8:	02079793          	slli	a5,a5,0x20
    800030bc:	0207d793          	srli	a5,a5,0x20
    800030c0:	00fd87b3          	add	a5,s11,a5
    800030c4:	0007c783          	lbu	a5,0(a5)
    800030c8:	02e656bb          	divuw	a3,a2,a4
    800030cc:	f8f40023          	sb	a5,-128(s0)
    800030d0:	14c5d863          	bge	a1,a2,80003220 <__printf+0x278>
    800030d4:	06300593          	li	a1,99
    800030d8:	00100c93          	li	s9,1
    800030dc:	02e6f7bb          	remuw	a5,a3,a4
    800030e0:	02079793          	slli	a5,a5,0x20
    800030e4:	0207d793          	srli	a5,a5,0x20
    800030e8:	00fd87b3          	add	a5,s11,a5
    800030ec:	0007c783          	lbu	a5,0(a5)
    800030f0:	02e6d73b          	divuw	a4,a3,a4
    800030f4:	f8f400a3          	sb	a5,-127(s0)
    800030f8:	12a5f463          	bgeu	a1,a0,80003220 <__printf+0x278>
    800030fc:	00a00693          	li	a3,10
    80003100:	00900593          	li	a1,9
    80003104:	02d777bb          	remuw	a5,a4,a3
    80003108:	02079793          	slli	a5,a5,0x20
    8000310c:	0207d793          	srli	a5,a5,0x20
    80003110:	00fd87b3          	add	a5,s11,a5
    80003114:	0007c503          	lbu	a0,0(a5)
    80003118:	02d757bb          	divuw	a5,a4,a3
    8000311c:	f8a40123          	sb	a0,-126(s0)
    80003120:	48e5f263          	bgeu	a1,a4,800035a4 <__printf+0x5fc>
    80003124:	06300513          	li	a0,99
    80003128:	02d7f5bb          	remuw	a1,a5,a3
    8000312c:	02059593          	slli	a1,a1,0x20
    80003130:	0205d593          	srli	a1,a1,0x20
    80003134:	00bd85b3          	add	a1,s11,a1
    80003138:	0005c583          	lbu	a1,0(a1)
    8000313c:	02d7d7bb          	divuw	a5,a5,a3
    80003140:	f8b401a3          	sb	a1,-125(s0)
    80003144:	48e57263          	bgeu	a0,a4,800035c8 <__printf+0x620>
    80003148:	3e700513          	li	a0,999
    8000314c:	02d7f5bb          	remuw	a1,a5,a3
    80003150:	02059593          	slli	a1,a1,0x20
    80003154:	0205d593          	srli	a1,a1,0x20
    80003158:	00bd85b3          	add	a1,s11,a1
    8000315c:	0005c583          	lbu	a1,0(a1)
    80003160:	02d7d7bb          	divuw	a5,a5,a3
    80003164:	f8b40223          	sb	a1,-124(s0)
    80003168:	46e57663          	bgeu	a0,a4,800035d4 <__printf+0x62c>
    8000316c:	02d7f5bb          	remuw	a1,a5,a3
    80003170:	02059593          	slli	a1,a1,0x20
    80003174:	0205d593          	srli	a1,a1,0x20
    80003178:	00bd85b3          	add	a1,s11,a1
    8000317c:	0005c583          	lbu	a1,0(a1)
    80003180:	02d7d7bb          	divuw	a5,a5,a3
    80003184:	f8b402a3          	sb	a1,-123(s0)
    80003188:	46ea7863          	bgeu	s4,a4,800035f8 <__printf+0x650>
    8000318c:	02d7f5bb          	remuw	a1,a5,a3
    80003190:	02059593          	slli	a1,a1,0x20
    80003194:	0205d593          	srli	a1,a1,0x20
    80003198:	00bd85b3          	add	a1,s11,a1
    8000319c:	0005c583          	lbu	a1,0(a1)
    800031a0:	02d7d7bb          	divuw	a5,a5,a3
    800031a4:	f8b40323          	sb	a1,-122(s0)
    800031a8:	3eeaf863          	bgeu	s5,a4,80003598 <__printf+0x5f0>
    800031ac:	02d7f5bb          	remuw	a1,a5,a3
    800031b0:	02059593          	slli	a1,a1,0x20
    800031b4:	0205d593          	srli	a1,a1,0x20
    800031b8:	00bd85b3          	add	a1,s11,a1
    800031bc:	0005c583          	lbu	a1,0(a1)
    800031c0:	02d7d7bb          	divuw	a5,a5,a3
    800031c4:	f8b403a3          	sb	a1,-121(s0)
    800031c8:	42eb7e63          	bgeu	s6,a4,80003604 <__printf+0x65c>
    800031cc:	02d7f5bb          	remuw	a1,a5,a3
    800031d0:	02059593          	slli	a1,a1,0x20
    800031d4:	0205d593          	srli	a1,a1,0x20
    800031d8:	00bd85b3          	add	a1,s11,a1
    800031dc:	0005c583          	lbu	a1,0(a1)
    800031e0:	02d7d7bb          	divuw	a5,a5,a3
    800031e4:	f8b40423          	sb	a1,-120(s0)
    800031e8:	42ebfc63          	bgeu	s7,a4,80003620 <__printf+0x678>
    800031ec:	02079793          	slli	a5,a5,0x20
    800031f0:	0207d793          	srli	a5,a5,0x20
    800031f4:	00fd8db3          	add	s11,s11,a5
    800031f8:	000dc703          	lbu	a4,0(s11)
    800031fc:	00a00793          	li	a5,10
    80003200:	00900c93          	li	s9,9
    80003204:	f8e404a3          	sb	a4,-119(s0)
    80003208:	00065c63          	bgez	a2,80003220 <__printf+0x278>
    8000320c:	f9040713          	addi	a4,s0,-112
    80003210:	00f70733          	add	a4,a4,a5
    80003214:	02d00693          	li	a3,45
    80003218:	fed70823          	sb	a3,-16(a4)
    8000321c:	00078c93          	mv	s9,a5
    80003220:	f8040793          	addi	a5,s0,-128
    80003224:	01978cb3          	add	s9,a5,s9
    80003228:	f7f40d13          	addi	s10,s0,-129
    8000322c:	000cc503          	lbu	a0,0(s9)
    80003230:	fffc8c93          	addi	s9,s9,-1
    80003234:	00000097          	auipc	ra,0x0
    80003238:	b90080e7          	jalr	-1136(ra) # 80002dc4 <consputc>
    8000323c:	ffac98e3          	bne	s9,s10,8000322c <__printf+0x284>
    80003240:	00094503          	lbu	a0,0(s2)
    80003244:	e00514e3          	bnez	a0,8000304c <__printf+0xa4>
    80003248:	1a0c1663          	bnez	s8,800033f4 <__printf+0x44c>
    8000324c:	08813083          	ld	ra,136(sp)
    80003250:	08013403          	ld	s0,128(sp)
    80003254:	07813483          	ld	s1,120(sp)
    80003258:	07013903          	ld	s2,112(sp)
    8000325c:	06813983          	ld	s3,104(sp)
    80003260:	06013a03          	ld	s4,96(sp)
    80003264:	05813a83          	ld	s5,88(sp)
    80003268:	05013b03          	ld	s6,80(sp)
    8000326c:	04813b83          	ld	s7,72(sp)
    80003270:	04013c03          	ld	s8,64(sp)
    80003274:	03813c83          	ld	s9,56(sp)
    80003278:	03013d03          	ld	s10,48(sp)
    8000327c:	02813d83          	ld	s11,40(sp)
    80003280:	0d010113          	addi	sp,sp,208
    80003284:	00008067          	ret
    80003288:	07300713          	li	a4,115
    8000328c:	1ce78a63          	beq	a5,a4,80003460 <__printf+0x4b8>
    80003290:	07800713          	li	a4,120
    80003294:	1ee79e63          	bne	a5,a4,80003490 <__printf+0x4e8>
    80003298:	f7843783          	ld	a5,-136(s0)
    8000329c:	0007a703          	lw	a4,0(a5)
    800032a0:	00878793          	addi	a5,a5,8
    800032a4:	f6f43c23          	sd	a5,-136(s0)
    800032a8:	28074263          	bltz	a4,8000352c <__printf+0x584>
    800032ac:	00002d97          	auipc	s11,0x2
    800032b0:	004d8d93          	addi	s11,s11,4 # 800052b0 <digits>
    800032b4:	00f77793          	andi	a5,a4,15
    800032b8:	00fd87b3          	add	a5,s11,a5
    800032bc:	0007c683          	lbu	a3,0(a5)
    800032c0:	00f00613          	li	a2,15
    800032c4:	0007079b          	sext.w	a5,a4
    800032c8:	f8d40023          	sb	a3,-128(s0)
    800032cc:	0047559b          	srliw	a1,a4,0x4
    800032d0:	0047569b          	srliw	a3,a4,0x4
    800032d4:	00000c93          	li	s9,0
    800032d8:	0ee65063          	bge	a2,a4,800033b8 <__printf+0x410>
    800032dc:	00f6f693          	andi	a3,a3,15
    800032e0:	00dd86b3          	add	a3,s11,a3
    800032e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800032e8:	0087d79b          	srliw	a5,a5,0x8
    800032ec:	00100c93          	li	s9,1
    800032f0:	f8d400a3          	sb	a3,-127(s0)
    800032f4:	0cb67263          	bgeu	a2,a1,800033b8 <__printf+0x410>
    800032f8:	00f7f693          	andi	a3,a5,15
    800032fc:	00dd86b3          	add	a3,s11,a3
    80003300:	0006c583          	lbu	a1,0(a3)
    80003304:	00f00613          	li	a2,15
    80003308:	0047d69b          	srliw	a3,a5,0x4
    8000330c:	f8b40123          	sb	a1,-126(s0)
    80003310:	0047d593          	srli	a1,a5,0x4
    80003314:	28f67e63          	bgeu	a2,a5,800035b0 <__printf+0x608>
    80003318:	00f6f693          	andi	a3,a3,15
    8000331c:	00dd86b3          	add	a3,s11,a3
    80003320:	0006c503          	lbu	a0,0(a3)
    80003324:	0087d813          	srli	a6,a5,0x8
    80003328:	0087d69b          	srliw	a3,a5,0x8
    8000332c:	f8a401a3          	sb	a0,-125(s0)
    80003330:	28b67663          	bgeu	a2,a1,800035bc <__printf+0x614>
    80003334:	00f6f693          	andi	a3,a3,15
    80003338:	00dd86b3          	add	a3,s11,a3
    8000333c:	0006c583          	lbu	a1,0(a3)
    80003340:	00c7d513          	srli	a0,a5,0xc
    80003344:	00c7d69b          	srliw	a3,a5,0xc
    80003348:	f8b40223          	sb	a1,-124(s0)
    8000334c:	29067a63          	bgeu	a2,a6,800035e0 <__printf+0x638>
    80003350:	00f6f693          	andi	a3,a3,15
    80003354:	00dd86b3          	add	a3,s11,a3
    80003358:	0006c583          	lbu	a1,0(a3)
    8000335c:	0107d813          	srli	a6,a5,0x10
    80003360:	0107d69b          	srliw	a3,a5,0x10
    80003364:	f8b402a3          	sb	a1,-123(s0)
    80003368:	28a67263          	bgeu	a2,a0,800035ec <__printf+0x644>
    8000336c:	00f6f693          	andi	a3,a3,15
    80003370:	00dd86b3          	add	a3,s11,a3
    80003374:	0006c683          	lbu	a3,0(a3)
    80003378:	0147d79b          	srliw	a5,a5,0x14
    8000337c:	f8d40323          	sb	a3,-122(s0)
    80003380:	21067663          	bgeu	a2,a6,8000358c <__printf+0x5e4>
    80003384:	02079793          	slli	a5,a5,0x20
    80003388:	0207d793          	srli	a5,a5,0x20
    8000338c:	00fd8db3          	add	s11,s11,a5
    80003390:	000dc683          	lbu	a3,0(s11)
    80003394:	00800793          	li	a5,8
    80003398:	00700c93          	li	s9,7
    8000339c:	f8d403a3          	sb	a3,-121(s0)
    800033a0:	00075c63          	bgez	a4,800033b8 <__printf+0x410>
    800033a4:	f9040713          	addi	a4,s0,-112
    800033a8:	00f70733          	add	a4,a4,a5
    800033ac:	02d00693          	li	a3,45
    800033b0:	fed70823          	sb	a3,-16(a4)
    800033b4:	00078c93          	mv	s9,a5
    800033b8:	f8040793          	addi	a5,s0,-128
    800033bc:	01978cb3          	add	s9,a5,s9
    800033c0:	f7f40d13          	addi	s10,s0,-129
    800033c4:	000cc503          	lbu	a0,0(s9)
    800033c8:	fffc8c93          	addi	s9,s9,-1
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	9f8080e7          	jalr	-1544(ra) # 80002dc4 <consputc>
    800033d4:	ff9d18e3          	bne	s10,s9,800033c4 <__printf+0x41c>
    800033d8:	0100006f          	j	800033e8 <__printf+0x440>
    800033dc:	00000097          	auipc	ra,0x0
    800033e0:	9e8080e7          	jalr	-1560(ra) # 80002dc4 <consputc>
    800033e4:	000c8493          	mv	s1,s9
    800033e8:	00094503          	lbu	a0,0(s2)
    800033ec:	c60510e3          	bnez	a0,8000304c <__printf+0xa4>
    800033f0:	e40c0ee3          	beqz	s8,8000324c <__printf+0x2a4>
    800033f4:	00004517          	auipc	a0,0x4
    800033f8:	8fc50513          	addi	a0,a0,-1796 # 80006cf0 <pr>
    800033fc:	00001097          	auipc	ra,0x1
    80003400:	94c080e7          	jalr	-1716(ra) # 80003d48 <release>
    80003404:	e49ff06f          	j	8000324c <__printf+0x2a4>
    80003408:	f7843783          	ld	a5,-136(s0)
    8000340c:	03000513          	li	a0,48
    80003410:	01000d13          	li	s10,16
    80003414:	00878713          	addi	a4,a5,8
    80003418:	0007bc83          	ld	s9,0(a5)
    8000341c:	f6e43c23          	sd	a4,-136(s0)
    80003420:	00000097          	auipc	ra,0x0
    80003424:	9a4080e7          	jalr	-1628(ra) # 80002dc4 <consputc>
    80003428:	07800513          	li	a0,120
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	998080e7          	jalr	-1640(ra) # 80002dc4 <consputc>
    80003434:	00002d97          	auipc	s11,0x2
    80003438:	e7cd8d93          	addi	s11,s11,-388 # 800052b0 <digits>
    8000343c:	03ccd793          	srli	a5,s9,0x3c
    80003440:	00fd87b3          	add	a5,s11,a5
    80003444:	0007c503          	lbu	a0,0(a5)
    80003448:	fffd0d1b          	addiw	s10,s10,-1
    8000344c:	004c9c93          	slli	s9,s9,0x4
    80003450:	00000097          	auipc	ra,0x0
    80003454:	974080e7          	jalr	-1676(ra) # 80002dc4 <consputc>
    80003458:	fe0d12e3          	bnez	s10,8000343c <__printf+0x494>
    8000345c:	f8dff06f          	j	800033e8 <__printf+0x440>
    80003460:	f7843783          	ld	a5,-136(s0)
    80003464:	0007bc83          	ld	s9,0(a5)
    80003468:	00878793          	addi	a5,a5,8
    8000346c:	f6f43c23          	sd	a5,-136(s0)
    80003470:	000c9a63          	bnez	s9,80003484 <__printf+0x4dc>
    80003474:	1080006f          	j	8000357c <__printf+0x5d4>
    80003478:	001c8c93          	addi	s9,s9,1
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	948080e7          	jalr	-1720(ra) # 80002dc4 <consputc>
    80003484:	000cc503          	lbu	a0,0(s9)
    80003488:	fe0518e3          	bnez	a0,80003478 <__printf+0x4d0>
    8000348c:	f5dff06f          	j	800033e8 <__printf+0x440>
    80003490:	02500513          	li	a0,37
    80003494:	00000097          	auipc	ra,0x0
    80003498:	930080e7          	jalr	-1744(ra) # 80002dc4 <consputc>
    8000349c:	000c8513          	mv	a0,s9
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	924080e7          	jalr	-1756(ra) # 80002dc4 <consputc>
    800034a8:	f41ff06f          	j	800033e8 <__printf+0x440>
    800034ac:	02500513          	li	a0,37
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	914080e7          	jalr	-1772(ra) # 80002dc4 <consputc>
    800034b8:	f31ff06f          	j	800033e8 <__printf+0x440>
    800034bc:	00030513          	mv	a0,t1
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	7bc080e7          	jalr	1980(ra) # 80003c7c <acquire>
    800034c8:	b4dff06f          	j	80003014 <__printf+0x6c>
    800034cc:	40c0053b          	negw	a0,a2
    800034d0:	00a00713          	li	a4,10
    800034d4:	02e576bb          	remuw	a3,a0,a4
    800034d8:	00002d97          	auipc	s11,0x2
    800034dc:	dd8d8d93          	addi	s11,s11,-552 # 800052b0 <digits>
    800034e0:	ff700593          	li	a1,-9
    800034e4:	02069693          	slli	a3,a3,0x20
    800034e8:	0206d693          	srli	a3,a3,0x20
    800034ec:	00dd86b3          	add	a3,s11,a3
    800034f0:	0006c683          	lbu	a3,0(a3)
    800034f4:	02e557bb          	divuw	a5,a0,a4
    800034f8:	f8d40023          	sb	a3,-128(s0)
    800034fc:	10b65e63          	bge	a2,a1,80003618 <__printf+0x670>
    80003500:	06300593          	li	a1,99
    80003504:	02e7f6bb          	remuw	a3,a5,a4
    80003508:	02069693          	slli	a3,a3,0x20
    8000350c:	0206d693          	srli	a3,a3,0x20
    80003510:	00dd86b3          	add	a3,s11,a3
    80003514:	0006c683          	lbu	a3,0(a3)
    80003518:	02e7d73b          	divuw	a4,a5,a4
    8000351c:	00200793          	li	a5,2
    80003520:	f8d400a3          	sb	a3,-127(s0)
    80003524:	bca5ece3          	bltu	a1,a0,800030fc <__printf+0x154>
    80003528:	ce5ff06f          	j	8000320c <__printf+0x264>
    8000352c:	40e007bb          	negw	a5,a4
    80003530:	00002d97          	auipc	s11,0x2
    80003534:	d80d8d93          	addi	s11,s11,-640 # 800052b0 <digits>
    80003538:	00f7f693          	andi	a3,a5,15
    8000353c:	00dd86b3          	add	a3,s11,a3
    80003540:	0006c583          	lbu	a1,0(a3)
    80003544:	ff100613          	li	a2,-15
    80003548:	0047d69b          	srliw	a3,a5,0x4
    8000354c:	f8b40023          	sb	a1,-128(s0)
    80003550:	0047d59b          	srliw	a1,a5,0x4
    80003554:	0ac75e63          	bge	a4,a2,80003610 <__printf+0x668>
    80003558:	00f6f693          	andi	a3,a3,15
    8000355c:	00dd86b3          	add	a3,s11,a3
    80003560:	0006c603          	lbu	a2,0(a3)
    80003564:	00f00693          	li	a3,15
    80003568:	0087d79b          	srliw	a5,a5,0x8
    8000356c:	f8c400a3          	sb	a2,-127(s0)
    80003570:	d8b6e4e3          	bltu	a3,a1,800032f8 <__printf+0x350>
    80003574:	00200793          	li	a5,2
    80003578:	e2dff06f          	j	800033a4 <__printf+0x3fc>
    8000357c:	00002c97          	auipc	s9,0x2
    80003580:	d14c8c93          	addi	s9,s9,-748 # 80005290 <_ZZ8printHexmE9hexDigits+0x150>
    80003584:	02800513          	li	a0,40
    80003588:	ef1ff06f          	j	80003478 <__printf+0x4d0>
    8000358c:	00700793          	li	a5,7
    80003590:	00600c93          	li	s9,6
    80003594:	e0dff06f          	j	800033a0 <__printf+0x3f8>
    80003598:	00700793          	li	a5,7
    8000359c:	00600c93          	li	s9,6
    800035a0:	c69ff06f          	j	80003208 <__printf+0x260>
    800035a4:	00300793          	li	a5,3
    800035a8:	00200c93          	li	s9,2
    800035ac:	c5dff06f          	j	80003208 <__printf+0x260>
    800035b0:	00300793          	li	a5,3
    800035b4:	00200c93          	li	s9,2
    800035b8:	de9ff06f          	j	800033a0 <__printf+0x3f8>
    800035bc:	00400793          	li	a5,4
    800035c0:	00300c93          	li	s9,3
    800035c4:	dddff06f          	j	800033a0 <__printf+0x3f8>
    800035c8:	00400793          	li	a5,4
    800035cc:	00300c93          	li	s9,3
    800035d0:	c39ff06f          	j	80003208 <__printf+0x260>
    800035d4:	00500793          	li	a5,5
    800035d8:	00400c93          	li	s9,4
    800035dc:	c2dff06f          	j	80003208 <__printf+0x260>
    800035e0:	00500793          	li	a5,5
    800035e4:	00400c93          	li	s9,4
    800035e8:	db9ff06f          	j	800033a0 <__printf+0x3f8>
    800035ec:	00600793          	li	a5,6
    800035f0:	00500c93          	li	s9,5
    800035f4:	dadff06f          	j	800033a0 <__printf+0x3f8>
    800035f8:	00600793          	li	a5,6
    800035fc:	00500c93          	li	s9,5
    80003600:	c09ff06f          	j	80003208 <__printf+0x260>
    80003604:	00800793          	li	a5,8
    80003608:	00700c93          	li	s9,7
    8000360c:	bfdff06f          	j	80003208 <__printf+0x260>
    80003610:	00100793          	li	a5,1
    80003614:	d91ff06f          	j	800033a4 <__printf+0x3fc>
    80003618:	00100793          	li	a5,1
    8000361c:	bf1ff06f          	j	8000320c <__printf+0x264>
    80003620:	00900793          	li	a5,9
    80003624:	00800c93          	li	s9,8
    80003628:	be1ff06f          	j	80003208 <__printf+0x260>
    8000362c:	00002517          	auipc	a0,0x2
    80003630:	c6c50513          	addi	a0,a0,-916 # 80005298 <_ZZ8printHexmE9hexDigits+0x158>
    80003634:	00000097          	auipc	ra,0x0
    80003638:	918080e7          	jalr	-1768(ra) # 80002f4c <panic>

000000008000363c <printfinit>:
    8000363c:	fe010113          	addi	sp,sp,-32
    80003640:	00813823          	sd	s0,16(sp)
    80003644:	00913423          	sd	s1,8(sp)
    80003648:	00113c23          	sd	ra,24(sp)
    8000364c:	02010413          	addi	s0,sp,32
    80003650:	00003497          	auipc	s1,0x3
    80003654:	6a048493          	addi	s1,s1,1696 # 80006cf0 <pr>
    80003658:	00048513          	mv	a0,s1
    8000365c:	00002597          	auipc	a1,0x2
    80003660:	c4c58593          	addi	a1,a1,-948 # 800052a8 <_ZZ8printHexmE9hexDigits+0x168>
    80003664:	00000097          	auipc	ra,0x0
    80003668:	5f4080e7          	jalr	1524(ra) # 80003c58 <initlock>
    8000366c:	01813083          	ld	ra,24(sp)
    80003670:	01013403          	ld	s0,16(sp)
    80003674:	0004ac23          	sw	zero,24(s1)
    80003678:	00813483          	ld	s1,8(sp)
    8000367c:	02010113          	addi	sp,sp,32
    80003680:	00008067          	ret

0000000080003684 <uartinit>:
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00813423          	sd	s0,8(sp)
    8000368c:	01010413          	addi	s0,sp,16
    80003690:	100007b7          	lui	a5,0x10000
    80003694:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003698:	f8000713          	li	a4,-128
    8000369c:	00e781a3          	sb	a4,3(a5)
    800036a0:	00300713          	li	a4,3
    800036a4:	00e78023          	sb	a4,0(a5)
    800036a8:	000780a3          	sb	zero,1(a5)
    800036ac:	00e781a3          	sb	a4,3(a5)
    800036b0:	00700693          	li	a3,7
    800036b4:	00d78123          	sb	a3,2(a5)
    800036b8:	00e780a3          	sb	a4,1(a5)
    800036bc:	00813403          	ld	s0,8(sp)
    800036c0:	01010113          	addi	sp,sp,16
    800036c4:	00008067          	ret

00000000800036c8 <uartputc>:
    800036c8:	00002797          	auipc	a5,0x2
    800036cc:	3c07a783          	lw	a5,960(a5) # 80005a88 <panicked>
    800036d0:	00078463          	beqz	a5,800036d8 <uartputc+0x10>
    800036d4:	0000006f          	j	800036d4 <uartputc+0xc>
    800036d8:	fd010113          	addi	sp,sp,-48
    800036dc:	02813023          	sd	s0,32(sp)
    800036e0:	00913c23          	sd	s1,24(sp)
    800036e4:	01213823          	sd	s2,16(sp)
    800036e8:	01313423          	sd	s3,8(sp)
    800036ec:	02113423          	sd	ra,40(sp)
    800036f0:	03010413          	addi	s0,sp,48
    800036f4:	00002917          	auipc	s2,0x2
    800036f8:	39c90913          	addi	s2,s2,924 # 80005a90 <uart_tx_r>
    800036fc:	00093783          	ld	a5,0(s2)
    80003700:	00002497          	auipc	s1,0x2
    80003704:	39848493          	addi	s1,s1,920 # 80005a98 <uart_tx_w>
    80003708:	0004b703          	ld	a4,0(s1)
    8000370c:	02078693          	addi	a3,a5,32
    80003710:	00050993          	mv	s3,a0
    80003714:	02e69c63          	bne	a3,a4,8000374c <uartputc+0x84>
    80003718:	00001097          	auipc	ra,0x1
    8000371c:	834080e7          	jalr	-1996(ra) # 80003f4c <push_on>
    80003720:	00093783          	ld	a5,0(s2)
    80003724:	0004b703          	ld	a4,0(s1)
    80003728:	02078793          	addi	a5,a5,32
    8000372c:	00e79463          	bne	a5,a4,80003734 <uartputc+0x6c>
    80003730:	0000006f          	j	80003730 <uartputc+0x68>
    80003734:	00001097          	auipc	ra,0x1
    80003738:	88c080e7          	jalr	-1908(ra) # 80003fc0 <pop_on>
    8000373c:	00093783          	ld	a5,0(s2)
    80003740:	0004b703          	ld	a4,0(s1)
    80003744:	02078693          	addi	a3,a5,32
    80003748:	fce688e3          	beq	a3,a4,80003718 <uartputc+0x50>
    8000374c:	01f77693          	andi	a3,a4,31
    80003750:	00003597          	auipc	a1,0x3
    80003754:	5c058593          	addi	a1,a1,1472 # 80006d10 <uart_tx_buf>
    80003758:	00d586b3          	add	a3,a1,a3
    8000375c:	00170713          	addi	a4,a4,1
    80003760:	01368023          	sb	s3,0(a3)
    80003764:	00e4b023          	sd	a4,0(s1)
    80003768:	10000637          	lui	a2,0x10000
    8000376c:	02f71063          	bne	a4,a5,8000378c <uartputc+0xc4>
    80003770:	0340006f          	j	800037a4 <uartputc+0xdc>
    80003774:	00074703          	lbu	a4,0(a4)
    80003778:	00f93023          	sd	a5,0(s2)
    8000377c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003780:	00093783          	ld	a5,0(s2)
    80003784:	0004b703          	ld	a4,0(s1)
    80003788:	00f70e63          	beq	a4,a5,800037a4 <uartputc+0xdc>
    8000378c:	00564683          	lbu	a3,5(a2)
    80003790:	01f7f713          	andi	a4,a5,31
    80003794:	00e58733          	add	a4,a1,a4
    80003798:	0206f693          	andi	a3,a3,32
    8000379c:	00178793          	addi	a5,a5,1
    800037a0:	fc069ae3          	bnez	a3,80003774 <uartputc+0xac>
    800037a4:	02813083          	ld	ra,40(sp)
    800037a8:	02013403          	ld	s0,32(sp)
    800037ac:	01813483          	ld	s1,24(sp)
    800037b0:	01013903          	ld	s2,16(sp)
    800037b4:	00813983          	ld	s3,8(sp)
    800037b8:	03010113          	addi	sp,sp,48
    800037bc:	00008067          	ret

00000000800037c0 <uartputc_sync>:
    800037c0:	ff010113          	addi	sp,sp,-16
    800037c4:	00813423          	sd	s0,8(sp)
    800037c8:	01010413          	addi	s0,sp,16
    800037cc:	00002717          	auipc	a4,0x2
    800037d0:	2bc72703          	lw	a4,700(a4) # 80005a88 <panicked>
    800037d4:	02071663          	bnez	a4,80003800 <uartputc_sync+0x40>
    800037d8:	00050793          	mv	a5,a0
    800037dc:	100006b7          	lui	a3,0x10000
    800037e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800037e4:	02077713          	andi	a4,a4,32
    800037e8:	fe070ce3          	beqz	a4,800037e0 <uartputc_sync+0x20>
    800037ec:	0ff7f793          	andi	a5,a5,255
    800037f0:	00f68023          	sb	a5,0(a3)
    800037f4:	00813403          	ld	s0,8(sp)
    800037f8:	01010113          	addi	sp,sp,16
    800037fc:	00008067          	ret
    80003800:	0000006f          	j	80003800 <uartputc_sync+0x40>

0000000080003804 <uartstart>:
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00813423          	sd	s0,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	00002617          	auipc	a2,0x2
    80003814:	28060613          	addi	a2,a2,640 # 80005a90 <uart_tx_r>
    80003818:	00002517          	auipc	a0,0x2
    8000381c:	28050513          	addi	a0,a0,640 # 80005a98 <uart_tx_w>
    80003820:	00063783          	ld	a5,0(a2)
    80003824:	00053703          	ld	a4,0(a0)
    80003828:	04f70263          	beq	a4,a5,8000386c <uartstart+0x68>
    8000382c:	100005b7          	lui	a1,0x10000
    80003830:	00003817          	auipc	a6,0x3
    80003834:	4e080813          	addi	a6,a6,1248 # 80006d10 <uart_tx_buf>
    80003838:	01c0006f          	j	80003854 <uartstart+0x50>
    8000383c:	0006c703          	lbu	a4,0(a3)
    80003840:	00f63023          	sd	a5,0(a2)
    80003844:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003848:	00063783          	ld	a5,0(a2)
    8000384c:	00053703          	ld	a4,0(a0)
    80003850:	00f70e63          	beq	a4,a5,8000386c <uartstart+0x68>
    80003854:	01f7f713          	andi	a4,a5,31
    80003858:	00e806b3          	add	a3,a6,a4
    8000385c:	0055c703          	lbu	a4,5(a1)
    80003860:	00178793          	addi	a5,a5,1
    80003864:	02077713          	andi	a4,a4,32
    80003868:	fc071ae3          	bnez	a4,8000383c <uartstart+0x38>
    8000386c:	00813403          	ld	s0,8(sp)
    80003870:	01010113          	addi	sp,sp,16
    80003874:	00008067          	ret

0000000080003878 <uartgetc>:
    80003878:	ff010113          	addi	sp,sp,-16
    8000387c:	00813423          	sd	s0,8(sp)
    80003880:	01010413          	addi	s0,sp,16
    80003884:	10000737          	lui	a4,0x10000
    80003888:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000388c:	0017f793          	andi	a5,a5,1
    80003890:	00078c63          	beqz	a5,800038a8 <uartgetc+0x30>
    80003894:	00074503          	lbu	a0,0(a4)
    80003898:	0ff57513          	andi	a0,a0,255
    8000389c:	00813403          	ld	s0,8(sp)
    800038a0:	01010113          	addi	sp,sp,16
    800038a4:	00008067          	ret
    800038a8:	fff00513          	li	a0,-1
    800038ac:	ff1ff06f          	j	8000389c <uartgetc+0x24>

00000000800038b0 <uartintr>:
    800038b0:	100007b7          	lui	a5,0x10000
    800038b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800038b8:	0017f793          	andi	a5,a5,1
    800038bc:	0a078463          	beqz	a5,80003964 <uartintr+0xb4>
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00813823          	sd	s0,16(sp)
    800038c8:	00913423          	sd	s1,8(sp)
    800038cc:	00113c23          	sd	ra,24(sp)
    800038d0:	02010413          	addi	s0,sp,32
    800038d4:	100004b7          	lui	s1,0x10000
    800038d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800038dc:	0ff57513          	andi	a0,a0,255
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	534080e7          	jalr	1332(ra) # 80002e14 <consoleintr>
    800038e8:	0054c783          	lbu	a5,5(s1)
    800038ec:	0017f793          	andi	a5,a5,1
    800038f0:	fe0794e3          	bnez	a5,800038d8 <uartintr+0x28>
    800038f4:	00002617          	auipc	a2,0x2
    800038f8:	19c60613          	addi	a2,a2,412 # 80005a90 <uart_tx_r>
    800038fc:	00002517          	auipc	a0,0x2
    80003900:	19c50513          	addi	a0,a0,412 # 80005a98 <uart_tx_w>
    80003904:	00063783          	ld	a5,0(a2)
    80003908:	00053703          	ld	a4,0(a0)
    8000390c:	04f70263          	beq	a4,a5,80003950 <uartintr+0xa0>
    80003910:	100005b7          	lui	a1,0x10000
    80003914:	00003817          	auipc	a6,0x3
    80003918:	3fc80813          	addi	a6,a6,1020 # 80006d10 <uart_tx_buf>
    8000391c:	01c0006f          	j	80003938 <uartintr+0x88>
    80003920:	0006c703          	lbu	a4,0(a3)
    80003924:	00f63023          	sd	a5,0(a2)
    80003928:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000392c:	00063783          	ld	a5,0(a2)
    80003930:	00053703          	ld	a4,0(a0)
    80003934:	00f70e63          	beq	a4,a5,80003950 <uartintr+0xa0>
    80003938:	01f7f713          	andi	a4,a5,31
    8000393c:	00e806b3          	add	a3,a6,a4
    80003940:	0055c703          	lbu	a4,5(a1)
    80003944:	00178793          	addi	a5,a5,1
    80003948:	02077713          	andi	a4,a4,32
    8000394c:	fc071ae3          	bnez	a4,80003920 <uartintr+0x70>
    80003950:	01813083          	ld	ra,24(sp)
    80003954:	01013403          	ld	s0,16(sp)
    80003958:	00813483          	ld	s1,8(sp)
    8000395c:	02010113          	addi	sp,sp,32
    80003960:	00008067          	ret
    80003964:	00002617          	auipc	a2,0x2
    80003968:	12c60613          	addi	a2,a2,300 # 80005a90 <uart_tx_r>
    8000396c:	00002517          	auipc	a0,0x2
    80003970:	12c50513          	addi	a0,a0,300 # 80005a98 <uart_tx_w>
    80003974:	00063783          	ld	a5,0(a2)
    80003978:	00053703          	ld	a4,0(a0)
    8000397c:	04f70263          	beq	a4,a5,800039c0 <uartintr+0x110>
    80003980:	100005b7          	lui	a1,0x10000
    80003984:	00003817          	auipc	a6,0x3
    80003988:	38c80813          	addi	a6,a6,908 # 80006d10 <uart_tx_buf>
    8000398c:	01c0006f          	j	800039a8 <uartintr+0xf8>
    80003990:	0006c703          	lbu	a4,0(a3)
    80003994:	00f63023          	sd	a5,0(a2)
    80003998:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000399c:	00063783          	ld	a5,0(a2)
    800039a0:	00053703          	ld	a4,0(a0)
    800039a4:	02f70063          	beq	a4,a5,800039c4 <uartintr+0x114>
    800039a8:	01f7f713          	andi	a4,a5,31
    800039ac:	00e806b3          	add	a3,a6,a4
    800039b0:	0055c703          	lbu	a4,5(a1)
    800039b4:	00178793          	addi	a5,a5,1
    800039b8:	02077713          	andi	a4,a4,32
    800039bc:	fc071ae3          	bnez	a4,80003990 <uartintr+0xe0>
    800039c0:	00008067          	ret
    800039c4:	00008067          	ret

00000000800039c8 <kinit>:
    800039c8:	fc010113          	addi	sp,sp,-64
    800039cc:	02913423          	sd	s1,40(sp)
    800039d0:	fffff7b7          	lui	a5,0xfffff
    800039d4:	00004497          	auipc	s1,0x4
    800039d8:	36b48493          	addi	s1,s1,875 # 80007d3f <end+0xfff>
    800039dc:	02813823          	sd	s0,48(sp)
    800039e0:	01313c23          	sd	s3,24(sp)
    800039e4:	00f4f4b3          	and	s1,s1,a5
    800039e8:	02113c23          	sd	ra,56(sp)
    800039ec:	03213023          	sd	s2,32(sp)
    800039f0:	01413823          	sd	s4,16(sp)
    800039f4:	01513423          	sd	s5,8(sp)
    800039f8:	04010413          	addi	s0,sp,64
    800039fc:	000017b7          	lui	a5,0x1
    80003a00:	01100993          	li	s3,17
    80003a04:	00f487b3          	add	a5,s1,a5
    80003a08:	01b99993          	slli	s3,s3,0x1b
    80003a0c:	06f9e063          	bltu	s3,a5,80003a6c <kinit+0xa4>
    80003a10:	00003a97          	auipc	s5,0x3
    80003a14:	330a8a93          	addi	s5,s5,816 # 80006d40 <end>
    80003a18:	0754ec63          	bltu	s1,s5,80003a90 <kinit+0xc8>
    80003a1c:	0734fa63          	bgeu	s1,s3,80003a90 <kinit+0xc8>
    80003a20:	00088a37          	lui	s4,0x88
    80003a24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003a28:	00002917          	auipc	s2,0x2
    80003a2c:	07890913          	addi	s2,s2,120 # 80005aa0 <kmem>
    80003a30:	00ca1a13          	slli	s4,s4,0xc
    80003a34:	0140006f          	j	80003a48 <kinit+0x80>
    80003a38:	000017b7          	lui	a5,0x1
    80003a3c:	00f484b3          	add	s1,s1,a5
    80003a40:	0554e863          	bltu	s1,s5,80003a90 <kinit+0xc8>
    80003a44:	0534f663          	bgeu	s1,s3,80003a90 <kinit+0xc8>
    80003a48:	00001637          	lui	a2,0x1
    80003a4c:	00100593          	li	a1,1
    80003a50:	00048513          	mv	a0,s1
    80003a54:	00000097          	auipc	ra,0x0
    80003a58:	5e4080e7          	jalr	1508(ra) # 80004038 <__memset>
    80003a5c:	00093783          	ld	a5,0(s2)
    80003a60:	00f4b023          	sd	a5,0(s1)
    80003a64:	00993023          	sd	s1,0(s2)
    80003a68:	fd4498e3          	bne	s1,s4,80003a38 <kinit+0x70>
    80003a6c:	03813083          	ld	ra,56(sp)
    80003a70:	03013403          	ld	s0,48(sp)
    80003a74:	02813483          	ld	s1,40(sp)
    80003a78:	02013903          	ld	s2,32(sp)
    80003a7c:	01813983          	ld	s3,24(sp)
    80003a80:	01013a03          	ld	s4,16(sp)
    80003a84:	00813a83          	ld	s5,8(sp)
    80003a88:	04010113          	addi	sp,sp,64
    80003a8c:	00008067          	ret
    80003a90:	00002517          	auipc	a0,0x2
    80003a94:	83850513          	addi	a0,a0,-1992 # 800052c8 <digits+0x18>
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	4b4080e7          	jalr	1204(ra) # 80002f4c <panic>

0000000080003aa0 <freerange>:
    80003aa0:	fc010113          	addi	sp,sp,-64
    80003aa4:	000017b7          	lui	a5,0x1
    80003aa8:	02913423          	sd	s1,40(sp)
    80003aac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003ab0:	009504b3          	add	s1,a0,s1
    80003ab4:	fffff537          	lui	a0,0xfffff
    80003ab8:	02813823          	sd	s0,48(sp)
    80003abc:	02113c23          	sd	ra,56(sp)
    80003ac0:	03213023          	sd	s2,32(sp)
    80003ac4:	01313c23          	sd	s3,24(sp)
    80003ac8:	01413823          	sd	s4,16(sp)
    80003acc:	01513423          	sd	s5,8(sp)
    80003ad0:	01613023          	sd	s6,0(sp)
    80003ad4:	04010413          	addi	s0,sp,64
    80003ad8:	00a4f4b3          	and	s1,s1,a0
    80003adc:	00f487b3          	add	a5,s1,a5
    80003ae0:	06f5e463          	bltu	a1,a5,80003b48 <freerange+0xa8>
    80003ae4:	00003a97          	auipc	s5,0x3
    80003ae8:	25ca8a93          	addi	s5,s5,604 # 80006d40 <end>
    80003aec:	0954e263          	bltu	s1,s5,80003b70 <freerange+0xd0>
    80003af0:	01100993          	li	s3,17
    80003af4:	01b99993          	slli	s3,s3,0x1b
    80003af8:	0734fc63          	bgeu	s1,s3,80003b70 <freerange+0xd0>
    80003afc:	00058a13          	mv	s4,a1
    80003b00:	00002917          	auipc	s2,0x2
    80003b04:	fa090913          	addi	s2,s2,-96 # 80005aa0 <kmem>
    80003b08:	00002b37          	lui	s6,0x2
    80003b0c:	0140006f          	j	80003b20 <freerange+0x80>
    80003b10:	000017b7          	lui	a5,0x1
    80003b14:	00f484b3          	add	s1,s1,a5
    80003b18:	0554ec63          	bltu	s1,s5,80003b70 <freerange+0xd0>
    80003b1c:	0534fa63          	bgeu	s1,s3,80003b70 <freerange+0xd0>
    80003b20:	00001637          	lui	a2,0x1
    80003b24:	00100593          	li	a1,1
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	00000097          	auipc	ra,0x0
    80003b30:	50c080e7          	jalr	1292(ra) # 80004038 <__memset>
    80003b34:	00093703          	ld	a4,0(s2)
    80003b38:	016487b3          	add	a5,s1,s6
    80003b3c:	00e4b023          	sd	a4,0(s1)
    80003b40:	00993023          	sd	s1,0(s2)
    80003b44:	fcfa76e3          	bgeu	s4,a5,80003b10 <freerange+0x70>
    80003b48:	03813083          	ld	ra,56(sp)
    80003b4c:	03013403          	ld	s0,48(sp)
    80003b50:	02813483          	ld	s1,40(sp)
    80003b54:	02013903          	ld	s2,32(sp)
    80003b58:	01813983          	ld	s3,24(sp)
    80003b5c:	01013a03          	ld	s4,16(sp)
    80003b60:	00813a83          	ld	s5,8(sp)
    80003b64:	00013b03          	ld	s6,0(sp)
    80003b68:	04010113          	addi	sp,sp,64
    80003b6c:	00008067          	ret
    80003b70:	00001517          	auipc	a0,0x1
    80003b74:	75850513          	addi	a0,a0,1880 # 800052c8 <digits+0x18>
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	3d4080e7          	jalr	980(ra) # 80002f4c <panic>

0000000080003b80 <kfree>:
    80003b80:	fe010113          	addi	sp,sp,-32
    80003b84:	00813823          	sd	s0,16(sp)
    80003b88:	00113c23          	sd	ra,24(sp)
    80003b8c:	00913423          	sd	s1,8(sp)
    80003b90:	02010413          	addi	s0,sp,32
    80003b94:	03451793          	slli	a5,a0,0x34
    80003b98:	04079c63          	bnez	a5,80003bf0 <kfree+0x70>
    80003b9c:	00003797          	auipc	a5,0x3
    80003ba0:	1a478793          	addi	a5,a5,420 # 80006d40 <end>
    80003ba4:	00050493          	mv	s1,a0
    80003ba8:	04f56463          	bltu	a0,a5,80003bf0 <kfree+0x70>
    80003bac:	01100793          	li	a5,17
    80003bb0:	01b79793          	slli	a5,a5,0x1b
    80003bb4:	02f57e63          	bgeu	a0,a5,80003bf0 <kfree+0x70>
    80003bb8:	00001637          	lui	a2,0x1
    80003bbc:	00100593          	li	a1,1
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	478080e7          	jalr	1144(ra) # 80004038 <__memset>
    80003bc8:	00002797          	auipc	a5,0x2
    80003bcc:	ed878793          	addi	a5,a5,-296 # 80005aa0 <kmem>
    80003bd0:	0007b703          	ld	a4,0(a5)
    80003bd4:	01813083          	ld	ra,24(sp)
    80003bd8:	01013403          	ld	s0,16(sp)
    80003bdc:	00e4b023          	sd	a4,0(s1)
    80003be0:	0097b023          	sd	s1,0(a5)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	02010113          	addi	sp,sp,32
    80003bec:	00008067          	ret
    80003bf0:	00001517          	auipc	a0,0x1
    80003bf4:	6d850513          	addi	a0,a0,1752 # 800052c8 <digits+0x18>
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	354080e7          	jalr	852(ra) # 80002f4c <panic>

0000000080003c00 <kalloc>:
    80003c00:	fe010113          	addi	sp,sp,-32
    80003c04:	00813823          	sd	s0,16(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	02010413          	addi	s0,sp,32
    80003c14:	00002797          	auipc	a5,0x2
    80003c18:	e8c78793          	addi	a5,a5,-372 # 80005aa0 <kmem>
    80003c1c:	0007b483          	ld	s1,0(a5)
    80003c20:	02048063          	beqz	s1,80003c40 <kalloc+0x40>
    80003c24:	0004b703          	ld	a4,0(s1)
    80003c28:	00001637          	lui	a2,0x1
    80003c2c:	00500593          	li	a1,5
    80003c30:	00048513          	mv	a0,s1
    80003c34:	00e7b023          	sd	a4,0(a5)
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	400080e7          	jalr	1024(ra) # 80004038 <__memset>
    80003c40:	01813083          	ld	ra,24(sp)
    80003c44:	01013403          	ld	s0,16(sp)
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	00813483          	ld	s1,8(sp)
    80003c50:	02010113          	addi	sp,sp,32
    80003c54:	00008067          	ret

0000000080003c58 <initlock>:
    80003c58:	ff010113          	addi	sp,sp,-16
    80003c5c:	00813423          	sd	s0,8(sp)
    80003c60:	01010413          	addi	s0,sp,16
    80003c64:	00813403          	ld	s0,8(sp)
    80003c68:	00b53423          	sd	a1,8(a0)
    80003c6c:	00052023          	sw	zero,0(a0)
    80003c70:	00053823          	sd	zero,16(a0)
    80003c74:	01010113          	addi	sp,sp,16
    80003c78:	00008067          	ret

0000000080003c7c <acquire>:
    80003c7c:	fe010113          	addi	sp,sp,-32
    80003c80:	00813823          	sd	s0,16(sp)
    80003c84:	00913423          	sd	s1,8(sp)
    80003c88:	00113c23          	sd	ra,24(sp)
    80003c8c:	01213023          	sd	s2,0(sp)
    80003c90:	02010413          	addi	s0,sp,32
    80003c94:	00050493          	mv	s1,a0
    80003c98:	10002973          	csrr	s2,sstatus
    80003c9c:	100027f3          	csrr	a5,sstatus
    80003ca0:	ffd7f793          	andi	a5,a5,-3
    80003ca4:	10079073          	csrw	sstatus,a5
    80003ca8:	fffff097          	auipc	ra,0xfffff
    80003cac:	8e8080e7          	jalr	-1816(ra) # 80002590 <mycpu>
    80003cb0:	07852783          	lw	a5,120(a0)
    80003cb4:	06078e63          	beqz	a5,80003d30 <acquire+0xb4>
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	8d8080e7          	jalr	-1832(ra) # 80002590 <mycpu>
    80003cc0:	07852783          	lw	a5,120(a0)
    80003cc4:	0004a703          	lw	a4,0(s1)
    80003cc8:	0017879b          	addiw	a5,a5,1
    80003ccc:	06f52c23          	sw	a5,120(a0)
    80003cd0:	04071063          	bnez	a4,80003d10 <acquire+0x94>
    80003cd4:	00100713          	li	a4,1
    80003cd8:	00070793          	mv	a5,a4
    80003cdc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003ce0:	0007879b          	sext.w	a5,a5
    80003ce4:	fe079ae3          	bnez	a5,80003cd8 <acquire+0x5c>
    80003ce8:	0ff0000f          	fence
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	8a4080e7          	jalr	-1884(ra) # 80002590 <mycpu>
    80003cf4:	01813083          	ld	ra,24(sp)
    80003cf8:	01013403          	ld	s0,16(sp)
    80003cfc:	00a4b823          	sd	a0,16(s1)
    80003d00:	00013903          	ld	s2,0(sp)
    80003d04:	00813483          	ld	s1,8(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	00008067          	ret
    80003d10:	0104b903          	ld	s2,16(s1)
    80003d14:	fffff097          	auipc	ra,0xfffff
    80003d18:	87c080e7          	jalr	-1924(ra) # 80002590 <mycpu>
    80003d1c:	faa91ce3          	bne	s2,a0,80003cd4 <acquire+0x58>
    80003d20:	00001517          	auipc	a0,0x1
    80003d24:	5b050513          	addi	a0,a0,1456 # 800052d0 <digits+0x20>
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	224080e7          	jalr	548(ra) # 80002f4c <panic>
    80003d30:	00195913          	srli	s2,s2,0x1
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	85c080e7          	jalr	-1956(ra) # 80002590 <mycpu>
    80003d3c:	00197913          	andi	s2,s2,1
    80003d40:	07252e23          	sw	s2,124(a0)
    80003d44:	f75ff06f          	j	80003cb8 <acquire+0x3c>

0000000080003d48 <release>:
    80003d48:	fe010113          	addi	sp,sp,-32
    80003d4c:	00813823          	sd	s0,16(sp)
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00913423          	sd	s1,8(sp)
    80003d58:	01213023          	sd	s2,0(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	00052783          	lw	a5,0(a0)
    80003d64:	00079a63          	bnez	a5,80003d78 <release+0x30>
    80003d68:	00001517          	auipc	a0,0x1
    80003d6c:	57050513          	addi	a0,a0,1392 # 800052d8 <digits+0x28>
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	1dc080e7          	jalr	476(ra) # 80002f4c <panic>
    80003d78:	01053903          	ld	s2,16(a0)
    80003d7c:	00050493          	mv	s1,a0
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	810080e7          	jalr	-2032(ra) # 80002590 <mycpu>
    80003d88:	fea910e3          	bne	s2,a0,80003d68 <release+0x20>
    80003d8c:	0004b823          	sd	zero,16(s1)
    80003d90:	0ff0000f          	fence
    80003d94:	0f50000f          	fence	iorw,ow
    80003d98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	7f4080e7          	jalr	2036(ra) # 80002590 <mycpu>
    80003da4:	100027f3          	csrr	a5,sstatus
    80003da8:	0027f793          	andi	a5,a5,2
    80003dac:	04079a63          	bnez	a5,80003e00 <release+0xb8>
    80003db0:	07852783          	lw	a5,120(a0)
    80003db4:	02f05e63          	blez	a5,80003df0 <release+0xa8>
    80003db8:	fff7871b          	addiw	a4,a5,-1
    80003dbc:	06e52c23          	sw	a4,120(a0)
    80003dc0:	00071c63          	bnez	a4,80003dd8 <release+0x90>
    80003dc4:	07c52783          	lw	a5,124(a0)
    80003dc8:	00078863          	beqz	a5,80003dd8 <release+0x90>
    80003dcc:	100027f3          	csrr	a5,sstatus
    80003dd0:	0027e793          	ori	a5,a5,2
    80003dd4:	10079073          	csrw	sstatus,a5
    80003dd8:	01813083          	ld	ra,24(sp)
    80003ddc:	01013403          	ld	s0,16(sp)
    80003de0:	00813483          	ld	s1,8(sp)
    80003de4:	00013903          	ld	s2,0(sp)
    80003de8:	02010113          	addi	sp,sp,32
    80003dec:	00008067          	ret
    80003df0:	00001517          	auipc	a0,0x1
    80003df4:	50850513          	addi	a0,a0,1288 # 800052f8 <digits+0x48>
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	154080e7          	jalr	340(ra) # 80002f4c <panic>
    80003e00:	00001517          	auipc	a0,0x1
    80003e04:	4e050513          	addi	a0,a0,1248 # 800052e0 <digits+0x30>
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	144080e7          	jalr	324(ra) # 80002f4c <panic>

0000000080003e10 <holding>:
    80003e10:	00052783          	lw	a5,0(a0)
    80003e14:	00079663          	bnez	a5,80003e20 <holding+0x10>
    80003e18:	00000513          	li	a0,0
    80003e1c:	00008067          	ret
    80003e20:	fe010113          	addi	sp,sp,-32
    80003e24:	00813823          	sd	s0,16(sp)
    80003e28:	00913423          	sd	s1,8(sp)
    80003e2c:	00113c23          	sd	ra,24(sp)
    80003e30:	02010413          	addi	s0,sp,32
    80003e34:	01053483          	ld	s1,16(a0)
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	758080e7          	jalr	1880(ra) # 80002590 <mycpu>
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	01013403          	ld	s0,16(sp)
    80003e48:	40a48533          	sub	a0,s1,a0
    80003e4c:	00153513          	seqz	a0,a0
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00008067          	ret

0000000080003e5c <push_off>:
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	00913423          	sd	s1,8(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    80003e70:	100024f3          	csrr	s1,sstatus
    80003e74:	100027f3          	csrr	a5,sstatus
    80003e78:	ffd7f793          	andi	a5,a5,-3
    80003e7c:	10079073          	csrw	sstatus,a5
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	710080e7          	jalr	1808(ra) # 80002590 <mycpu>
    80003e88:	07852783          	lw	a5,120(a0)
    80003e8c:	02078663          	beqz	a5,80003eb8 <push_off+0x5c>
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	700080e7          	jalr	1792(ra) # 80002590 <mycpu>
    80003e98:	07852783          	lw	a5,120(a0)
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	0017879b          	addiw	a5,a5,1
    80003ea8:	06f52c23          	sw	a5,120(a0)
    80003eac:	00813483          	ld	s1,8(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret
    80003eb8:	0014d493          	srli	s1,s1,0x1
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	6d4080e7          	jalr	1748(ra) # 80002590 <mycpu>
    80003ec4:	0014f493          	andi	s1,s1,1
    80003ec8:	06952e23          	sw	s1,124(a0)
    80003ecc:	fc5ff06f          	j	80003e90 <push_off+0x34>

0000000080003ed0 <pop_off>:
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00813023          	sd	s0,0(sp)
    80003ed8:	00113423          	sd	ra,8(sp)
    80003edc:	01010413          	addi	s0,sp,16
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	6b0080e7          	jalr	1712(ra) # 80002590 <mycpu>
    80003ee8:	100027f3          	csrr	a5,sstatus
    80003eec:	0027f793          	andi	a5,a5,2
    80003ef0:	04079663          	bnez	a5,80003f3c <pop_off+0x6c>
    80003ef4:	07852783          	lw	a5,120(a0)
    80003ef8:	02f05a63          	blez	a5,80003f2c <pop_off+0x5c>
    80003efc:	fff7871b          	addiw	a4,a5,-1
    80003f00:	06e52c23          	sw	a4,120(a0)
    80003f04:	00071c63          	bnez	a4,80003f1c <pop_off+0x4c>
    80003f08:	07c52783          	lw	a5,124(a0)
    80003f0c:	00078863          	beqz	a5,80003f1c <pop_off+0x4c>
    80003f10:	100027f3          	csrr	a5,sstatus
    80003f14:	0027e793          	ori	a5,a5,2
    80003f18:	10079073          	csrw	sstatus,a5
    80003f1c:	00813083          	ld	ra,8(sp)
    80003f20:	00013403          	ld	s0,0(sp)
    80003f24:	01010113          	addi	sp,sp,16
    80003f28:	00008067          	ret
    80003f2c:	00001517          	auipc	a0,0x1
    80003f30:	3cc50513          	addi	a0,a0,972 # 800052f8 <digits+0x48>
    80003f34:	fffff097          	auipc	ra,0xfffff
    80003f38:	018080e7          	jalr	24(ra) # 80002f4c <panic>
    80003f3c:	00001517          	auipc	a0,0x1
    80003f40:	3a450513          	addi	a0,a0,932 # 800052e0 <digits+0x30>
    80003f44:	fffff097          	auipc	ra,0xfffff
    80003f48:	008080e7          	jalr	8(ra) # 80002f4c <panic>

0000000080003f4c <push_on>:
    80003f4c:	fe010113          	addi	sp,sp,-32
    80003f50:	00813823          	sd	s0,16(sp)
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	00913423          	sd	s1,8(sp)
    80003f5c:	02010413          	addi	s0,sp,32
    80003f60:	100024f3          	csrr	s1,sstatus
    80003f64:	100027f3          	csrr	a5,sstatus
    80003f68:	0027e793          	ori	a5,a5,2
    80003f6c:	10079073          	csrw	sstatus,a5
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	620080e7          	jalr	1568(ra) # 80002590 <mycpu>
    80003f78:	07852783          	lw	a5,120(a0)
    80003f7c:	02078663          	beqz	a5,80003fa8 <push_on+0x5c>
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	610080e7          	jalr	1552(ra) # 80002590 <mycpu>
    80003f88:	07852783          	lw	a5,120(a0)
    80003f8c:	01813083          	ld	ra,24(sp)
    80003f90:	01013403          	ld	s0,16(sp)
    80003f94:	0017879b          	addiw	a5,a5,1
    80003f98:	06f52c23          	sw	a5,120(a0)
    80003f9c:	00813483          	ld	s1,8(sp)
    80003fa0:	02010113          	addi	sp,sp,32
    80003fa4:	00008067          	ret
    80003fa8:	0014d493          	srli	s1,s1,0x1
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	5e4080e7          	jalr	1508(ra) # 80002590 <mycpu>
    80003fb4:	0014f493          	andi	s1,s1,1
    80003fb8:	06952e23          	sw	s1,124(a0)
    80003fbc:	fc5ff06f          	j	80003f80 <push_on+0x34>

0000000080003fc0 <pop_on>:
    80003fc0:	ff010113          	addi	sp,sp,-16
    80003fc4:	00813023          	sd	s0,0(sp)
    80003fc8:	00113423          	sd	ra,8(sp)
    80003fcc:	01010413          	addi	s0,sp,16
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	5c0080e7          	jalr	1472(ra) # 80002590 <mycpu>
    80003fd8:	100027f3          	csrr	a5,sstatus
    80003fdc:	0027f793          	andi	a5,a5,2
    80003fe0:	04078463          	beqz	a5,80004028 <pop_on+0x68>
    80003fe4:	07852783          	lw	a5,120(a0)
    80003fe8:	02f05863          	blez	a5,80004018 <pop_on+0x58>
    80003fec:	fff7879b          	addiw	a5,a5,-1
    80003ff0:	06f52c23          	sw	a5,120(a0)
    80003ff4:	07853783          	ld	a5,120(a0)
    80003ff8:	00079863          	bnez	a5,80004008 <pop_on+0x48>
    80003ffc:	100027f3          	csrr	a5,sstatus
    80004000:	ffd7f793          	andi	a5,a5,-3
    80004004:	10079073          	csrw	sstatus,a5
    80004008:	00813083          	ld	ra,8(sp)
    8000400c:	00013403          	ld	s0,0(sp)
    80004010:	01010113          	addi	sp,sp,16
    80004014:	00008067          	ret
    80004018:	00001517          	auipc	a0,0x1
    8000401c:	30850513          	addi	a0,a0,776 # 80005320 <digits+0x70>
    80004020:	fffff097          	auipc	ra,0xfffff
    80004024:	f2c080e7          	jalr	-212(ra) # 80002f4c <panic>
    80004028:	00001517          	auipc	a0,0x1
    8000402c:	2d850513          	addi	a0,a0,728 # 80005300 <digits+0x50>
    80004030:	fffff097          	auipc	ra,0xfffff
    80004034:	f1c080e7          	jalr	-228(ra) # 80002f4c <panic>

0000000080004038 <__memset>:
    80004038:	ff010113          	addi	sp,sp,-16
    8000403c:	00813423          	sd	s0,8(sp)
    80004040:	01010413          	addi	s0,sp,16
    80004044:	1a060e63          	beqz	a2,80004200 <__memset+0x1c8>
    80004048:	40a007b3          	neg	a5,a0
    8000404c:	0077f793          	andi	a5,a5,7
    80004050:	00778693          	addi	a3,a5,7
    80004054:	00b00813          	li	a6,11
    80004058:	0ff5f593          	andi	a1,a1,255
    8000405c:	fff6071b          	addiw	a4,a2,-1
    80004060:	1b06e663          	bltu	a3,a6,8000420c <__memset+0x1d4>
    80004064:	1cd76463          	bltu	a4,a3,8000422c <__memset+0x1f4>
    80004068:	1a078e63          	beqz	a5,80004224 <__memset+0x1ec>
    8000406c:	00b50023          	sb	a1,0(a0)
    80004070:	00100713          	li	a4,1
    80004074:	1ae78463          	beq	a5,a4,8000421c <__memset+0x1e4>
    80004078:	00b500a3          	sb	a1,1(a0)
    8000407c:	00200713          	li	a4,2
    80004080:	1ae78a63          	beq	a5,a4,80004234 <__memset+0x1fc>
    80004084:	00b50123          	sb	a1,2(a0)
    80004088:	00300713          	li	a4,3
    8000408c:	18e78463          	beq	a5,a4,80004214 <__memset+0x1dc>
    80004090:	00b501a3          	sb	a1,3(a0)
    80004094:	00400713          	li	a4,4
    80004098:	1ae78263          	beq	a5,a4,8000423c <__memset+0x204>
    8000409c:	00b50223          	sb	a1,4(a0)
    800040a0:	00500713          	li	a4,5
    800040a4:	1ae78063          	beq	a5,a4,80004244 <__memset+0x20c>
    800040a8:	00b502a3          	sb	a1,5(a0)
    800040ac:	00700713          	li	a4,7
    800040b0:	18e79e63          	bne	a5,a4,8000424c <__memset+0x214>
    800040b4:	00b50323          	sb	a1,6(a0)
    800040b8:	00700e93          	li	t4,7
    800040bc:	00859713          	slli	a4,a1,0x8
    800040c0:	00e5e733          	or	a4,a1,a4
    800040c4:	01059e13          	slli	t3,a1,0x10
    800040c8:	01c76e33          	or	t3,a4,t3
    800040cc:	01859313          	slli	t1,a1,0x18
    800040d0:	006e6333          	or	t1,t3,t1
    800040d4:	02059893          	slli	a7,a1,0x20
    800040d8:	40f60e3b          	subw	t3,a2,a5
    800040dc:	011368b3          	or	a7,t1,a7
    800040e0:	02859813          	slli	a6,a1,0x28
    800040e4:	0108e833          	or	a6,a7,a6
    800040e8:	03059693          	slli	a3,a1,0x30
    800040ec:	003e589b          	srliw	a7,t3,0x3
    800040f0:	00d866b3          	or	a3,a6,a3
    800040f4:	03859713          	slli	a4,a1,0x38
    800040f8:	00389813          	slli	a6,a7,0x3
    800040fc:	00f507b3          	add	a5,a0,a5
    80004100:	00e6e733          	or	a4,a3,a4
    80004104:	000e089b          	sext.w	a7,t3
    80004108:	00f806b3          	add	a3,a6,a5
    8000410c:	00e7b023          	sd	a4,0(a5)
    80004110:	00878793          	addi	a5,a5,8
    80004114:	fed79ce3          	bne	a5,a3,8000410c <__memset+0xd4>
    80004118:	ff8e7793          	andi	a5,t3,-8
    8000411c:	0007871b          	sext.w	a4,a5
    80004120:	01d787bb          	addw	a5,a5,t4
    80004124:	0ce88e63          	beq	a7,a4,80004200 <__memset+0x1c8>
    80004128:	00f50733          	add	a4,a0,a5
    8000412c:	00b70023          	sb	a1,0(a4)
    80004130:	0017871b          	addiw	a4,a5,1
    80004134:	0cc77663          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    80004138:	00e50733          	add	a4,a0,a4
    8000413c:	00b70023          	sb	a1,0(a4)
    80004140:	0027871b          	addiw	a4,a5,2
    80004144:	0ac77e63          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    80004148:	00e50733          	add	a4,a0,a4
    8000414c:	00b70023          	sb	a1,0(a4)
    80004150:	0037871b          	addiw	a4,a5,3
    80004154:	0ac77663          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    80004158:	00e50733          	add	a4,a0,a4
    8000415c:	00b70023          	sb	a1,0(a4)
    80004160:	0047871b          	addiw	a4,a5,4
    80004164:	08c77e63          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    80004168:	00e50733          	add	a4,a0,a4
    8000416c:	00b70023          	sb	a1,0(a4)
    80004170:	0057871b          	addiw	a4,a5,5
    80004174:	08c77663          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    80004178:	00e50733          	add	a4,a0,a4
    8000417c:	00b70023          	sb	a1,0(a4)
    80004180:	0067871b          	addiw	a4,a5,6
    80004184:	06c77e63          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    80004188:	00e50733          	add	a4,a0,a4
    8000418c:	00b70023          	sb	a1,0(a4)
    80004190:	0077871b          	addiw	a4,a5,7
    80004194:	06c77663          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    80004198:	00e50733          	add	a4,a0,a4
    8000419c:	00b70023          	sb	a1,0(a4)
    800041a0:	0087871b          	addiw	a4,a5,8
    800041a4:	04c77e63          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    800041a8:	00e50733          	add	a4,a0,a4
    800041ac:	00b70023          	sb	a1,0(a4)
    800041b0:	0097871b          	addiw	a4,a5,9
    800041b4:	04c77663          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    800041b8:	00e50733          	add	a4,a0,a4
    800041bc:	00b70023          	sb	a1,0(a4)
    800041c0:	00a7871b          	addiw	a4,a5,10
    800041c4:	02c77e63          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    800041c8:	00e50733          	add	a4,a0,a4
    800041cc:	00b70023          	sb	a1,0(a4)
    800041d0:	00b7871b          	addiw	a4,a5,11
    800041d4:	02c77663          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00b70023          	sb	a1,0(a4)
    800041e0:	00c7871b          	addiw	a4,a5,12
    800041e4:	00c77e63          	bgeu	a4,a2,80004200 <__memset+0x1c8>
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	00d7879b          	addiw	a5,a5,13
    800041f4:	00c7f663          	bgeu	a5,a2,80004200 <__memset+0x1c8>
    800041f8:	00f507b3          	add	a5,a0,a5
    800041fc:	00b78023          	sb	a1,0(a5)
    80004200:	00813403          	ld	s0,8(sp)
    80004204:	01010113          	addi	sp,sp,16
    80004208:	00008067          	ret
    8000420c:	00b00693          	li	a3,11
    80004210:	e55ff06f          	j	80004064 <__memset+0x2c>
    80004214:	00300e93          	li	t4,3
    80004218:	ea5ff06f          	j	800040bc <__memset+0x84>
    8000421c:	00100e93          	li	t4,1
    80004220:	e9dff06f          	j	800040bc <__memset+0x84>
    80004224:	00000e93          	li	t4,0
    80004228:	e95ff06f          	j	800040bc <__memset+0x84>
    8000422c:	00000793          	li	a5,0
    80004230:	ef9ff06f          	j	80004128 <__memset+0xf0>
    80004234:	00200e93          	li	t4,2
    80004238:	e85ff06f          	j	800040bc <__memset+0x84>
    8000423c:	00400e93          	li	t4,4
    80004240:	e7dff06f          	j	800040bc <__memset+0x84>
    80004244:	00500e93          	li	t4,5
    80004248:	e75ff06f          	j	800040bc <__memset+0x84>
    8000424c:	00600e93          	li	t4,6
    80004250:	e6dff06f          	j	800040bc <__memset+0x84>

0000000080004254 <__memmove>:
    80004254:	ff010113          	addi	sp,sp,-16
    80004258:	00813423          	sd	s0,8(sp)
    8000425c:	01010413          	addi	s0,sp,16
    80004260:	0e060863          	beqz	a2,80004350 <__memmove+0xfc>
    80004264:	fff6069b          	addiw	a3,a2,-1
    80004268:	0006881b          	sext.w	a6,a3
    8000426c:	0ea5e863          	bltu	a1,a0,8000435c <__memmove+0x108>
    80004270:	00758713          	addi	a4,a1,7
    80004274:	00a5e7b3          	or	a5,a1,a0
    80004278:	40a70733          	sub	a4,a4,a0
    8000427c:	0077f793          	andi	a5,a5,7
    80004280:	00f73713          	sltiu	a4,a4,15
    80004284:	00174713          	xori	a4,a4,1
    80004288:	0017b793          	seqz	a5,a5
    8000428c:	00e7f7b3          	and	a5,a5,a4
    80004290:	10078863          	beqz	a5,800043a0 <__memmove+0x14c>
    80004294:	00900793          	li	a5,9
    80004298:	1107f463          	bgeu	a5,a6,800043a0 <__memmove+0x14c>
    8000429c:	0036581b          	srliw	a6,a2,0x3
    800042a0:	fff8081b          	addiw	a6,a6,-1
    800042a4:	02081813          	slli	a6,a6,0x20
    800042a8:	01d85893          	srli	a7,a6,0x1d
    800042ac:	00858813          	addi	a6,a1,8
    800042b0:	00058793          	mv	a5,a1
    800042b4:	00050713          	mv	a4,a0
    800042b8:	01088833          	add	a6,a7,a6
    800042bc:	0007b883          	ld	a7,0(a5)
    800042c0:	00878793          	addi	a5,a5,8
    800042c4:	00870713          	addi	a4,a4,8
    800042c8:	ff173c23          	sd	a7,-8(a4)
    800042cc:	ff0798e3          	bne	a5,a6,800042bc <__memmove+0x68>
    800042d0:	ff867713          	andi	a4,a2,-8
    800042d4:	02071793          	slli	a5,a4,0x20
    800042d8:	0207d793          	srli	a5,a5,0x20
    800042dc:	00f585b3          	add	a1,a1,a5
    800042e0:	40e686bb          	subw	a3,a3,a4
    800042e4:	00f507b3          	add	a5,a0,a5
    800042e8:	06e60463          	beq	a2,a4,80004350 <__memmove+0xfc>
    800042ec:	0005c703          	lbu	a4,0(a1)
    800042f0:	00e78023          	sb	a4,0(a5)
    800042f4:	04068e63          	beqz	a3,80004350 <__memmove+0xfc>
    800042f8:	0015c603          	lbu	a2,1(a1)
    800042fc:	00100713          	li	a4,1
    80004300:	00c780a3          	sb	a2,1(a5)
    80004304:	04e68663          	beq	a3,a4,80004350 <__memmove+0xfc>
    80004308:	0025c603          	lbu	a2,2(a1)
    8000430c:	00200713          	li	a4,2
    80004310:	00c78123          	sb	a2,2(a5)
    80004314:	02e68e63          	beq	a3,a4,80004350 <__memmove+0xfc>
    80004318:	0035c603          	lbu	a2,3(a1)
    8000431c:	00300713          	li	a4,3
    80004320:	00c781a3          	sb	a2,3(a5)
    80004324:	02e68663          	beq	a3,a4,80004350 <__memmove+0xfc>
    80004328:	0045c603          	lbu	a2,4(a1)
    8000432c:	00400713          	li	a4,4
    80004330:	00c78223          	sb	a2,4(a5)
    80004334:	00e68e63          	beq	a3,a4,80004350 <__memmove+0xfc>
    80004338:	0055c603          	lbu	a2,5(a1)
    8000433c:	00500713          	li	a4,5
    80004340:	00c782a3          	sb	a2,5(a5)
    80004344:	00e68663          	beq	a3,a4,80004350 <__memmove+0xfc>
    80004348:	0065c703          	lbu	a4,6(a1)
    8000434c:	00e78323          	sb	a4,6(a5)
    80004350:	00813403          	ld	s0,8(sp)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret
    8000435c:	02061713          	slli	a4,a2,0x20
    80004360:	02075713          	srli	a4,a4,0x20
    80004364:	00e587b3          	add	a5,a1,a4
    80004368:	f0f574e3          	bgeu	a0,a5,80004270 <__memmove+0x1c>
    8000436c:	02069613          	slli	a2,a3,0x20
    80004370:	02065613          	srli	a2,a2,0x20
    80004374:	fff64613          	not	a2,a2
    80004378:	00e50733          	add	a4,a0,a4
    8000437c:	00c78633          	add	a2,a5,a2
    80004380:	fff7c683          	lbu	a3,-1(a5)
    80004384:	fff78793          	addi	a5,a5,-1
    80004388:	fff70713          	addi	a4,a4,-1
    8000438c:	00d70023          	sb	a3,0(a4)
    80004390:	fec798e3          	bne	a5,a2,80004380 <__memmove+0x12c>
    80004394:	00813403          	ld	s0,8(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret
    800043a0:	02069713          	slli	a4,a3,0x20
    800043a4:	02075713          	srli	a4,a4,0x20
    800043a8:	00170713          	addi	a4,a4,1
    800043ac:	00e50733          	add	a4,a0,a4
    800043b0:	00050793          	mv	a5,a0
    800043b4:	0005c683          	lbu	a3,0(a1)
    800043b8:	00178793          	addi	a5,a5,1
    800043bc:	00158593          	addi	a1,a1,1
    800043c0:	fed78fa3          	sb	a3,-1(a5)
    800043c4:	fee798e3          	bne	a5,a4,800043b4 <__memmove+0x160>
    800043c8:	f89ff06f          	j	80004350 <__memmove+0xfc>

00000000800043cc <__mem_free>:
    800043cc:	ff010113          	addi	sp,sp,-16
    800043d0:	00813423          	sd	s0,8(sp)
    800043d4:	01010413          	addi	s0,sp,16
    800043d8:	00001597          	auipc	a1,0x1
    800043dc:	6d058593          	addi	a1,a1,1744 # 80005aa8 <freep>
    800043e0:	0005b783          	ld	a5,0(a1)
    800043e4:	ff050693          	addi	a3,a0,-16
    800043e8:	0007b703          	ld	a4,0(a5)
    800043ec:	00d7fc63          	bgeu	a5,a3,80004404 <__mem_free+0x38>
    800043f0:	00e6ee63          	bltu	a3,a4,8000440c <__mem_free+0x40>
    800043f4:	00e7fc63          	bgeu	a5,a4,8000440c <__mem_free+0x40>
    800043f8:	00070793          	mv	a5,a4
    800043fc:	0007b703          	ld	a4,0(a5)
    80004400:	fed7e8e3          	bltu	a5,a3,800043f0 <__mem_free+0x24>
    80004404:	fee7eae3          	bltu	a5,a4,800043f8 <__mem_free+0x2c>
    80004408:	fee6f8e3          	bgeu	a3,a4,800043f8 <__mem_free+0x2c>
    8000440c:	ff852803          	lw	a6,-8(a0)
    80004410:	02081613          	slli	a2,a6,0x20
    80004414:	01c65613          	srli	a2,a2,0x1c
    80004418:	00c68633          	add	a2,a3,a2
    8000441c:	02c70a63          	beq	a4,a2,80004450 <__mem_free+0x84>
    80004420:	fee53823          	sd	a4,-16(a0)
    80004424:	0087a503          	lw	a0,8(a5)
    80004428:	02051613          	slli	a2,a0,0x20
    8000442c:	01c65613          	srli	a2,a2,0x1c
    80004430:	00c78633          	add	a2,a5,a2
    80004434:	04c68263          	beq	a3,a2,80004478 <__mem_free+0xac>
    80004438:	00813403          	ld	s0,8(sp)
    8000443c:	00d7b023          	sd	a3,0(a5)
    80004440:	00f5b023          	sd	a5,0(a1)
    80004444:	00000513          	li	a0,0
    80004448:	01010113          	addi	sp,sp,16
    8000444c:	00008067          	ret
    80004450:	00872603          	lw	a2,8(a4)
    80004454:	00073703          	ld	a4,0(a4)
    80004458:	0106083b          	addw	a6,a2,a6
    8000445c:	ff052c23          	sw	a6,-8(a0)
    80004460:	fee53823          	sd	a4,-16(a0)
    80004464:	0087a503          	lw	a0,8(a5)
    80004468:	02051613          	slli	a2,a0,0x20
    8000446c:	01c65613          	srli	a2,a2,0x1c
    80004470:	00c78633          	add	a2,a5,a2
    80004474:	fcc692e3          	bne	a3,a2,80004438 <__mem_free+0x6c>
    80004478:	00813403          	ld	s0,8(sp)
    8000447c:	0105053b          	addw	a0,a0,a6
    80004480:	00a7a423          	sw	a0,8(a5)
    80004484:	00e7b023          	sd	a4,0(a5)
    80004488:	00f5b023          	sd	a5,0(a1)
    8000448c:	00000513          	li	a0,0
    80004490:	01010113          	addi	sp,sp,16
    80004494:	00008067          	ret

0000000080004498 <__mem_alloc>:
    80004498:	fc010113          	addi	sp,sp,-64
    8000449c:	02813823          	sd	s0,48(sp)
    800044a0:	02913423          	sd	s1,40(sp)
    800044a4:	03213023          	sd	s2,32(sp)
    800044a8:	01513423          	sd	s5,8(sp)
    800044ac:	02113c23          	sd	ra,56(sp)
    800044b0:	01313c23          	sd	s3,24(sp)
    800044b4:	01413823          	sd	s4,16(sp)
    800044b8:	01613023          	sd	s6,0(sp)
    800044bc:	04010413          	addi	s0,sp,64
    800044c0:	00001a97          	auipc	s5,0x1
    800044c4:	5e8a8a93          	addi	s5,s5,1512 # 80005aa8 <freep>
    800044c8:	00f50913          	addi	s2,a0,15
    800044cc:	000ab683          	ld	a3,0(s5)
    800044d0:	00495913          	srli	s2,s2,0x4
    800044d4:	0019049b          	addiw	s1,s2,1
    800044d8:	00048913          	mv	s2,s1
    800044dc:	0c068c63          	beqz	a3,800045b4 <__mem_alloc+0x11c>
    800044e0:	0006b503          	ld	a0,0(a3)
    800044e4:	00852703          	lw	a4,8(a0)
    800044e8:	10977063          	bgeu	a4,s1,800045e8 <__mem_alloc+0x150>
    800044ec:	000017b7          	lui	a5,0x1
    800044f0:	0009099b          	sext.w	s3,s2
    800044f4:	0af4e863          	bltu	s1,a5,800045a4 <__mem_alloc+0x10c>
    800044f8:	02099a13          	slli	s4,s3,0x20
    800044fc:	01ca5a13          	srli	s4,s4,0x1c
    80004500:	fff00b13          	li	s6,-1
    80004504:	0100006f          	j	80004514 <__mem_alloc+0x7c>
    80004508:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000450c:	00852703          	lw	a4,8(a0)
    80004510:	04977463          	bgeu	a4,s1,80004558 <__mem_alloc+0xc0>
    80004514:	00050793          	mv	a5,a0
    80004518:	fea698e3          	bne	a3,a0,80004508 <__mem_alloc+0x70>
    8000451c:	000a0513          	mv	a0,s4
    80004520:	00000097          	auipc	ra,0x0
    80004524:	1f0080e7          	jalr	496(ra) # 80004710 <kvmincrease>
    80004528:	00050793          	mv	a5,a0
    8000452c:	01050513          	addi	a0,a0,16
    80004530:	07678e63          	beq	a5,s6,800045ac <__mem_alloc+0x114>
    80004534:	0137a423          	sw	s3,8(a5)
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	e94080e7          	jalr	-364(ra) # 800043cc <__mem_free>
    80004540:	000ab783          	ld	a5,0(s5)
    80004544:	06078463          	beqz	a5,800045ac <__mem_alloc+0x114>
    80004548:	0007b503          	ld	a0,0(a5)
    8000454c:	00078693          	mv	a3,a5
    80004550:	00852703          	lw	a4,8(a0)
    80004554:	fc9760e3          	bltu	a4,s1,80004514 <__mem_alloc+0x7c>
    80004558:	08e48263          	beq	s1,a4,800045dc <__mem_alloc+0x144>
    8000455c:	4127073b          	subw	a4,a4,s2
    80004560:	02071693          	slli	a3,a4,0x20
    80004564:	01c6d693          	srli	a3,a3,0x1c
    80004568:	00e52423          	sw	a4,8(a0)
    8000456c:	00d50533          	add	a0,a0,a3
    80004570:	01252423          	sw	s2,8(a0)
    80004574:	00fab023          	sd	a5,0(s5)
    80004578:	01050513          	addi	a0,a0,16
    8000457c:	03813083          	ld	ra,56(sp)
    80004580:	03013403          	ld	s0,48(sp)
    80004584:	02813483          	ld	s1,40(sp)
    80004588:	02013903          	ld	s2,32(sp)
    8000458c:	01813983          	ld	s3,24(sp)
    80004590:	01013a03          	ld	s4,16(sp)
    80004594:	00813a83          	ld	s5,8(sp)
    80004598:	00013b03          	ld	s6,0(sp)
    8000459c:	04010113          	addi	sp,sp,64
    800045a0:	00008067          	ret
    800045a4:	000019b7          	lui	s3,0x1
    800045a8:	f51ff06f          	j	800044f8 <__mem_alloc+0x60>
    800045ac:	00000513          	li	a0,0
    800045b0:	fcdff06f          	j	8000457c <__mem_alloc+0xe4>
    800045b4:	00002797          	auipc	a5,0x2
    800045b8:	77c78793          	addi	a5,a5,1916 # 80006d30 <base>
    800045bc:	00078513          	mv	a0,a5
    800045c0:	00fab023          	sd	a5,0(s5)
    800045c4:	00f7b023          	sd	a5,0(a5)
    800045c8:	00000713          	li	a4,0
    800045cc:	00002797          	auipc	a5,0x2
    800045d0:	7607a623          	sw	zero,1900(a5) # 80006d38 <base+0x8>
    800045d4:	00050693          	mv	a3,a0
    800045d8:	f11ff06f          	j	800044e8 <__mem_alloc+0x50>
    800045dc:	00053703          	ld	a4,0(a0)
    800045e0:	00e7b023          	sd	a4,0(a5)
    800045e4:	f91ff06f          	j	80004574 <__mem_alloc+0xdc>
    800045e8:	00068793          	mv	a5,a3
    800045ec:	f6dff06f          	j	80004558 <__mem_alloc+0xc0>

00000000800045f0 <__putc>:
    800045f0:	fe010113          	addi	sp,sp,-32
    800045f4:	00813823          	sd	s0,16(sp)
    800045f8:	00113c23          	sd	ra,24(sp)
    800045fc:	02010413          	addi	s0,sp,32
    80004600:	00050793          	mv	a5,a0
    80004604:	fef40593          	addi	a1,s0,-17
    80004608:	00100613          	li	a2,1
    8000460c:	00000513          	li	a0,0
    80004610:	fef407a3          	sb	a5,-17(s0)
    80004614:	fffff097          	auipc	ra,0xfffff
    80004618:	918080e7          	jalr	-1768(ra) # 80002f2c <console_write>
    8000461c:	01813083          	ld	ra,24(sp)
    80004620:	01013403          	ld	s0,16(sp)
    80004624:	02010113          	addi	sp,sp,32
    80004628:	00008067          	ret

000000008000462c <__getc>:
    8000462c:	fe010113          	addi	sp,sp,-32
    80004630:	00813823          	sd	s0,16(sp)
    80004634:	00113c23          	sd	ra,24(sp)
    80004638:	02010413          	addi	s0,sp,32
    8000463c:	fe840593          	addi	a1,s0,-24
    80004640:	00100613          	li	a2,1
    80004644:	00000513          	li	a0,0
    80004648:	fffff097          	auipc	ra,0xfffff
    8000464c:	8c4080e7          	jalr	-1852(ra) # 80002f0c <console_read>
    80004650:	fe844503          	lbu	a0,-24(s0)
    80004654:	01813083          	ld	ra,24(sp)
    80004658:	01013403          	ld	s0,16(sp)
    8000465c:	02010113          	addi	sp,sp,32
    80004660:	00008067          	ret

0000000080004664 <console_handler>:
    80004664:	fe010113          	addi	sp,sp,-32
    80004668:	00813823          	sd	s0,16(sp)
    8000466c:	00113c23          	sd	ra,24(sp)
    80004670:	00913423          	sd	s1,8(sp)
    80004674:	02010413          	addi	s0,sp,32
    80004678:	14202773          	csrr	a4,scause
    8000467c:	100027f3          	csrr	a5,sstatus
    80004680:	0027f793          	andi	a5,a5,2
    80004684:	06079e63          	bnez	a5,80004700 <console_handler+0x9c>
    80004688:	00074c63          	bltz	a4,800046a0 <console_handler+0x3c>
    8000468c:	01813083          	ld	ra,24(sp)
    80004690:	01013403          	ld	s0,16(sp)
    80004694:	00813483          	ld	s1,8(sp)
    80004698:	02010113          	addi	sp,sp,32
    8000469c:	00008067          	ret
    800046a0:	0ff77713          	andi	a4,a4,255
    800046a4:	00900793          	li	a5,9
    800046a8:	fef712e3          	bne	a4,a5,8000468c <console_handler+0x28>
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	4b8080e7          	jalr	1208(ra) # 80002b64 <plic_claim>
    800046b4:	00a00793          	li	a5,10
    800046b8:	00050493          	mv	s1,a0
    800046bc:	02f50c63          	beq	a0,a5,800046f4 <console_handler+0x90>
    800046c0:	fc0506e3          	beqz	a0,8000468c <console_handler+0x28>
    800046c4:	00050593          	mv	a1,a0
    800046c8:	00001517          	auipc	a0,0x1
    800046cc:	b6050513          	addi	a0,a0,-1184 # 80005228 <_ZZ8printHexmE9hexDigits+0xe8>
    800046d0:	fffff097          	auipc	ra,0xfffff
    800046d4:	8d8080e7          	jalr	-1832(ra) # 80002fa8 <__printf>
    800046d8:	01013403          	ld	s0,16(sp)
    800046dc:	01813083          	ld	ra,24(sp)
    800046e0:	00048513          	mv	a0,s1
    800046e4:	00813483          	ld	s1,8(sp)
    800046e8:	02010113          	addi	sp,sp,32
    800046ec:	ffffe317          	auipc	t1,0xffffe
    800046f0:	4b030067          	jr	1200(t1) # 80002b9c <plic_complete>
    800046f4:	fffff097          	auipc	ra,0xfffff
    800046f8:	1bc080e7          	jalr	444(ra) # 800038b0 <uartintr>
    800046fc:	fddff06f          	j	800046d8 <console_handler+0x74>
    80004700:	00001517          	auipc	a0,0x1
    80004704:	c2850513          	addi	a0,a0,-984 # 80005328 <digits+0x78>
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	844080e7          	jalr	-1980(ra) # 80002f4c <panic>

0000000080004710 <kvmincrease>:
    80004710:	fe010113          	addi	sp,sp,-32
    80004714:	01213023          	sd	s2,0(sp)
    80004718:	00001937          	lui	s2,0x1
    8000471c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00113c23          	sd	ra,24(sp)
    80004728:	00913423          	sd	s1,8(sp)
    8000472c:	02010413          	addi	s0,sp,32
    80004730:	01250933          	add	s2,a0,s2
    80004734:	00c95913          	srli	s2,s2,0xc
    80004738:	02090863          	beqz	s2,80004768 <kvmincrease+0x58>
    8000473c:	00000493          	li	s1,0
    80004740:	00148493          	addi	s1,s1,1
    80004744:	fffff097          	auipc	ra,0xfffff
    80004748:	4bc080e7          	jalr	1212(ra) # 80003c00 <kalloc>
    8000474c:	fe991ae3          	bne	s2,s1,80004740 <kvmincrease+0x30>
    80004750:	01813083          	ld	ra,24(sp)
    80004754:	01013403          	ld	s0,16(sp)
    80004758:	00813483          	ld	s1,8(sp)
    8000475c:	00013903          	ld	s2,0(sp)
    80004760:	02010113          	addi	sp,sp,32
    80004764:	00008067          	ret
    80004768:	01813083          	ld	ra,24(sp)
    8000476c:	01013403          	ld	s0,16(sp)
    80004770:	00813483          	ld	s1,8(sp)
    80004774:	00013903          	ld	s2,0(sp)
    80004778:	00000513          	li	a0,0
    8000477c:	02010113          	addi	sp,sp,32
    80004780:	00008067          	ret
	...
