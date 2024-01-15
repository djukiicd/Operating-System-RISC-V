
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	af013103          	ld	sp,-1296(sp) # 80005af0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4ac020ef          	jal	ra,800024c8 <start>

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
    800011ac:	60d000ef          	jal	ra,80001fb8 <_ZN5Riscv13handleSyscallEv>
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
    800012bc:	6cd000ef          	jal	ra,80002188 <_ZN5Riscv20handleTimerInterruptEv>
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
    8000134c:	68d000ef          	jal	ra,800021d8 <_ZN5Riscv22handleConsoleInterruptEv>
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
    800013d8:	629000ef          	jal	ra,80002200 <_ZN5Riscv14handleBadCauseEv>
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

0000000080001498 <_Z13thread_createPP3PCBPFvPvES2_S2_>:

int thread_create(thread_t * handle, void(*start_routine)(void*), void* arg, void* stack_space){
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
//    uint64 ra;  problematicno
//    __asm__ volatile("mv %0, a0" : "=r"(ra));
//
    if(start_routine!= nullptr)
    800014c0:	00058a63          	beqz	a1,800014d4 <_Z13thread_createPP3PCBPFvPvES2_S2_+0x3c>
        stack_space = mem_alloc(DEFAULT_STACK_SIZE); //dira a0 (u kom nam povratna adresa)
    800014c4:	00001537          	lui	a0,0x1
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	f60080e7          	jalr	-160(ra) # 80001428 <_Z9mem_allocm>
    800014d0:	00050693          	mv	a3,a0
    __asm__ volatile("mv a1, %0": :"r"(handle));
    800014d4:	00098593          	mv	a1,s3
    __asm__ volatile("mv a2, %0": :"r"(start_routine)); //proveri
    800014d8:	00048613          	mv	a2,s1
    __asm__ volatile("mv a3, %0": :"r"(arg));
    800014dc:	00090693          	mv	a3,s2
    __asm__ volatile("mv a4, %0": : "r"(stack_space));
    800014e0:	00068713          	mv	a4,a3
    __asm__ volatile("mv a0, %0" : : "r" (0x11));
    800014e4:	01100793          	li	a5,17
    800014e8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014ec:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800014f0:	00050513          	mv	a0,a0
    return ret;

}
    800014f4:	0005051b          	sext.w	a0,a0
    800014f8:	02813083          	ld	ra,40(sp)
    800014fc:	02013403          	ld	s0,32(sp)
    80001500:	01813483          	ld	s1,24(sp)
    80001504:	01013903          	ld	s2,16(sp)
    80001508:	00813983          	ld	s3,8(sp)
    8000150c:	03010113          	addi	sp,sp,48
    80001510:	00008067          	ret

0000000080001514 <_Z11thread_exitv>:

int thread_exit(){
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00813423          	sd	s0,8(sp)
    8000151c:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a0, %0" : : "r" (0x12));
    80001520:	01200793          	li	a5,18
    80001524:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001528:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000152c:	00050513          	mv	a0,a0
    return ret;

}
    80001530:	0005051b          	sext.w	a0,a0
    80001534:	00813403          	ld	s0,8(sp)
    80001538:	01010113          	addi	sp,sp,16
    8000153c:	00008067          	ret

0000000080001540 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001540:	ff010113          	addi	sp,sp,-16
    80001544:	00813423          	sd	s0,8(sp)
    80001548:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a0, %0" : : "r" (0x13));
    8000154c:	01300793          	li	a5,19
    80001550:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001554:	00000073          	ecall
}
    80001558:	00813403          	ld	s0,8(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_Z11thread_joinP3PCB>:

void thread_join(thread_t handle){
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00813423          	sd	s0,8(sp)
    8000156c:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001570:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x14));
    80001574:	01400793          	li	a5,20
    80001578:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000157c:	00000073          	ecall
}
    80001580:	00813403          	ld	s0,8(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init){
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00813423          	sd	s0,8(sp)
    80001594:	01010413          	addi	s0,sp,16

    int ret = 0;

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001598:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0" : : "r" (init));
    8000159c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a0, %0" : : "r" (0x21));
    800015a0:	02100793          	li	a5,33
    800015a4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015a8:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800015ac:	00050513          	mv	a0,a0
    return ret;

}
    800015b0:	0005051b          	sext.w	a0,a0
    800015b4:	00813403          	ld	s0,8(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle){
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00813423          	sd	s0,8(sp)
    800015c8:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800015cc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x22));
    800015d0:	02200793          	li	a5,34
    800015d4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015d8:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    800015dc:	00050513          	mv	a0,a0
    return ret;

}
    800015e0:	0005051b          	sext.w	a0,a0
    800015e4:	00813403          	ld	s0,8(sp)
    800015e8:	01010113          	addi	sp,sp,16
    800015ec:	00008067          	ret

00000000800015f0 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id){
    800015f0:	ff010113          	addi	sp,sp,-16
    800015f4:	00813423          	sd	s0,8(sp)
    800015f8:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    800015fc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x23));
    80001600:	02300793          	li	a5,35
    80001604:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001608:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000160c:	00050513          	mv	a0,a0
    return ret;

}
    80001610:	0005051b          	sext.w	a0,a0
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id){
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00813423          	sd	s0,8(sp)
    80001628:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (id));
    8000162c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x24));
    80001630:	02400793          	li	a5,36
    80001634:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001638:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000163c:	00050513          	mv	a0,a0
    return ret;

}
    80001640:	0005051b          	sext.w	a0,a0
    80001644:	00813403          	ld	s0,8(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_Z10time_sleepm>:

int time_sleep(time_t time){
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00813423          	sd	s0,8(sp)
    80001658:	01010413          	addi	s0,sp,16

    int ret = 0;
    __asm__ volatile("mv a1, %0" : : "r" (time));
    8000165c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x31));
    80001660:	03100793          	li	a5,49
    80001664:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001668:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    8000166c:	00050513          	mv	a0,a0
    return ret;
}
    80001670:	0005051b          	sext.w	a0,a0
    80001674:	00813403          	ld	s0,8(sp)
    80001678:	01010113          	addi	sp,sp,16
    8000167c:	00008067          	ret

0000000080001680 <_Z4getcv>:

char getc(){
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00813423          	sd	s0,8(sp)
    80001688:	01010413          	addi	s0,sp,16

    char ret = '0';
    __asm__ volatile("mv a0, %0" : : "r" (0x41));
    8000168c:	04100793          	li	a5,65
    80001690:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001694:	00000073          	ecall
    __asm__ volatile("mv %0, a0": "=r"(ret));
    80001698:	00050513          	mv	a0,a0
    return ret;

}
    8000169c:	0ff57513          	andi	a0,a0,255
    800016a0:	00813403          	ld	s0,8(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_Z4putcc>:

void putc(char c){
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00813423          	sd	s0,8(sp)
    800016b4:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r" (c));
    800016b8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x42));
    800016bc:	04200793          	li	a5,66
    800016c0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016c4:	00000073          	ecall

}
    800016c8:	00813403          	ld	s0,8(sp)
    800016cc:	01010113          	addi	sp,sp,16
    800016d0:	00008067          	ret

00000000800016d4 <_ZL9fibonaccim>:
#include"../lib/hw.h"
//#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../h/kThread.hpp"
static uint64 fibonacci(uint64 n)
{
    800016d4:	fe010113          	addi	sp,sp,-32
    800016d8:	00113c23          	sd	ra,24(sp)
    800016dc:	00813823          	sd	s0,16(sp)
    800016e0:	00913423          	sd	s1,8(sp)
    800016e4:	01213023          	sd	s2,0(sp)
    800016e8:	02010413          	addi	s0,sp,32
    800016ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800016f0:	00100793          	li	a5,1
    800016f4:	02a7f663          	bgeu	a5,a0,80001720 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) kThread::yield();
    800016f8:	00357793          	andi	a5,a0,3
    800016fc:	02078e63          	beqz	a5,80001738 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001700:	fff48513          	addi	a0,s1,-1
    80001704:	00000097          	auipc	ra,0x0
    80001708:	fd0080e7          	jalr	-48(ra) # 800016d4 <_ZL9fibonaccim>
    8000170c:	00050913          	mv	s2,a0
    80001710:	ffe48513          	addi	a0,s1,-2
    80001714:	00000097          	auipc	ra,0x0
    80001718:	fc0080e7          	jalr	-64(ra) # 800016d4 <_ZL9fibonaccim>
    8000171c:	00a90533          	add	a0,s2,a0
}
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	00013903          	ld	s2,0(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret
    if (n % 4 == 0) kThread::yield();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	5f8080e7          	jalr	1528(ra) # 80001d30 <_ZN7kThread5yieldEv>
    80001740:	fc1ff06f          	j	80001700 <_ZL9fibonaccim+0x2c>

0000000080001744 <_Z11workerBodyAPv>:

void workerBodyA(void *)
{
    80001744:	fe010113          	addi	sp,sp,-32
    80001748:	00113c23          	sd	ra,24(sp)
    8000174c:	00813823          	sd	s0,16(sp)
    80001750:	00913423          	sd	s1,8(sp)
    80001754:	01213023          	sd	s2,0(sp)
    80001758:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000175c:	00000493          	li	s1,0
    80001760:	0380006f          	j	80001798 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001764:	00004517          	auipc	a0,0x4
    80001768:	89c50513          	addi	a0,a0,-1892 # 80005000 <kvmincrease+0x730>
    8000176c:	00001097          	auipc	ra,0x1
    80001770:	bf4080e7          	jalr	-1036(ra) # 80002360 <_Z11printStringPKc>
        printInteger(i);
    80001774:	00048513          	mv	a0,s1
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	c2c080e7          	jalr	-980(ra) # 800023a4 <_Z12printIntegerm>
        printString("\n");
    80001780:	00004517          	auipc	a0,0x4
    80001784:	99050513          	addi	a0,a0,-1648 # 80005110 <kvmincrease+0x840>
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	bd8080e7          	jalr	-1064(ra) # 80002360 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001790:	0014849b          	addiw	s1,s1,1
    80001794:	0ff4f493          	andi	s1,s1,255
    80001798:	00200793          	li	a5,2
    8000179c:	fc97f4e3          	bgeu	a5,s1,80001764 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800017a0:	00004517          	auipc	a0,0x4
    800017a4:	86850513          	addi	a0,a0,-1944 # 80005008 <kvmincrease+0x738>
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	bb8080e7          	jalr	-1096(ra) # 80002360 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800017b0:	00700313          	li	t1,7
    kThread::yield();
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	57c080e7          	jalr	1404(ra) # 80001d30 <_ZN7kThread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800017bc:	00030913          	mv	s2,t1

    printString("A: t1=");
    800017c0:	00004517          	auipc	a0,0x4
    800017c4:	85850513          	addi	a0,a0,-1960 # 80005018 <kvmincrease+0x748>
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	b98080e7          	jalr	-1128(ra) # 80002360 <_Z11printStringPKc>
    printInteger(t1);
    800017d0:	00090513          	mv	a0,s2
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	bd0080e7          	jalr	-1072(ra) # 800023a4 <_Z12printIntegerm>
    printString("\n");
    800017dc:	00004517          	auipc	a0,0x4
    800017e0:	93450513          	addi	a0,a0,-1740 # 80005110 <kvmincrease+0x840>
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	b7c080e7          	jalr	-1156(ra) # 80002360 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800017ec:	01400513          	li	a0,20
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	ee4080e7          	jalr	-284(ra) # 800016d4 <_ZL9fibonaccim>
    800017f8:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800017fc:	00004517          	auipc	a0,0x4
    80001800:	82450513          	addi	a0,a0,-2012 # 80005020 <kvmincrease+0x750>
    80001804:	00001097          	auipc	ra,0x1
    80001808:	b5c080e7          	jalr	-1188(ra) # 80002360 <_Z11printStringPKc>
    printInteger(result);
    8000180c:	00090513          	mv	a0,s2
    80001810:	00001097          	auipc	ra,0x1
    80001814:	b94080e7          	jalr	-1132(ra) # 800023a4 <_Z12printIntegerm>
    printString("\n");
    80001818:	00004517          	auipc	a0,0x4
    8000181c:	8f850513          	addi	a0,a0,-1800 # 80005110 <kvmincrease+0x840>
    80001820:	00001097          	auipc	ra,0x1
    80001824:	b40080e7          	jalr	-1216(ra) # 80002360 <_Z11printStringPKc>
    80001828:	0380006f          	j	80001860 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000182c:	00003517          	auipc	a0,0x3
    80001830:	7d450513          	addi	a0,a0,2004 # 80005000 <kvmincrease+0x730>
    80001834:	00001097          	auipc	ra,0x1
    80001838:	b2c080e7          	jalr	-1236(ra) # 80002360 <_Z11printStringPKc>
        printInteger(i);
    8000183c:	00048513          	mv	a0,s1
    80001840:	00001097          	auipc	ra,0x1
    80001844:	b64080e7          	jalr	-1180(ra) # 800023a4 <_Z12printIntegerm>
        printString("\n");
    80001848:	00004517          	auipc	a0,0x4
    8000184c:	8c850513          	addi	a0,a0,-1848 # 80005110 <kvmincrease+0x840>
    80001850:	00001097          	auipc	ra,0x1
    80001854:	b10080e7          	jalr	-1264(ra) # 80002360 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001858:	0014849b          	addiw	s1,s1,1
    8000185c:	0ff4f493          	andi	s1,s1,255
    80001860:	00500793          	li	a5,5
    80001864:	fc97f4e3          	bgeu	a5,s1,8000182c <_Z11workerBodyAPv+0xe8>
    }

    kThread::running->setFinished(true);
    80001868:	00004797          	auipc	a5,0x4
    8000186c:	2907b783          	ld	a5,656(a5) # 80005af8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001870:	0007b783          	ld	a5,0(a5)

public:

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { kThread::finished = finished; }
    80001874:	00100713          	li	a4,1
    80001878:	02e78823          	sb	a4,48(a5)
    kThread::yield();
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	4b4080e7          	jalr	1204(ra) # 80001d30 <_ZN7kThread5yieldEv>
    printString("yee");
    80001884:	00003517          	auipc	a0,0x3
    80001888:	7ac50513          	addi	a0,a0,1964 # 80005030 <kvmincrease+0x760>
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	ad4080e7          	jalr	-1324(ra) # 80002360 <_Z11printStringPKc>
}
    80001894:	01813083          	ld	ra,24(sp)
    80001898:	01013403          	ld	s0,16(sp)
    8000189c:	00813483          	ld	s1,8(sp)
    800018a0:	00013903          	ld	s2,0(sp)
    800018a4:	02010113          	addi	sp,sp,32
    800018a8:	00008067          	ret

00000000800018ac <_Z11workerBodyBPv>:

void workerBodyB(void*)
{
    800018ac:	fe010113          	addi	sp,sp,-32
    800018b0:	00113c23          	sd	ra,24(sp)
    800018b4:	00813823          	sd	s0,16(sp)
    800018b8:	00913423          	sd	s1,8(sp)
    800018bc:	01213023          	sd	s2,0(sp)
    800018c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800018c4:	00a00493          	li	s1,10
    800018c8:	0380006f          	j	80001900 <_Z11workerBodyBPv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800018cc:	00003517          	auipc	a0,0x3
    800018d0:	76c50513          	addi	a0,a0,1900 # 80005038 <kvmincrease+0x768>
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	a8c080e7          	jalr	-1396(ra) # 80002360 <_Z11printStringPKc>
        printInteger(i);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	ac4080e7          	jalr	-1340(ra) # 800023a4 <_Z12printIntegerm>
        printString("\n");
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	82850513          	addi	a0,a0,-2008 # 80005110 <kvmincrease+0x840>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	a70080e7          	jalr	-1424(ra) # 80002360 <_Z11printStringPKc>
    for (; i < 13; i++)
    800018f8:	0014849b          	addiw	s1,s1,1
    800018fc:	0ff4f493          	andi	s1,s1,255
    80001900:	00c00793          	li	a5,12
    80001904:	fc97f4e3          	bgeu	a5,s1,800018cc <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001908:	00003517          	auipc	a0,0x3
    8000190c:	73850513          	addi	a0,a0,1848 # 80005040 <kvmincrease+0x770>
    80001910:	00001097          	auipc	ra,0x1
    80001914:	a50080e7          	jalr	-1456(ra) # 80002360 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001918:	00500313          	li	t1,5
    kThread::yield();
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	414080e7          	jalr	1044(ra) # 80001d30 <_ZN7kThread5yieldEv>

    uint64 result = fibonacci(23);
    80001924:	01700513          	li	a0,23
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	dac080e7          	jalr	-596(ra) # 800016d4 <_ZL9fibonaccim>
    80001930:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001934:	00003517          	auipc	a0,0x3
    80001938:	6ec50513          	addi	a0,a0,1772 # 80005020 <kvmincrease+0x750>
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	a24080e7          	jalr	-1500(ra) # 80002360 <_Z11printStringPKc>
    printInteger(result);
    80001944:	00090513          	mv	a0,s2
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	a5c080e7          	jalr	-1444(ra) # 800023a4 <_Z12printIntegerm>
    printString("\n");
    80001950:	00003517          	auipc	a0,0x3
    80001954:	7c050513          	addi	a0,a0,1984 # 80005110 <kvmincrease+0x840>
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	a08080e7          	jalr	-1528(ra) # 80002360 <_Z11printStringPKc>
    80001960:	0380006f          	j	80001998 <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6d450513          	addi	a0,a0,1748 # 80005038 <kvmincrease+0x768>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	9f4080e7          	jalr	-1548(ra) # 80002360 <_Z11printStringPKc>
        printInteger(i);
    80001974:	00048513          	mv	a0,s1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	a2c080e7          	jalr	-1492(ra) # 800023a4 <_Z12printIntegerm>
        printString("\n");
    80001980:	00003517          	auipc	a0,0x3
    80001984:	79050513          	addi	a0,a0,1936 # 80005110 <kvmincrease+0x840>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	9d8080e7          	jalr	-1576(ra) # 80002360 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001990:	0014849b          	addiw	s1,s1,1
    80001994:	0ff4f493          	andi	s1,s1,255
    80001998:	00f00793          	li	a5,15
    8000199c:	fc97f4e3          	bgeu	a5,s1,80001964 <_Z11workerBodyBPv+0xb8>
    }
    kThread::running->setFinished(true);
    800019a0:	00004797          	auipc	a5,0x4
    800019a4:	1587b783          	ld	a5,344(a5) # 80005af8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019a8:	0007b783          	ld	a5,0(a5)
    800019ac:	00100713          	li	a4,1
    800019b0:	02e78823          	sb	a4,48(a5)
    kThread::yield();
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	37c080e7          	jalr	892(ra) # 80001d30 <_ZN7kThread5yieldEv>

    800019bc:	01813083          	ld	ra,24(sp)
    800019c0:	01013403          	ld	s0,16(sp)
    800019c4:	00813483          	ld	s1,8(sp)
    800019c8:	00013903          	ld	s2,0(sp)
    800019cc:	02010113          	addi	sp,sp,32
    800019d0:	00008067          	ret

00000000800019d4 <_ZN7kThread13threadWrapperEv>:

    kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {
    800019d4:	ff010113          	addi	sp,sp,-16
    800019d8:	00113423          	sd	ra,8(sp)
    800019dc:	00813023          	sd	s0,0(sp)
    800019e0:	01010413          	addi	s0,sp,16

    //Riscv::popSppSpie();
  //  printInteger(100);
    running->body(running->arg);
    800019e4:	00004797          	auipc	a5,0x4
    800019e8:	17c7b783          	ld	a5,380(a5) # 80005b60 <_ZN7kThread7runningE>
    800019ec:	0007b703          	ld	a4,0(a5)
    800019f0:	0087b503          	ld	a0,8(a5)
    800019f4:	000700e7          	jalr	a4
//    kthread_exit();
}
    800019f8:	00813083          	ld	ra,8(sp)
    800019fc:	00013403          	ld	s0,0(sp)
    80001a00:	01010113          	addi	sp,sp,16
    80001a04:	00008067          	ret

0000000080001a08 <_ZN7kThread13createProcessEPFvPvES0_S0_>:
kThread* kThread::createProcess(Body body, void* args, void* stack_space) {
    80001a08:	fd010113          	addi	sp,sp,-48
    80001a0c:	02113423          	sd	ra,40(sp)
    80001a10:	02813023          	sd	s0,32(sp)
    80001a14:	00913c23          	sd	s1,24(sp)
    80001a18:	01213823          	sd	s2,16(sp)
    80001a1c:	01313423          	sd	s3,8(sp)
    80001a20:	01413023          	sd	s4,0(sp)
    80001a24:	03010413          	addi	s0,sp,48
    80001a28:	00050913          	mv	s2,a0
    80001a2c:	00058a13          	mv	s4,a1
    80001a30:	00060993          	mv	s3,a2
    printString("3 arg\n");
    80001a34:	00003517          	auipc	a0,0x3
    80001a38:	61c50513          	addi	a0,a0,1564 # 80005050 <kvmincrease+0x780>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	924080e7          	jalr	-1756(ra) # 80002360 <_Z11printStringPKc>
    return new kThread(body,args, stack_space); //ne mogu ovako da ga kreiram, al to cu popraviti sledece
    80001a44:	03800513          	li	a0,56
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	4b0080e7          	jalr	1200(ra) # 80001ef8 <_Znwm>
    80001a50:	00050493          	mv	s1,a0
            arg(arg),
            //stack(body!= nullptr ?(uint64*)stack_space + DEFAULT_STACK_SIZE : nullptr),
            stack(body!= nullptr ? new uint64[4096]: nullptr),
            context({body!=nullptr?(uint64)threadWrapper : 0,
                     stack_space != nullptr ? (uint64) &stack[4096] : 0 }),
            finished(false)
    80001a54:	01253023          	sd	s2,0(a0)
    80001a58:	01453423          	sd	s4,8(a0)
            stack(body!= nullptr ? new uint64[4096]: nullptr),
    80001a5c:	00090a63          	beqz	s2,80001a70 <_ZN7kThread13createProcessEPFvPvES0_S0_+0x68>
    80001a60:	00008537          	lui	a0,0x8
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	4bc080e7          	jalr	1212(ra) # 80001f20 <_Znam>
    80001a6c:	0080006f          	j	80001a74 <_ZN7kThread13createProcessEPFvPvES0_S0_+0x6c>
    80001a70:	00000513          	li	a0,0
            finished(false)
    80001a74:	00a4bc23          	sd	a0,24(s1)
            context({body!=nullptr?(uint64)threadWrapper : 0,
    80001a78:	02090c63          	beqz	s2,80001ab0 <_ZN7kThread13createProcessEPFvPvES0_S0_+0xa8>
    80001a7c:	00000797          	auipc	a5,0x0
    80001a80:	f5878793          	addi	a5,a5,-168 # 800019d4 <_ZN7kThread13threadWrapperEv>
            finished(false)
    80001a84:	02f4b023          	sd	a5,32(s1)
                     stack_space != nullptr ? (uint64) &stack[4096] : 0 }),
    80001a88:	02098863          	beqz	s3,80001ab8 <_ZN7kThread13createProcessEPFvPvES0_S0_+0xb0>
    80001a8c:	000087b7          	lui	a5,0x8
    80001a90:	00f50533          	add	a0,a0,a5
            finished(false)
    80001a94:	02a4b423          	sd	a0,40(s1)
    80001a98:	02048823          	sb	zero,48(s1)

    {
        if(body != nullptr) { kScheduler::put(this);}
    80001a9c:	04090063          	beqz	s2,80001adc <_ZN7kThread13createProcessEPFvPvES0_S0_+0xd4>
    80001aa0:	00048513          	mv	a0,s1
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	81c080e7          	jalr	-2020(ra) # 800022c0 <_ZN10kScheduler3putEP7kThread>
    80001aac:	0300006f          	j	80001adc <_ZN7kThread13createProcessEPFvPvES0_S0_+0xd4>
            context({body!=nullptr?(uint64)threadWrapper : 0,
    80001ab0:	00000793          	li	a5,0
    80001ab4:	fd1ff06f          	j	80001a84 <_ZN7kThread13createProcessEPFvPvES0_S0_+0x7c>
                     stack_space != nullptr ? (uint64) &stack[4096] : 0 }),
    80001ab8:	00000513          	li	a0,0
    80001abc:	fd9ff06f          	j	80001a94 <_ZN7kThread13createProcessEPFvPvES0_S0_+0x8c>
    80001ac0:	00050913          	mv	s2,a0
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	480080e7          	jalr	1152(ra) # 80001f48 <_ZdlPv>
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	00005097          	auipc	ra,0x5
    80001ad8:	174080e7          	jalr	372(ra) # 80006c48 <_Unwind_Resume>
}
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	02813083          	ld	ra,40(sp)
    80001ae4:	02013403          	ld	s0,32(sp)
    80001ae8:	01813483          	ld	s1,24(sp)
    80001aec:	01013903          	ld	s2,16(sp)
    80001af0:	00813983          	ld	s3,8(sp)
    80001af4:	00013a03          	ld	s4,0(sp)
    80001af8:	03010113          	addi	sp,sp,48
    80001afc:	00008067          	ret

0000000080001b00 <_ZN7kThread13createProcessEPFvPvES0_>:
kThread* kThread::createProcess(Body body, void* args) {
    80001b00:	fd010113          	addi	sp,sp,-48
    80001b04:	02113423          	sd	ra,40(sp)
    80001b08:	02813023          	sd	s0,32(sp)
    80001b0c:	00913c23          	sd	s1,24(sp)
    80001b10:	01213823          	sd	s2,16(sp)
    80001b14:	01313423          	sd	s3,8(sp)
    80001b18:	03010413          	addi	s0,sp,48
    80001b1c:	00050913          	mv	s2,a0
    80001b20:	00058993          	mv	s3,a1
    printString("2 arg\n");
    80001b24:	00003517          	auipc	a0,0x3
    80001b28:	53450513          	addi	a0,a0,1332 # 80005058 <kvmincrease+0x788>
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	834080e7          	jalr	-1996(ra) # 80002360 <_Z11printStringPKc>
    return new kThread(body,args); //ne mogu ovako da ga kreiram, al to cu popraviti sledece
    80001b34:	03800513          	li	a0,56
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	3c0080e7          	jalr	960(ra) # 80001ef8 <_Znwm>
    80001b40:	00050493          	mv	s1,a0
            finished(false)
    80001b44:	01253023          	sd	s2,0(a0)
    80001b48:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[1024] : nullptr),
    80001b4c:	00090a63          	beqz	s2,80001b60 <_ZN7kThread13createProcessEPFvPvES0_+0x60>
    80001b50:	00002537          	lui	a0,0x2
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	3cc080e7          	jalr	972(ra) # 80001f20 <_Znam>
    80001b5c:	0080006f          	j	80001b64 <_ZN7kThread13createProcessEPFvPvES0_+0x64>
    80001b60:	00000513          	li	a0,0
            finished(false)
    80001b64:	00a4bc23          	sd	a0,24(s1)
            context({body!=nullptr?(uint64)threadWrapper: 0,
    80001b68:	02090c63          	beqz	s2,80001ba0 <_ZN7kThread13createProcessEPFvPvES0_+0xa0>
    80001b6c:	00000797          	auipc	a5,0x0
    80001b70:	e6878793          	addi	a5,a5,-408 # 800019d4 <_ZN7kThread13threadWrapperEv>
            finished(false)
    80001b74:	02f4b023          	sd	a5,32(s1)
                     body != nullptr ? (uint64) &stack[1024] : 0 }),
    80001b78:	02090863          	beqz	s2,80001ba8 <_ZN7kThread13createProcessEPFvPvES0_+0xa8>
    80001b7c:	000027b7          	lui	a5,0x2
    80001b80:	00f50533          	add	a0,a0,a5
            finished(false)
    80001b84:	02a4b423          	sd	a0,40(s1)
    80001b88:	02048823          	sb	zero,48(s1)
        if(body != nullptr) { kScheduler::put(this);}
    80001b8c:	04090063          	beqz	s2,80001bcc <_ZN7kThread13createProcessEPFvPvES0_+0xcc>
    80001b90:	00048513          	mv	a0,s1
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	72c080e7          	jalr	1836(ra) # 800022c0 <_ZN10kScheduler3putEP7kThread>
    80001b9c:	0300006f          	j	80001bcc <_ZN7kThread13createProcessEPFvPvES0_+0xcc>
            context({body!=nullptr?(uint64)threadWrapper: 0,
    80001ba0:	00000793          	li	a5,0
    80001ba4:	fd1ff06f          	j	80001b74 <_ZN7kThread13createProcessEPFvPvES0_+0x74>
                     body != nullptr ? (uint64) &stack[1024] : 0 }),
    80001ba8:	00000513          	li	a0,0
    80001bac:	fd9ff06f          	j	80001b84 <_ZN7kThread13createProcessEPFvPvES0_+0x84>
    80001bb0:	00050913          	mv	s2,a0
    80001bb4:	00048513          	mv	a0,s1
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	390080e7          	jalr	912(ra) # 80001f48 <_ZdlPv>
    80001bc0:	00090513          	mv	a0,s2
    80001bc4:	00005097          	auipc	ra,0x5
    80001bc8:	084080e7          	jalr	132(ra) # 80006c48 <_Unwind_Resume>
}
    80001bcc:	00048513          	mv	a0,s1
    80001bd0:	02813083          	ld	ra,40(sp)
    80001bd4:	02013403          	ld	s0,32(sp)
    80001bd8:	01813483          	ld	s1,24(sp)
    80001bdc:	01013903          	ld	s2,16(sp)
    80001be0:	00813983          	ld	s3,8(sp)
    80001be4:	03010113          	addi	sp,sp,48
    80001be8:	00008067          	ret

0000000080001bec <_ZN7kThread13createProcessEPFvPvE>:
kThread* kThread::createProcess(Body body) {
    80001bec:	fe010113          	addi	sp,sp,-32
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	00813823          	sd	s0,16(sp)
    80001bf8:	00913423          	sd	s1,8(sp)
    80001bfc:	01213023          	sd	s2,0(sp)
    80001c00:	02010413          	addi	s0,sp,32
    80001c04:	00050913          	mv	s2,a0
    printString("1 arg\n");
    80001c08:	00003517          	auipc	a0,0x3
    80001c0c:	45850513          	addi	a0,a0,1112 # 80005060 <kvmincrease+0x790>
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	750080e7          	jalr	1872(ra) # 80002360 <_Z11printStringPKc>
        return new kThread(body); //ne mogu ovako da ga kreiram, al to cu popraviti sledece
    80001c18:	03800513          	li	a0,56
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	2dc080e7          	jalr	732(ra) # 80001ef8 <_Znwm>
    80001c24:	00050493          	mv	s1,a0
            finished(false)
    80001c28:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[1024] : nullptr),
    80001c2c:	00090a63          	beqz	s2,80001c40 <_ZN7kThread13createProcessEPFvPvE+0x54>
    80001c30:	00002537          	lui	a0,0x2
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	2ec080e7          	jalr	748(ra) # 80001f20 <_Znam>
    80001c3c:	0080006f          	j	80001c44 <_ZN7kThread13createProcessEPFvPvE+0x58>
    80001c40:	00000513          	li	a0,0
            finished(false)
    80001c44:	00a4bc23          	sd	a0,24(s1)
            context({body!=nullptr?(uint64)threadWrapper: 0,
    80001c48:	02090c63          	beqz	s2,80001c80 <_ZN7kThread13createProcessEPFvPvE+0x94>
    80001c4c:	00000797          	auipc	a5,0x0
    80001c50:	d8878793          	addi	a5,a5,-632 # 800019d4 <_ZN7kThread13threadWrapperEv>
            finished(false)
    80001c54:	02f4b023          	sd	a5,32(s1)
                     body != nullptr ? (uint64) &stack[1024] : 0 }),
    80001c58:	02090863          	beqz	s2,80001c88 <_ZN7kThread13createProcessEPFvPvE+0x9c>
    80001c5c:	000027b7          	lui	a5,0x2
    80001c60:	00f50533          	add	a0,a0,a5
            finished(false)
    80001c64:	02a4b423          	sd	a0,40(s1)
    80001c68:	02048823          	sb	zero,48(s1)
        if(body != nullptr) { kScheduler::put(this);}
    80001c6c:	04090063          	beqz	s2,80001cac <_ZN7kThread13createProcessEPFvPvE+0xc0>
    80001c70:	00048513          	mv	a0,s1
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	64c080e7          	jalr	1612(ra) # 800022c0 <_ZN10kScheduler3putEP7kThread>
    80001c7c:	0300006f          	j	80001cac <_ZN7kThread13createProcessEPFvPvE+0xc0>
            context({body!=nullptr?(uint64)threadWrapper: 0,
    80001c80:	00000793          	li	a5,0
    80001c84:	fd1ff06f          	j	80001c54 <_ZN7kThread13createProcessEPFvPvE+0x68>
                     body != nullptr ? (uint64) &stack[1024] : 0 }),
    80001c88:	00000513          	li	a0,0
    80001c8c:	fd9ff06f          	j	80001c64 <_ZN7kThread13createProcessEPFvPvE+0x78>
    80001c90:	00050913          	mv	s2,a0
    80001c94:	00048513          	mv	a0,s1
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	2b0080e7          	jalr	688(ra) # 80001f48 <_ZdlPv>
    80001ca0:	00090513          	mv	a0,s2
    80001ca4:	00005097          	auipc	ra,0x5
    80001ca8:	fa4080e7          	jalr	-92(ra) # 80006c48 <_Unwind_Resume>
}
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	01813083          	ld	ra,24(sp)
    80001cb4:	01013403          	ld	s0,16(sp)
    80001cb8:	00813483          	ld	s1,8(sp)
    80001cbc:	00013903          	ld	s2,0(sp)
    80001cc0:	02010113          	addi	sp,sp,32
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN7kThread8dispatchEv>:
{
    80001cc8:	fe010113          	addi	sp,sp,-32
    80001ccc:	00113c23          	sd	ra,24(sp)
    80001cd0:	00813823          	sd	s0,16(sp)
    80001cd4:	00913423          	sd	s1,8(sp)
    80001cd8:	02010413          	addi	s0,sp,32
    kThread *old = running;
    80001cdc:	00004497          	auipc	s1,0x4
    80001ce0:	e844b483          	ld	s1,-380(s1) # 80005b60 <_ZN7kThread7runningE>
    inline bool isFinished() const { return finished; }
    80001ce4:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { kScheduler::put(old); }
    80001ce8:	02078c63          	beqz	a5,80001d20 <_ZN7kThread8dispatchEv+0x58>
    running = kScheduler::get();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	56c080e7          	jalr	1388(ra) # 80002258 <_ZN10kScheduler3getEv>
    80001cf4:	00004797          	auipc	a5,0x4
    80001cf8:	e6a7b623          	sd	a0,-404(a5) # 80005b60 <_ZN7kThread7runningE>
    kThread::contextSwitch(&old->context, &running->context);
    80001cfc:	02050593          	addi	a1,a0,32 # 2020 <_entry-0x7fffdfe0>
    80001d00:	02048513          	addi	a0,s1,32
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	6e0080e7          	jalr	1760(ra) # 800013e4 <_ZN7kThread13contextSwitchEPNS_7ContextES1_>
}
    80001d0c:	01813083          	ld	ra,24(sp)
    80001d10:	01013403          	ld	s0,16(sp)
    80001d14:	00813483          	ld	s1,8(sp)
    80001d18:	02010113          	addi	sp,sp,32
    80001d1c:	00008067          	ret
    if (!old->isFinished()) { kScheduler::put(old); }
    80001d20:	00048513          	mv	a0,s1
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	59c080e7          	jalr	1436(ra) # 800022c0 <_ZN10kScheduler3putEP7kThread>
    80001d2c:	fc1ff06f          	j	80001cec <_ZN7kThread8dispatchEv+0x24>

0000000080001d30 <_ZN7kThread5yieldEv>:
{
    80001d30:	ff010113          	addi	sp,sp,-16
    80001d34:	00113423          	sd	ra,8(sp)
    80001d38:	00813023          	sd	s0,0(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	2c0080e7          	jalr	704(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    kThread::dispatch();
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	f80080e7          	jalr	-128(ra) # 80001cc8 <_ZN7kThread8dispatchEv>
    Riscv::popRegisters();
    80001d50:	fffff097          	auipc	ra,0xfffff
    80001d54:	32c080e7          	jalr	812(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001d58:	00813083          	ld	ra,8(sp)
    80001d5c:	00013403          	ld	s0,0(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZN7kThread12kthread_exitEv>:

void kThread::kthread_exit() {
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813423          	sd	s0,8(sp)
    80001d70:	01010413          	addi	s0,sp,16

}
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <main>:
#include "../h/workers.hpp"

extern "C" { extern int __supervisorTrap;}

int main()
{
    80001d80:	fc010113          	addi	sp,sp,-64
    80001d84:	02113c23          	sd	ra,56(sp)
    80001d88:	02813823          	sd	s0,48(sp)
    80001d8c:	02913423          	sd	s1,40(sp)
    80001d90:	03213023          	sd	s2,32(sp)
    80001d94:	04010413          	addi	s0,sp,64


   __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
    80001d98:	00004797          	auipc	a5,0x4
    80001d9c:	d707b783          	ld	a5,-656(a5) # 80005b08 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001da0:	0017e793          	ori	a5,a5,1
    80001da4:	10579073          	csrw	stvec,a5
    //printInteger(-120);
//    ret = test(13);
//    printInteger(ret);
//    printString(" test done\n");
//
    void* ptrA = mem_alloc(4096);
    80001da8:	00001537          	lui	a0,0x1
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	67c080e7          	jalr	1660(ra) # 80001428 <_Z9mem_allocm>
    80001db4:	00050913          	mv	s2,a0
    uint64 intPtr = (uint64)(ptrA);
    printHex(intPtr);
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	67c080e7          	jalr	1660(ra) # 80002434 <_Z8printHexm>
    printString(" mem_alloc done\n");
    80001dc0:	00003517          	auipc	a0,0x3
    80001dc4:	2a850513          	addi	a0,a0,680 # 80005068 <kvmincrease+0x798>
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	598080e7          	jalr	1432(ra) # 80002360 <_Z11printStringPKc>

    void* ptrB = mem_alloc(4096);
    80001dd0:	00001537          	lui	a0,0x1
    80001dd4:	fffff097          	auipc	ra,0xfffff
    80001dd8:	654080e7          	jalr	1620(ra) # 80001428 <_Z9mem_allocm>
    80001ddc:	00050493          	mv	s1,a0
    intPtr = (uint64)(ptrB);
    printHex(intPtr);
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	654080e7          	jalr	1620(ra) # 80002434 <_Z8printHexm>
    printString(" mem_alloc done\n");
    80001de8:	00003517          	auipc	a0,0x3
    80001dec:	28050513          	addi	a0,a0,640 # 80005068 <kvmincrease+0x798>
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	570080e7          	jalr	1392(ra) # 80002360 <_Z11printStringPKc>
//    ret = mem_free(ptr);
//    printInteger(ret);
//    printString(" mem_free done\n");

    kThread* threads[3];
    threads[0] = kThread::createProcess(nullptr);
    80001df8:	00000513          	li	a0,0
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	df0080e7          	jalr	-528(ra) # 80001bec <_ZN7kThread13createProcessEPFvPvE>
    80001e04:	fca43423          	sd	a0,-56(s0)
    kThread::running = threads[0];
    80001e08:	00004797          	auipc	a5,0x4
    80001e0c:	cf07b783          	ld	a5,-784(a5) # 80005af8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e10:	00a7b023          	sd	a0,0(a5)


    //threads[1] = kThread::createProcess(workerBodyA, nullptr);
    threads[1] = kThread::createProcess(workerBodyA, nullptr, ptrA);
    80001e14:	00090613          	mv	a2,s2
    80001e18:	00000593          	li	a1,0
    80001e1c:	00004517          	auipc	a0,0x4
    80001e20:	ce453503          	ld	a0,-796(a0) # 80005b00 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	be4080e7          	jalr	-1052(ra) # 80001a08 <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001e2c:	fca43823          	sd	a0,-48(s0)
    printString("CoroutineA created\n");
    80001e30:	00003517          	auipc	a0,0x3
    80001e34:	25050513          	addi	a0,a0,592 # 80005080 <kvmincrease+0x7b0>
    80001e38:	00000097          	auipc	ra,0x0
    80001e3c:	528080e7          	jalr	1320(ra) # 80002360 <_Z11printStringPKc>
    //threads[2] = kThread::createProcess(workerBodyB, nullptr);
    threads[2] = kThread::createProcess(workerBodyB, nullptr, ptrB);
    80001e40:	00048613          	mv	a2,s1
    80001e44:	00000593          	li	a1,0
    80001e48:	00004517          	auipc	a0,0x4
    80001e4c:	cc853503          	ld	a0,-824(a0) # 80005b10 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	bb8080e7          	jalr	-1096(ra) # 80001a08 <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001e58:	fca43c23          	sd	a0,-40(s0)
    printString("CoroutineB created\n");
    80001e5c:	00003517          	auipc	a0,0x3
    80001e60:	23c50513          	addi	a0,a0,572 # 80005098 <kvmincrease+0x7c8>
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	4fc080e7          	jalr	1276(ra) # 80002360 <_Z11printStringPKc>
    80001e6c:	00c0006f          	j	80001e78 <main+0xf8>

    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    {
        kThread::yield();
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	ec0080e7          	jalr	-320(ra) # 80001d30 <_ZN7kThread5yieldEv>
    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    80001e78:	fd043783          	ld	a5,-48(s0)
    80001e7c:	0307c783          	lbu	a5,48(a5)
    80001e80:	fe0788e3          	beqz	a5,80001e70 <main+0xf0>
    80001e84:	fd843783          	ld	a5,-40(s0)
    80001e88:	0307c783          	lbu	a5,48(a5)
    80001e8c:	fe0782e3          	beqz	a5,80001e70 <main+0xf0>
    80001e90:	fc840493          	addi	s1,s0,-56
    80001e94:	0140006f          	j	80001ea8 <main+0x128>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001e98:	00090513          	mv	a0,s2
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	0ac080e7          	jalr	172(ra) # 80001f48 <_ZdlPv>
    for (auto &thread: threads)
    80001ea4:	00848493          	addi	s1,s1,8
    80001ea8:	fe040793          	addi	a5,s0,-32
    80001eac:	02f48063          	beq	s1,a5,80001ecc <main+0x14c>
        delete thread;
    80001eb0:	0004b903          	ld	s2,0(s1)
    80001eb4:	fe0908e3          	beqz	s2,80001ea4 <main+0x124>
    ~kThread() { delete[] stack; }
    80001eb8:	01893503          	ld	a0,24(s2)
    80001ebc:	fc050ee3          	beqz	a0,80001e98 <main+0x118>
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	0b0080e7          	jalr	176(ra) # 80001f70 <_ZdaPv>
    80001ec8:	fd1ff06f          	j	80001e98 <main+0x118>
    }

    printString("Main exit\n");
    80001ecc:	00003517          	auipc	a0,0x3
    80001ed0:	1e450513          	addi	a0,a0,484 # 800050b0 <kvmincrease+0x7e0>
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	48c080e7          	jalr	1164(ra) # 80002360 <_Z11printStringPKc>
//        delete coroutine;
//    }
//    printString("Finished\n");
//
//    return 0;
}
    80001edc:	00000513          	li	a0,0
    80001ee0:	03813083          	ld	ra,56(sp)
    80001ee4:	03013403          	ld	s0,48(sp)
    80001ee8:	02813483          	ld	s1,40(sp)
    80001eec:	02013903          	ld	s2,32(sp)
    80001ef0:	04010113          	addi	sp,sp,64
    80001ef4:	00008067          	ret

0000000080001ef8 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00113423          	sd	ra,8(sp)
    80001f00:	00813023          	sd	s0,0(sp)
    80001f04:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001f08:	00002097          	auipc	ra,0x2
    80001f0c:	750080e7          	jalr	1872(ra) # 80004658 <__mem_alloc>
}
    80001f10:	00813083          	ld	ra,8(sp)
    80001f14:	00013403          	ld	s0,0(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_Znam>:

void *operator new[](size_t n)
{
    80001f20:	ff010113          	addi	sp,sp,-16
    80001f24:	00113423          	sd	ra,8(sp)
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001f30:	00002097          	auipc	ra,0x2
    80001f34:	728080e7          	jalr	1832(ra) # 80004658 <__mem_alloc>
}
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001f58:	00002097          	auipc	ra,0x2
    80001f5c:	634080e7          	jalr	1588(ra) # 8000458c <__mem_free>
}
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	01010113          	addi	sp,sp,16
    80001f6c:	00008067          	ret

0000000080001f70 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00113423          	sd	ra,8(sp)
    80001f78:	00813023          	sd	s0,0(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001f80:	00002097          	auipc	ra,0x2
    80001f84:	60c080e7          	jalr	1548(ra) # 8000458c <__mem_free>
    80001f88:	00813083          	ld	ra,8(sp)
    80001f8c:	00013403          	ld	s0,0(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/mem.h"

using Body = void (*)(void *);

void Riscv::popSppSpie()
{
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra"); // sepc <=ra
    80001fa4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001fa8:	10200073          	sret
}
    80001fac:	00813403          	ld	s0,8(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN5Riscv13handleSyscallEv>:

void Riscv::handleSyscall() {
    80001fb8:	fa010113          	addi	sp,sp,-96
    80001fbc:	04113c23          	sd	ra,88(sp)
    80001fc0:	04813823          	sd	s0,80(sp)
    80001fc4:	04913423          	sd	s1,72(sp)
    80001fc8:	06010413          	addi	s0,sp,96

    //uzimam parametre
    uint64 a0, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001fcc:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001fd0:	00058793          	mv	a5,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001fd4:	00060793          	mv	a5,a2
    __asm__ volatile("mv %0, a4" : "=r"(a3));
    80001fd8:	00070793          	mv	a5,a4
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001fdc:	00070793          	mv	a5,a4
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001fe0:	142027f3          	csrr	a5,scause
    80001fe4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001fe8:	fb843483          	ld	s1,-72(s0)

    uint64  scause = r_scause();

    //ecall iz korisnickog, ecall iz sistemskog rezima
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)//syscall
    80001fec:	ff848713          	addi	a4,s1,-8
    80001ff0:	00100793          	li	a5,1
    80001ff4:	0ce7f263          	bgeu	a5,a4,800020b8 <_ZN5Riscv13handleSyscallEv+0x100>

    }
    else

    {
        if(scause == 0x0000000000000002UL)
    80001ff8:	00200793          	li	a5,2
    80001ffc:	14f48863          	beq	s1,a5,8000214c <_ZN5Riscv13handleSyscallEv+0x194>
            printString("Ilegalna instrukcija\n:");
        else if (scause == 0x0000000000000005UL)
    80002000:	00500793          	li	a5,5
    80002004:	14f48e63          	beq	s1,a5,80002160 <_ZN5Riscv13handleSyscallEv+0x1a8>
            printString("Nedozvolena adresa citanja\n");
        else if (scause == 0x0000000000000007UL)
    80002008:	00700793          	li	a5,7
    8000200c:	16f48463          	beq	s1,a5,80002174 <_ZN5Riscv13handleSyscallEv+0x1bc>
            printString("Nedozvolena adresa upisa\n");


        printString("scause: ");
    80002010:	00003517          	auipc	a0,0x3
    80002014:	10850513          	addi	a0,a0,264 # 80005118 <kvmincrease+0x848>
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	348080e7          	jalr	840(ra) # 80002360 <_Z11printStringPKc>
        printInteger(scause);
    80002020:	00048513          	mv	a0,s1
    80002024:	00000097          	auipc	ra,0x0
    80002028:	380080e7          	jalr	896(ra) # 800023a4 <_Z12printIntegerm>
        printString("\n");
    8000202c:	00003517          	auipc	a0,0x3
    80002030:	0e450513          	addi	a0,a0,228 # 80005110 <kvmincrease+0x840>
    80002034:	00000097          	auipc	ra,0x0
    80002038:	32c080e7          	jalr	812(ra) # 80002360 <_Z11printStringPKc>
        printString("sepc: ");
    8000203c:	00003517          	auipc	a0,0x3
    80002040:	0ec50513          	addi	a0,a0,236 # 80005128 <kvmincrease+0x858>
    80002044:	00000097          	auipc	ra,0x0
    80002048:	31c080e7          	jalr	796(ra) # 80002360 <_Z11printStringPKc>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000204c:	141027f3          	csrr	a5,sepc
    80002050:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002054:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	34c080e7          	jalr	844(ra) # 800023a4 <_Z12printIntegerm>
        printString("\n");
    80002060:	00003517          	auipc	a0,0x3
    80002064:	0b050513          	addi	a0,a0,176 # 80005110 <kvmincrease+0x840>
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	2f8080e7          	jalr	760(ra) # 80002360 <_Z11printStringPKc>
        printString("stval: ");
    80002070:	00003517          	auipc	a0,0x3
    80002074:	0c050513          	addi	a0,a0,192 # 80005130 <kvmincrease+0x860>
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	2e8080e7          	jalr	744(ra) # 80002360 <_Z11printStringPKc>
}

inline uint64 Riscv::r_stval()
{
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002080:	143027f3          	csrr	a5,stval
    80002084:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80002088:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	318080e7          	jalr	792(ra) # 800023a4 <_Z12printIntegerm>
        printString("\n");
    80002094:	00003517          	auipc	a0,0x3
    80002098:	07c50513          	addi	a0,a0,124 # 80005110 <kvmincrease+0x840>
    8000209c:	00000097          	auipc	ra,0x0
    800020a0:	2c4080e7          	jalr	708(ra) # 80002360 <_Z11printStringPKc>
        //while(1);
    }
}
    800020a4:	05813083          	ld	ra,88(sp)
    800020a8:	05013403          	ld	s0,80(sp)
    800020ac:	04813483          	ld	s1,72(sp)
    800020b0:	06010113          	addi	sp,sp,96
    800020b4:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020b8:	141027f3          	csrr	a5,sepc
    800020bc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800020c0:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+ 4; // jer pc pokazuje na trenutnu instrukciju tj ecall, a po povratku treba da sksocim na  sledecu da se ne bih vrtela vecno
    800020c4:	00478793          	addi	a5,a5,4
    800020c8:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020cc:	100027f3          	csrr	a5,sstatus
    800020d0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800020d4:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus(); // kupim vrednost statusnog registra
    800020d8:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a0" : "=r"(syscall));
    800020dc:	00050793          	mv	a5,a0
        switch(syscall)
    800020e0:	00200713          	li	a4,2
    800020e4:	04e78263          	beq	a5,a4,80002128 <_ZN5Riscv13handleSyscallEv+0x170>
    800020e8:	05500713          	li	a4,85
    800020ec:	04e78863          	beq	a5,a4,8000213c <_ZN5Riscv13handleSyscallEv+0x184>
    800020f0:	00100713          	li	a4,1
    800020f4:	00e78e63          	beq	a5,a4,80002110 <_ZN5Riscv13handleSyscallEv+0x158>
        __asm__ volatile("sd a0, 80(fp)"); //resava mi problem sa a0 (skontaj sta si tu radila)
    800020f8:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    800020fc:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002100:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002104:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002108:	14179073          	csrw	sepc,a5
}
    8000210c:	f99ff06f          	j	800020a4 <_ZN5Riscv13handleSyscallEv+0xec>
                __asm__ volatile("mv %0, a1":"=r"(size));
    80002110:	00058513          	mv	a0,a1
                ptr = __mem_alloc(size);
    80002114:	00651513          	slli	a0,a0,0x6
    80002118:	00002097          	auipc	ra,0x2
    8000211c:	540080e7          	jalr	1344(ra) # 80004658 <__mem_alloc>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80002120:	00050513          	mv	a0,a0
                break;
    80002124:	fd5ff06f          	j	800020f8 <_ZN5Riscv13handleSyscallEv+0x140>
                __asm__ volatile("mv %0, a1": "=r"(ptr));
    80002128:	00058513          	mv	a0,a1
                ret = __mem_free(ptr);
    8000212c:	00002097          	auipc	ra,0x2
    80002130:	460080e7          	jalr	1120(ra) # 8000458c <__mem_free>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002134:	00050513          	mv	a0,a0
                break;
    80002138:	fc1ff06f          	j	800020f8 <_ZN5Riscv13handleSyscallEv+0x140>
                __asm__ volatile("mv %0, a1":"=r"(arg));
    8000213c:	00058793          	mv	a5,a1
                arg += 6;
    80002140:	0067879b          	addiw	a5,a5,6
                __asm__ volatile("mv a0, %0"::"r"(arg));
    80002144:	00078513          	mv	a0,a5
                break;
    80002148:	fb1ff06f          	j	800020f8 <_ZN5Riscv13handleSyscallEv+0x140>
            printString("Ilegalna instrukcija\n:");
    8000214c:	00003517          	auipc	a0,0x3
    80002150:	f7450513          	addi	a0,a0,-140 # 800050c0 <kvmincrease+0x7f0>
    80002154:	00000097          	auipc	ra,0x0
    80002158:	20c080e7          	jalr	524(ra) # 80002360 <_Z11printStringPKc>
    8000215c:	eb5ff06f          	j	80002010 <_ZN5Riscv13handleSyscallEv+0x58>
            printString("Nedozvolena adresa citanja\n");
    80002160:	00003517          	auipc	a0,0x3
    80002164:	f7850513          	addi	a0,a0,-136 # 800050d8 <kvmincrease+0x808>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	1f8080e7          	jalr	504(ra) # 80002360 <_Z11printStringPKc>
    80002170:	ea1ff06f          	j	80002010 <_ZN5Riscv13handleSyscallEv+0x58>
            printString("Nedozvolena adresa upisa\n");
    80002174:	00003517          	auipc	a0,0x3
    80002178:	f8450513          	addi	a0,a0,-124 # 800050f8 <kvmincrease+0x828>
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	1e4080e7          	jalr	484(ra) # 80002360 <_Z11printStringPKc>
    80002184:	e8dff06f          	j	80002010 <_ZN5Riscv13handleSyscallEv+0x58>

0000000080002188 <_ZN5Riscv20handleTimerInterruptEv>:
void Riscv::handleTimerInterrupt() {
    80002188:	fd010113          	addi	sp,sp,-48
    8000218c:	02813423          	sd	s0,40(sp)
    80002190:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002194:	00200793          	li	a5,2
    80002198:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000219c:	141027f3          	csrr	a5,sepc
    800021a0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800021a4:	fd843783          	ld	a5,-40(s0)

    mc_sip(SIP_SSIP); //zasto ovo?? - ni ne radim vrv

    uint64 volatile sepc = r_sepc();
    800021a8:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021ac:	100027f3          	csrr	a5,sstatus
    800021b0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800021b4:	fd043783          	ld	a5,-48(s0)
    uint64 volatile sstatus = r_sstatus();
    800021b8:	fef43023          	sd	a5,-32(s0)
    w_sstatus(sstatus);
    800021bc:	fe043783          	ld	a5,-32(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800021c0:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    800021c4:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021c8:	14179073          	csrw	sepc,a5
}
    800021cc:	02813403          	ld	s0,40(sp)
    800021d0:	03010113          	addi	sp,sp,48
    800021d4:	00008067          	ret

00000000800021d8 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00113423          	sd	ra,8(sp)
    800021e0:	00813023          	sd	s0,0(sp)
    800021e4:	01010413          	addi	s0,sp,16
    console_handler();
    800021e8:	00002097          	auipc	ra,0x2
    800021ec:	63c080e7          	jalr	1596(ra) # 80004824 <console_handler>
}
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret

0000000080002200 <_ZN5Riscv14handleBadCauseEv>:

void Riscv::handleBadCause() {
    80002200:	ff010113          	addi	sp,sp,-16
    80002204:	00813423          	sd	s0,8(sp)
    80002208:	01010413          	addi	s0,sp,16

    8000220c:	00813403          	ld	s0,8(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret

0000000080002218 <_Z41__static_initialization_and_destruction_0ii>:

void kScheduler::put(kThread* thr)
{

    readyProcessQueue.addLast(thr);
}
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00813423          	sd	s0,8(sp)
    80002220:	01010413          	addi	s0,sp,16
    80002224:	00100793          	li	a5,1
    80002228:	00f50863          	beq	a0,a5,80002238 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000222c:	00813403          	ld	s0,8(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret
    80002238:	000107b7          	lui	a5,0x10
    8000223c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002240:	fef596e3          	bne	a1,a5,8000222c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002244:	00004797          	auipc	a5,0x4
    80002248:	92478793          	addi	a5,a5,-1756 # 80005b68 <_ZN10kScheduler17readyProcessQueueE>
    8000224c:	0007b023          	sd	zero,0(a5)
    80002250:	0007b423          	sd	zero,8(a5)
    80002254:	fd9ff06f          	j	8000222c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002258 <_ZN10kScheduler3getEv>:
{
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000226c:	00004517          	auipc	a0,0x4
    80002270:	8fc53503          	ld	a0,-1796(a0) # 80005b68 <_ZN10kScheduler17readyProcessQueueE>
    80002274:	04050263          	beqz	a0,800022b8 <_ZN10kScheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002278:	00853783          	ld	a5,8(a0)
    8000227c:	00004717          	auipc	a4,0x4
    80002280:	8ef73623          	sd	a5,-1812(a4) # 80005b68 <_ZN10kScheduler17readyProcessQueueE>
        if (!head) { tail = 0; }
    80002284:	02078463          	beqz	a5,800022ac <_ZN10kScheduler3getEv+0x54>

        T *ret = elem->data;
    80002288:	00053483          	ld	s1,0(a0)
        delete elem;
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	cbc080e7          	jalr	-836(ra) # 80001f48 <_ZdlPv>
}
    80002294:	00048513          	mv	a0,s1
    80002298:	01813083          	ld	ra,24(sp)
    8000229c:	01013403          	ld	s0,16(sp)
    800022a0:	00813483          	ld	s1,8(sp)
    800022a4:	02010113          	addi	sp,sp,32
    800022a8:	00008067          	ret
        if (!head) { tail = 0; }
    800022ac:	00004797          	auipc	a5,0x4
    800022b0:	8c07b223          	sd	zero,-1852(a5) # 80005b70 <_ZN10kScheduler17readyProcessQueueE+0x8>
    800022b4:	fd5ff06f          	j	80002288 <_ZN10kScheduler3getEv+0x30>
        if (!head) { return 0; }
    800022b8:	00050493          	mv	s1,a0
    return readyProcessQueue.removeFirst();
    800022bc:	fd9ff06f          	j	80002294 <_ZN10kScheduler3getEv+0x3c>

00000000800022c0 <_ZN10kScheduler3putEP7kThread>:
{
    800022c0:	fe010113          	addi	sp,sp,-32
    800022c4:	00113c23          	sd	ra,24(sp)
    800022c8:	00813823          	sd	s0,16(sp)
    800022cc:	00913423          	sd	s1,8(sp)
    800022d0:	02010413          	addi	s0,sp,32
    800022d4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800022d8:	01000513          	li	a0,16
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	c1c080e7          	jalr	-996(ra) # 80001ef8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800022e4:	00953023          	sd	s1,0(a0)
    800022e8:	00053423          	sd	zero,8(a0)
        if (tail)
    800022ec:	00004797          	auipc	a5,0x4
    800022f0:	8847b783          	ld	a5,-1916(a5) # 80005b70 <_ZN10kScheduler17readyProcessQueueE+0x8>
    800022f4:	02078263          	beqz	a5,80002318 <_ZN10kScheduler3putEP7kThread+0x58>
            tail->next = elem;
    800022f8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800022fc:	00004797          	auipc	a5,0x4
    80002300:	86a7ba23          	sd	a0,-1932(a5) # 80005b70 <_ZN10kScheduler17readyProcessQueueE+0x8>
}
    80002304:	01813083          	ld	ra,24(sp)
    80002308:	01013403          	ld	s0,16(sp)
    8000230c:	00813483          	ld	s1,8(sp)
    80002310:	02010113          	addi	sp,sp,32
    80002314:	00008067          	ret
            head = tail = elem;
    80002318:	00004797          	auipc	a5,0x4
    8000231c:	85078793          	addi	a5,a5,-1968 # 80005b68 <_ZN10kScheduler17readyProcessQueueE>
    80002320:	00a7b423          	sd	a0,8(a5)
    80002324:	00a7b023          	sd	a0,0(a5)
    80002328:	fddff06f          	j	80002304 <_ZN10kScheduler3putEP7kThread+0x44>

000000008000232c <_GLOBAL__sub_I__ZN10kScheduler17readyProcessQueueE>:
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    8000233c:	000105b7          	lui	a1,0x10
    80002340:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002344:	00100513          	li	a0,1
    80002348:	00000097          	auipc	ra,0x0
    8000234c:	ed0080e7          	jalr	-304(ra) # 80002218 <_Z41__static_initialization_and_destruction_0ii>
    80002350:	00813083          	ld	ra,8(sp)
    80002354:	00013403          	ld	s0,0(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002360:	fe010113          	addi	sp,sp,-32
    80002364:	00113c23          	sd	ra,24(sp)
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00913423          	sd	s1,8(sp)
    80002370:	02010413          	addi	s0,sp,32
    80002374:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002378:	0004c503          	lbu	a0,0(s1)
    8000237c:	00050a63          	beqz	a0,80002390 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80002380:	00002097          	auipc	ra,0x2
    80002384:	430080e7          	jalr	1072(ra) # 800047b0 <__putc>
        string++;
    80002388:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000238c:	fedff06f          	j	80002378 <_Z11printStringPKc+0x18>
    }
}
    80002390:	01813083          	ld	ra,24(sp)
    80002394:	01013403          	ld	s0,16(sp)
    80002398:	00813483          	ld	s1,8(sp)
    8000239c:	02010113          	addi	sp,sp,32
    800023a0:	00008067          	ret

00000000800023a4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800023a4:	fd010113          	addi	sp,sp,-48
    800023a8:	02113423          	sd	ra,40(sp)
    800023ac:	02813023          	sd	s0,32(sp)
    800023b0:	00913c23          	sd	s1,24(sp)
    800023b4:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800023b8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800023bc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800023c0:	00a00613          	li	a2,10
    800023c4:	02c5773b          	remuw	a4,a0,a2
    800023c8:	02071693          	slli	a3,a4,0x20
    800023cc:	0206d693          	srli	a3,a3,0x20
    800023d0:	00003717          	auipc	a4,0x3
    800023d4:	d6870713          	addi	a4,a4,-664 # 80005138 <_ZZ12printIntegermE6digits>
    800023d8:	00d70733          	add	a4,a4,a3
    800023dc:	00074703          	lbu	a4,0(a4)
    800023e0:	fe040693          	addi	a3,s0,-32
    800023e4:	009687b3          	add	a5,a3,s1
    800023e8:	0014849b          	addiw	s1,s1,1
    800023ec:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800023f0:	0005071b          	sext.w	a4,a0
    800023f4:	02c5553b          	divuw	a0,a0,a2
    800023f8:	00900793          	li	a5,9
    800023fc:	fce7e2e3          	bltu	a5,a4,800023c0 <_Z12printIntegerm+0x1c>

    if (neg==1)
        buf[i++] = '-';

    while (--i >= 0)
    80002400:	fff4849b          	addiw	s1,s1,-1
    80002404:	0004ce63          	bltz	s1,80002420 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80002408:	fe040793          	addi	a5,s0,-32
    8000240c:	009787b3          	add	a5,a5,s1
    80002410:	ff07c503          	lbu	a0,-16(a5)
    80002414:	00002097          	auipc	ra,0x2
    80002418:	39c080e7          	jalr	924(ra) # 800047b0 <__putc>
    8000241c:	fe5ff06f          	j	80002400 <_Z12printIntegerm+0x5c>
}
    80002420:	02813083          	ld	ra,40(sp)
    80002424:	02013403          	ld	s0,32(sp)
    80002428:	01813483          	ld	s1,24(sp)
    8000242c:	03010113          	addi	sp,sp,48
    80002430:	00008067          	ret

0000000080002434 <_Z8printHexm>:


void printHex(uint64 integer)
{
    80002434:	fc010113          	addi	sp,sp,-64
    80002438:	02113c23          	sd	ra,56(sp)
    8000243c:	02813823          	sd	s0,48(sp)
    80002440:	02913423          	sd	s1,40(sp)
    80002444:	04010413          	addi	s0,sp,64
    static char hexDigits[] = "0123456789ABCDEF";
    char hexChars[17];
    int index = 0;
    80002448:	00000493          	li	s1,0

    while (integer > 0) {
    8000244c:	02050863          	beqz	a0,8000247c <_Z8printHexm+0x48>
        uint64 remainder = integer % 16;
    80002450:	00f57713          	andi	a4,a0,15
        hexChars[index++] = hexDigits[remainder];
    80002454:	00003797          	auipc	a5,0x3
    80002458:	ce478793          	addi	a5,a5,-796 # 80005138 <_ZZ12printIntegermE6digits>
    8000245c:	00e787b3          	add	a5,a5,a4
    80002460:	0107c703          	lbu	a4,16(a5)
    80002464:	fe040793          	addi	a5,s0,-32
    80002468:	009787b3          	add	a5,a5,s1
    8000246c:	fee78423          	sb	a4,-24(a5)
        integer /= 16;
    80002470:	00455513          	srli	a0,a0,0x4
        hexChars[index++] = hexDigits[remainder];
    80002474:	0014849b          	addiw	s1,s1,1
    while (integer > 0) {
    80002478:	fd5ff06f          	j	8000244c <_Z8printHexm+0x18>
    }

    __putc('0');
    8000247c:	03000513          	li	a0,48
    80002480:	00002097          	auipc	ra,0x2
    80002484:	330080e7          	jalr	816(ra) # 800047b0 <__putc>
    __putc('x');
    80002488:	07800513          	li	a0,120
    8000248c:	00002097          	auipc	ra,0x2
    80002490:	324080e7          	jalr	804(ra) # 800047b0 <__putc>
    // Print the hexadecimal characters in reverse order
    while (--index >= 0) {
    80002494:	fff4849b          	addiw	s1,s1,-1
    80002498:	0004ce63          	bltz	s1,800024b4 <_Z8printHexm+0x80>
        __putc(hexChars[index]);
    8000249c:	fe040793          	addi	a5,s0,-32
    800024a0:	009787b3          	add	a5,a5,s1
    800024a4:	fe87c503          	lbu	a0,-24(a5)
    800024a8:	00002097          	auipc	ra,0x2
    800024ac:	308080e7          	jalr	776(ra) # 800047b0 <__putc>
    800024b0:	fe5ff06f          	j	80002494 <_Z8printHexm+0x60>
    }
    800024b4:	03813083          	ld	ra,56(sp)
    800024b8:	03013403          	ld	s0,48(sp)
    800024bc:	02813483          	ld	s1,40(sp)
    800024c0:	04010113          	addi	sp,sp,64
    800024c4:	00008067          	ret

00000000800024c8 <start>:
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    800024d4:	300027f3          	csrr	a5,mstatus
    800024d8:	ffffe737          	lui	a4,0xffffe
    800024dc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7a0f>
    800024e0:	00e7f7b3          	and	a5,a5,a4
    800024e4:	00001737          	lui	a4,0x1
    800024e8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800024ec:	00e7e7b3          	or	a5,a5,a4
    800024f0:	30079073          	csrw	mstatus,a5
    800024f4:	00000797          	auipc	a5,0x0
    800024f8:	16078793          	addi	a5,a5,352 # 80002654 <system_main>
    800024fc:	34179073          	csrw	mepc,a5
    80002500:	00000793          	li	a5,0
    80002504:	18079073          	csrw	satp,a5
    80002508:	000107b7          	lui	a5,0x10
    8000250c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002510:	30279073          	csrw	medeleg,a5
    80002514:	30379073          	csrw	mideleg,a5
    80002518:	104027f3          	csrr	a5,sie
    8000251c:	2227e793          	ori	a5,a5,546
    80002520:	10479073          	csrw	sie,a5
    80002524:	fff00793          	li	a5,-1
    80002528:	00a7d793          	srli	a5,a5,0xa
    8000252c:	3b079073          	csrw	pmpaddr0,a5
    80002530:	00f00793          	li	a5,15
    80002534:	3a079073          	csrw	pmpcfg0,a5
    80002538:	f14027f3          	csrr	a5,mhartid
    8000253c:	0200c737          	lui	a4,0x200c
    80002540:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002544:	0007869b          	sext.w	a3,a5
    80002548:	00269713          	slli	a4,a3,0x2
    8000254c:	000f4637          	lui	a2,0xf4
    80002550:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002554:	00d70733          	add	a4,a4,a3
    80002558:	0037979b          	slliw	a5,a5,0x3
    8000255c:	020046b7          	lui	a3,0x2004
    80002560:	00d787b3          	add	a5,a5,a3
    80002564:	00c585b3          	add	a1,a1,a2
    80002568:	00371693          	slli	a3,a4,0x3
    8000256c:	00003717          	auipc	a4,0x3
    80002570:	61470713          	addi	a4,a4,1556 # 80005b80 <timer_scratch>
    80002574:	00b7b023          	sd	a1,0(a5)
    80002578:	00d70733          	add	a4,a4,a3
    8000257c:	00f73c23          	sd	a5,24(a4)
    80002580:	02c73023          	sd	a2,32(a4)
    80002584:	34071073          	csrw	mscratch,a4
    80002588:	00000797          	auipc	a5,0x0
    8000258c:	6e878793          	addi	a5,a5,1768 # 80002c70 <timervec>
    80002590:	30579073          	csrw	mtvec,a5
    80002594:	300027f3          	csrr	a5,mstatus
    80002598:	0087e793          	ori	a5,a5,8
    8000259c:	30079073          	csrw	mstatus,a5
    800025a0:	304027f3          	csrr	a5,mie
    800025a4:	0807e793          	ori	a5,a5,128
    800025a8:	30479073          	csrw	mie,a5
    800025ac:	f14027f3          	csrr	a5,mhartid
    800025b0:	0007879b          	sext.w	a5,a5
    800025b4:	00078213          	mv	tp,a5
    800025b8:	30200073          	mret
    800025bc:	00813403          	ld	s0,8(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <timerinit>:
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    800025d4:	f14027f3          	csrr	a5,mhartid
    800025d8:	0200c737          	lui	a4,0x200c
    800025dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800025e0:	0007869b          	sext.w	a3,a5
    800025e4:	00269713          	slli	a4,a3,0x2
    800025e8:	000f4637          	lui	a2,0xf4
    800025ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800025f0:	00d70733          	add	a4,a4,a3
    800025f4:	0037979b          	slliw	a5,a5,0x3
    800025f8:	020046b7          	lui	a3,0x2004
    800025fc:	00d787b3          	add	a5,a5,a3
    80002600:	00c585b3          	add	a1,a1,a2
    80002604:	00371693          	slli	a3,a4,0x3
    80002608:	00003717          	auipc	a4,0x3
    8000260c:	57870713          	addi	a4,a4,1400 # 80005b80 <timer_scratch>
    80002610:	00b7b023          	sd	a1,0(a5)
    80002614:	00d70733          	add	a4,a4,a3
    80002618:	00f73c23          	sd	a5,24(a4)
    8000261c:	02c73023          	sd	a2,32(a4)
    80002620:	34071073          	csrw	mscratch,a4
    80002624:	00000797          	auipc	a5,0x0
    80002628:	64c78793          	addi	a5,a5,1612 # 80002c70 <timervec>
    8000262c:	30579073          	csrw	mtvec,a5
    80002630:	300027f3          	csrr	a5,mstatus
    80002634:	0087e793          	ori	a5,a5,8
    80002638:	30079073          	csrw	mstatus,a5
    8000263c:	304027f3          	csrr	a5,mie
    80002640:	0807e793          	ori	a5,a5,128
    80002644:	30479073          	csrw	mie,a5
    80002648:	00813403          	ld	s0,8(sp)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret

0000000080002654 <system_main>:
    80002654:	fe010113          	addi	sp,sp,-32
    80002658:	00813823          	sd	s0,16(sp)
    8000265c:	00913423          	sd	s1,8(sp)
    80002660:	00113c23          	sd	ra,24(sp)
    80002664:	02010413          	addi	s0,sp,32
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	0c4080e7          	jalr	196(ra) # 8000272c <cpuid>
    80002670:	00003497          	auipc	s1,0x3
    80002674:	4c048493          	addi	s1,s1,1216 # 80005b30 <started>
    80002678:	02050263          	beqz	a0,8000269c <system_main+0x48>
    8000267c:	0004a783          	lw	a5,0(s1)
    80002680:	0007879b          	sext.w	a5,a5
    80002684:	fe078ce3          	beqz	a5,8000267c <system_main+0x28>
    80002688:	0ff0000f          	fence
    8000268c:	00003517          	auipc	a0,0x3
    80002690:	b0450513          	addi	a0,a0,-1276 # 80005190 <_ZZ8printHexmE9hexDigits+0x48>
    80002694:	00001097          	auipc	ra,0x1
    80002698:	a78080e7          	jalr	-1416(ra) # 8000310c <panic>
    8000269c:	00001097          	auipc	ra,0x1
    800026a0:	9cc080e7          	jalr	-1588(ra) # 80003068 <consoleinit>
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	158080e7          	jalr	344(ra) # 800037fc <printfinit>
    800026ac:	00003517          	auipc	a0,0x3
    800026b0:	a6450513          	addi	a0,a0,-1436 # 80005110 <kvmincrease+0x840>
    800026b4:	00001097          	auipc	ra,0x1
    800026b8:	ab4080e7          	jalr	-1356(ra) # 80003168 <__printf>
    800026bc:	00003517          	auipc	a0,0x3
    800026c0:	aa450513          	addi	a0,a0,-1372 # 80005160 <_ZZ8printHexmE9hexDigits+0x18>
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	aa4080e7          	jalr	-1372(ra) # 80003168 <__printf>
    800026cc:	00003517          	auipc	a0,0x3
    800026d0:	a4450513          	addi	a0,a0,-1468 # 80005110 <kvmincrease+0x840>
    800026d4:	00001097          	auipc	ra,0x1
    800026d8:	a94080e7          	jalr	-1388(ra) # 80003168 <__printf>
    800026dc:	00001097          	auipc	ra,0x1
    800026e0:	4ac080e7          	jalr	1196(ra) # 80003b88 <kinit>
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	148080e7          	jalr	328(ra) # 8000282c <trapinit>
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	16c080e7          	jalr	364(ra) # 80002858 <trapinithart>
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	5bc080e7          	jalr	1468(ra) # 80002cb0 <plicinit>
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	5dc080e7          	jalr	1500(ra) # 80002cd8 <plicinithart>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	078080e7          	jalr	120(ra) # 8000277c <userinit>
    8000270c:	0ff0000f          	fence
    80002710:	00100793          	li	a5,1
    80002714:	00003517          	auipc	a0,0x3
    80002718:	a6450513          	addi	a0,a0,-1436 # 80005178 <_ZZ8printHexmE9hexDigits+0x30>
    8000271c:	00f4a023          	sw	a5,0(s1)
    80002720:	00001097          	auipc	ra,0x1
    80002724:	a48080e7          	jalr	-1464(ra) # 80003168 <__printf>
    80002728:	0000006f          	j	80002728 <system_main+0xd4>

000000008000272c <cpuid>:
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00813423          	sd	s0,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	00020513          	mv	a0,tp
    8000273c:	00813403          	ld	s0,8(sp)
    80002740:	0005051b          	sext.w	a0,a0
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <mycpu>:
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00813423          	sd	s0,8(sp)
    80002754:	01010413          	addi	s0,sp,16
    80002758:	00020793          	mv	a5,tp
    8000275c:	00813403          	ld	s0,8(sp)
    80002760:	0007879b          	sext.w	a5,a5
    80002764:	00779793          	slli	a5,a5,0x7
    80002768:	00004517          	auipc	a0,0x4
    8000276c:	44850513          	addi	a0,a0,1096 # 80006bb0 <cpus>
    80002770:	00f50533          	add	a0,a0,a5
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <userinit>:
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00813423          	sd	s0,8(sp)
    80002784:	01010413          	addi	s0,sp,16
    80002788:	00813403          	ld	s0,8(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	fffff317          	auipc	t1,0xfffff
    80002794:	5f030067          	jr	1520(t1) # 80001d80 <main>

0000000080002798 <either_copyout>:
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00813023          	sd	s0,0(sp)
    800027a0:	00113423          	sd	ra,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    800027a8:	02051663          	bnez	a0,800027d4 <either_copyout+0x3c>
    800027ac:	00058513          	mv	a0,a1
    800027b0:	00060593          	mv	a1,a2
    800027b4:	0006861b          	sext.w	a2,a3
    800027b8:	00002097          	auipc	ra,0x2
    800027bc:	c5c080e7          	jalr	-932(ra) # 80004414 <__memmove>
    800027c0:	00813083          	ld	ra,8(sp)
    800027c4:	00013403          	ld	s0,0(sp)
    800027c8:	00000513          	li	a0,0
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret
    800027d4:	00003517          	auipc	a0,0x3
    800027d8:	9e450513          	addi	a0,a0,-1564 # 800051b8 <_ZZ8printHexmE9hexDigits+0x70>
    800027dc:	00001097          	auipc	ra,0x1
    800027e0:	930080e7          	jalr	-1744(ra) # 8000310c <panic>

00000000800027e4 <either_copyin>:
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00813023          	sd	s0,0(sp)
    800027ec:	00113423          	sd	ra,8(sp)
    800027f0:	01010413          	addi	s0,sp,16
    800027f4:	02059463          	bnez	a1,8000281c <either_copyin+0x38>
    800027f8:	00060593          	mv	a1,a2
    800027fc:	0006861b          	sext.w	a2,a3
    80002800:	00002097          	auipc	ra,0x2
    80002804:	c14080e7          	jalr	-1004(ra) # 80004414 <__memmove>
    80002808:	00813083          	ld	ra,8(sp)
    8000280c:	00013403          	ld	s0,0(sp)
    80002810:	00000513          	li	a0,0
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00008067          	ret
    8000281c:	00003517          	auipc	a0,0x3
    80002820:	9c450513          	addi	a0,a0,-1596 # 800051e0 <_ZZ8printHexmE9hexDigits+0x98>
    80002824:	00001097          	auipc	ra,0x1
    80002828:	8e8080e7          	jalr	-1816(ra) # 8000310c <panic>

000000008000282c <trapinit>:
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00813423          	sd	s0,8(sp)
    80002834:	01010413          	addi	s0,sp,16
    80002838:	00813403          	ld	s0,8(sp)
    8000283c:	00003597          	auipc	a1,0x3
    80002840:	9cc58593          	addi	a1,a1,-1588 # 80005208 <_ZZ8printHexmE9hexDigits+0xc0>
    80002844:	00004517          	auipc	a0,0x4
    80002848:	3ec50513          	addi	a0,a0,1004 # 80006c30 <tickslock>
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00001317          	auipc	t1,0x1
    80002854:	5c830067          	jr	1480(t1) # 80003e18 <initlock>

0000000080002858 <trapinithart>:
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813423          	sd	s0,8(sp)
    80002860:	01010413          	addi	s0,sp,16
    80002864:	00000797          	auipc	a5,0x0
    80002868:	2fc78793          	addi	a5,a5,764 # 80002b60 <kernelvec>
    8000286c:	10579073          	csrw	stvec,a5
    80002870:	00813403          	ld	s0,8(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <usertrap>:
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00813423          	sd	s0,8(sp)
    80002884:	01010413          	addi	s0,sp,16
    80002888:	00813403          	ld	s0,8(sp)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret

0000000080002894 <usertrapret>:
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813423          	sd	s0,8(sp)
    8000289c:	01010413          	addi	s0,sp,16
    800028a0:	00813403          	ld	s0,8(sp)
    800028a4:	01010113          	addi	sp,sp,16
    800028a8:	00008067          	ret

00000000800028ac <kerneltrap>:
    800028ac:	fe010113          	addi	sp,sp,-32
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00113c23          	sd	ra,24(sp)
    800028b8:	00913423          	sd	s1,8(sp)
    800028bc:	02010413          	addi	s0,sp,32
    800028c0:	142025f3          	csrr	a1,scause
    800028c4:	100027f3          	csrr	a5,sstatus
    800028c8:	0027f793          	andi	a5,a5,2
    800028cc:	10079c63          	bnez	a5,800029e4 <kerneltrap+0x138>
    800028d0:	142027f3          	csrr	a5,scause
    800028d4:	0207ce63          	bltz	a5,80002910 <kerneltrap+0x64>
    800028d8:	00003517          	auipc	a0,0x3
    800028dc:	97850513          	addi	a0,a0,-1672 # 80005250 <_ZZ8printHexmE9hexDigits+0x108>
    800028e0:	00001097          	auipc	ra,0x1
    800028e4:	888080e7          	jalr	-1912(ra) # 80003168 <__printf>
    800028e8:	141025f3          	csrr	a1,sepc
    800028ec:	14302673          	csrr	a2,stval
    800028f0:	00003517          	auipc	a0,0x3
    800028f4:	97050513          	addi	a0,a0,-1680 # 80005260 <_ZZ8printHexmE9hexDigits+0x118>
    800028f8:	00001097          	auipc	ra,0x1
    800028fc:	870080e7          	jalr	-1936(ra) # 80003168 <__printf>
    80002900:	00003517          	auipc	a0,0x3
    80002904:	97850513          	addi	a0,a0,-1672 # 80005278 <_ZZ8printHexmE9hexDigits+0x130>
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	804080e7          	jalr	-2044(ra) # 8000310c <panic>
    80002910:	0ff7f713          	andi	a4,a5,255
    80002914:	00900693          	li	a3,9
    80002918:	04d70063          	beq	a4,a3,80002958 <kerneltrap+0xac>
    8000291c:	fff00713          	li	a4,-1
    80002920:	03f71713          	slli	a4,a4,0x3f
    80002924:	00170713          	addi	a4,a4,1
    80002928:	fae798e3          	bne	a5,a4,800028d8 <kerneltrap+0x2c>
    8000292c:	00000097          	auipc	ra,0x0
    80002930:	e00080e7          	jalr	-512(ra) # 8000272c <cpuid>
    80002934:	06050663          	beqz	a0,800029a0 <kerneltrap+0xf4>
    80002938:	144027f3          	csrr	a5,sip
    8000293c:	ffd7f793          	andi	a5,a5,-3
    80002940:	14479073          	csrw	sip,a5
    80002944:	01813083          	ld	ra,24(sp)
    80002948:	01013403          	ld	s0,16(sp)
    8000294c:	00813483          	ld	s1,8(sp)
    80002950:	02010113          	addi	sp,sp,32
    80002954:	00008067          	ret
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	3cc080e7          	jalr	972(ra) # 80002d24 <plic_claim>
    80002960:	00a00793          	li	a5,10
    80002964:	00050493          	mv	s1,a0
    80002968:	06f50863          	beq	a0,a5,800029d8 <kerneltrap+0x12c>
    8000296c:	fc050ce3          	beqz	a0,80002944 <kerneltrap+0x98>
    80002970:	00050593          	mv	a1,a0
    80002974:	00003517          	auipc	a0,0x3
    80002978:	8bc50513          	addi	a0,a0,-1860 # 80005230 <_ZZ8printHexmE9hexDigits+0xe8>
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	7ec080e7          	jalr	2028(ra) # 80003168 <__printf>
    80002984:	01013403          	ld	s0,16(sp)
    80002988:	01813083          	ld	ra,24(sp)
    8000298c:	00048513          	mv	a0,s1
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	02010113          	addi	sp,sp,32
    80002998:	00000317          	auipc	t1,0x0
    8000299c:	3c430067          	jr	964(t1) # 80002d5c <plic_complete>
    800029a0:	00004517          	auipc	a0,0x4
    800029a4:	29050513          	addi	a0,a0,656 # 80006c30 <tickslock>
    800029a8:	00001097          	auipc	ra,0x1
    800029ac:	494080e7          	jalr	1172(ra) # 80003e3c <acquire>
    800029b0:	00003717          	auipc	a4,0x3
    800029b4:	18470713          	addi	a4,a4,388 # 80005b34 <ticks>
    800029b8:	00072783          	lw	a5,0(a4)
    800029bc:	00004517          	auipc	a0,0x4
    800029c0:	27450513          	addi	a0,a0,628 # 80006c30 <tickslock>
    800029c4:	0017879b          	addiw	a5,a5,1
    800029c8:	00f72023          	sw	a5,0(a4)
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	53c080e7          	jalr	1340(ra) # 80003f08 <release>
    800029d4:	f65ff06f          	j	80002938 <kerneltrap+0x8c>
    800029d8:	00001097          	auipc	ra,0x1
    800029dc:	098080e7          	jalr	152(ra) # 80003a70 <uartintr>
    800029e0:	fa5ff06f          	j	80002984 <kerneltrap+0xd8>
    800029e4:	00003517          	auipc	a0,0x3
    800029e8:	82c50513          	addi	a0,a0,-2004 # 80005210 <_ZZ8printHexmE9hexDigits+0xc8>
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	720080e7          	jalr	1824(ra) # 8000310c <panic>

00000000800029f4 <clockintr>:
    800029f4:	fe010113          	addi	sp,sp,-32
    800029f8:	00813823          	sd	s0,16(sp)
    800029fc:	00913423          	sd	s1,8(sp)
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	02010413          	addi	s0,sp,32
    80002a08:	00004497          	auipc	s1,0x4
    80002a0c:	22848493          	addi	s1,s1,552 # 80006c30 <tickslock>
    80002a10:	00048513          	mv	a0,s1
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	428080e7          	jalr	1064(ra) # 80003e3c <acquire>
    80002a1c:	00003717          	auipc	a4,0x3
    80002a20:	11870713          	addi	a4,a4,280 # 80005b34 <ticks>
    80002a24:	00072783          	lw	a5,0(a4)
    80002a28:	01013403          	ld	s0,16(sp)
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	00048513          	mv	a0,s1
    80002a34:	0017879b          	addiw	a5,a5,1
    80002a38:	00813483          	ld	s1,8(sp)
    80002a3c:	00f72023          	sw	a5,0(a4)
    80002a40:	02010113          	addi	sp,sp,32
    80002a44:	00001317          	auipc	t1,0x1
    80002a48:	4c430067          	jr	1220(t1) # 80003f08 <release>

0000000080002a4c <devintr>:
    80002a4c:	142027f3          	csrr	a5,scause
    80002a50:	00000513          	li	a0,0
    80002a54:	0007c463          	bltz	a5,80002a5c <devintr+0x10>
    80002a58:	00008067          	ret
    80002a5c:	fe010113          	addi	sp,sp,-32
    80002a60:	00813823          	sd	s0,16(sp)
    80002a64:	00113c23          	sd	ra,24(sp)
    80002a68:	00913423          	sd	s1,8(sp)
    80002a6c:	02010413          	addi	s0,sp,32
    80002a70:	0ff7f713          	andi	a4,a5,255
    80002a74:	00900693          	li	a3,9
    80002a78:	04d70c63          	beq	a4,a3,80002ad0 <devintr+0x84>
    80002a7c:	fff00713          	li	a4,-1
    80002a80:	03f71713          	slli	a4,a4,0x3f
    80002a84:	00170713          	addi	a4,a4,1
    80002a88:	00e78c63          	beq	a5,a4,80002aa0 <devintr+0x54>
    80002a8c:	01813083          	ld	ra,24(sp)
    80002a90:	01013403          	ld	s0,16(sp)
    80002a94:	00813483          	ld	s1,8(sp)
    80002a98:	02010113          	addi	sp,sp,32
    80002a9c:	00008067          	ret
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	c8c080e7          	jalr	-884(ra) # 8000272c <cpuid>
    80002aa8:	06050663          	beqz	a0,80002b14 <devintr+0xc8>
    80002aac:	144027f3          	csrr	a5,sip
    80002ab0:	ffd7f793          	andi	a5,a5,-3
    80002ab4:	14479073          	csrw	sip,a5
    80002ab8:	01813083          	ld	ra,24(sp)
    80002abc:	01013403          	ld	s0,16(sp)
    80002ac0:	00813483          	ld	s1,8(sp)
    80002ac4:	00200513          	li	a0,2
    80002ac8:	02010113          	addi	sp,sp,32
    80002acc:	00008067          	ret
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	254080e7          	jalr	596(ra) # 80002d24 <plic_claim>
    80002ad8:	00a00793          	li	a5,10
    80002adc:	00050493          	mv	s1,a0
    80002ae0:	06f50663          	beq	a0,a5,80002b4c <devintr+0x100>
    80002ae4:	00100513          	li	a0,1
    80002ae8:	fa0482e3          	beqz	s1,80002a8c <devintr+0x40>
    80002aec:	00048593          	mv	a1,s1
    80002af0:	00002517          	auipc	a0,0x2
    80002af4:	74050513          	addi	a0,a0,1856 # 80005230 <_ZZ8printHexmE9hexDigits+0xe8>
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	670080e7          	jalr	1648(ra) # 80003168 <__printf>
    80002b00:	00048513          	mv	a0,s1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	258080e7          	jalr	600(ra) # 80002d5c <plic_complete>
    80002b0c:	00100513          	li	a0,1
    80002b10:	f7dff06f          	j	80002a8c <devintr+0x40>
    80002b14:	00004517          	auipc	a0,0x4
    80002b18:	11c50513          	addi	a0,a0,284 # 80006c30 <tickslock>
    80002b1c:	00001097          	auipc	ra,0x1
    80002b20:	320080e7          	jalr	800(ra) # 80003e3c <acquire>
    80002b24:	00003717          	auipc	a4,0x3
    80002b28:	01070713          	addi	a4,a4,16 # 80005b34 <ticks>
    80002b2c:	00072783          	lw	a5,0(a4)
    80002b30:	00004517          	auipc	a0,0x4
    80002b34:	10050513          	addi	a0,a0,256 # 80006c30 <tickslock>
    80002b38:	0017879b          	addiw	a5,a5,1
    80002b3c:	00f72023          	sw	a5,0(a4)
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	3c8080e7          	jalr	968(ra) # 80003f08 <release>
    80002b48:	f65ff06f          	j	80002aac <devintr+0x60>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	f24080e7          	jalr	-220(ra) # 80003a70 <uartintr>
    80002b54:	fadff06f          	j	80002b00 <devintr+0xb4>
	...

0000000080002b60 <kernelvec>:
    80002b60:	f0010113          	addi	sp,sp,-256
    80002b64:	00113023          	sd	ra,0(sp)
    80002b68:	00213423          	sd	sp,8(sp)
    80002b6c:	00313823          	sd	gp,16(sp)
    80002b70:	00413c23          	sd	tp,24(sp)
    80002b74:	02513023          	sd	t0,32(sp)
    80002b78:	02613423          	sd	t1,40(sp)
    80002b7c:	02713823          	sd	t2,48(sp)
    80002b80:	02813c23          	sd	s0,56(sp)
    80002b84:	04913023          	sd	s1,64(sp)
    80002b88:	04a13423          	sd	a0,72(sp)
    80002b8c:	04b13823          	sd	a1,80(sp)
    80002b90:	04c13c23          	sd	a2,88(sp)
    80002b94:	06d13023          	sd	a3,96(sp)
    80002b98:	06e13423          	sd	a4,104(sp)
    80002b9c:	06f13823          	sd	a5,112(sp)
    80002ba0:	07013c23          	sd	a6,120(sp)
    80002ba4:	09113023          	sd	a7,128(sp)
    80002ba8:	09213423          	sd	s2,136(sp)
    80002bac:	09313823          	sd	s3,144(sp)
    80002bb0:	09413c23          	sd	s4,152(sp)
    80002bb4:	0b513023          	sd	s5,160(sp)
    80002bb8:	0b613423          	sd	s6,168(sp)
    80002bbc:	0b713823          	sd	s7,176(sp)
    80002bc0:	0b813c23          	sd	s8,184(sp)
    80002bc4:	0d913023          	sd	s9,192(sp)
    80002bc8:	0da13423          	sd	s10,200(sp)
    80002bcc:	0db13823          	sd	s11,208(sp)
    80002bd0:	0dc13c23          	sd	t3,216(sp)
    80002bd4:	0fd13023          	sd	t4,224(sp)
    80002bd8:	0fe13423          	sd	t5,232(sp)
    80002bdc:	0ff13823          	sd	t6,240(sp)
    80002be0:	ccdff0ef          	jal	ra,800028ac <kerneltrap>
    80002be4:	00013083          	ld	ra,0(sp)
    80002be8:	00813103          	ld	sp,8(sp)
    80002bec:	01013183          	ld	gp,16(sp)
    80002bf0:	02013283          	ld	t0,32(sp)
    80002bf4:	02813303          	ld	t1,40(sp)
    80002bf8:	03013383          	ld	t2,48(sp)
    80002bfc:	03813403          	ld	s0,56(sp)
    80002c00:	04013483          	ld	s1,64(sp)
    80002c04:	04813503          	ld	a0,72(sp)
    80002c08:	05013583          	ld	a1,80(sp)
    80002c0c:	05813603          	ld	a2,88(sp)
    80002c10:	06013683          	ld	a3,96(sp)
    80002c14:	06813703          	ld	a4,104(sp)
    80002c18:	07013783          	ld	a5,112(sp)
    80002c1c:	07813803          	ld	a6,120(sp)
    80002c20:	08013883          	ld	a7,128(sp)
    80002c24:	08813903          	ld	s2,136(sp)
    80002c28:	09013983          	ld	s3,144(sp)
    80002c2c:	09813a03          	ld	s4,152(sp)
    80002c30:	0a013a83          	ld	s5,160(sp)
    80002c34:	0a813b03          	ld	s6,168(sp)
    80002c38:	0b013b83          	ld	s7,176(sp)
    80002c3c:	0b813c03          	ld	s8,184(sp)
    80002c40:	0c013c83          	ld	s9,192(sp)
    80002c44:	0c813d03          	ld	s10,200(sp)
    80002c48:	0d013d83          	ld	s11,208(sp)
    80002c4c:	0d813e03          	ld	t3,216(sp)
    80002c50:	0e013e83          	ld	t4,224(sp)
    80002c54:	0e813f03          	ld	t5,232(sp)
    80002c58:	0f013f83          	ld	t6,240(sp)
    80002c5c:	10010113          	addi	sp,sp,256
    80002c60:	10200073          	sret
    80002c64:	00000013          	nop
    80002c68:	00000013          	nop
    80002c6c:	00000013          	nop

0000000080002c70 <timervec>:
    80002c70:	34051573          	csrrw	a0,mscratch,a0
    80002c74:	00b53023          	sd	a1,0(a0)
    80002c78:	00c53423          	sd	a2,8(a0)
    80002c7c:	00d53823          	sd	a3,16(a0)
    80002c80:	01853583          	ld	a1,24(a0)
    80002c84:	02053603          	ld	a2,32(a0)
    80002c88:	0005b683          	ld	a3,0(a1)
    80002c8c:	00c686b3          	add	a3,a3,a2
    80002c90:	00d5b023          	sd	a3,0(a1)
    80002c94:	00200593          	li	a1,2
    80002c98:	14459073          	csrw	sip,a1
    80002c9c:	01053683          	ld	a3,16(a0)
    80002ca0:	00853603          	ld	a2,8(a0)
    80002ca4:	00053583          	ld	a1,0(a0)
    80002ca8:	34051573          	csrrw	a0,mscratch,a0
    80002cac:	30200073          	mret

0000000080002cb0 <plicinit>:
    80002cb0:	ff010113          	addi	sp,sp,-16
    80002cb4:	00813423          	sd	s0,8(sp)
    80002cb8:	01010413          	addi	s0,sp,16
    80002cbc:	00813403          	ld	s0,8(sp)
    80002cc0:	0c0007b7          	lui	a5,0xc000
    80002cc4:	00100713          	li	a4,1
    80002cc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002ccc:	00e7a223          	sw	a4,4(a5)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret

0000000080002cd8 <plicinithart>:
    80002cd8:	ff010113          	addi	sp,sp,-16
    80002cdc:	00813023          	sd	s0,0(sp)
    80002ce0:	00113423          	sd	ra,8(sp)
    80002ce4:	01010413          	addi	s0,sp,16
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	a44080e7          	jalr	-1468(ra) # 8000272c <cpuid>
    80002cf0:	0085171b          	slliw	a4,a0,0x8
    80002cf4:	0c0027b7          	lui	a5,0xc002
    80002cf8:	00e787b3          	add	a5,a5,a4
    80002cfc:	40200713          	li	a4,1026
    80002d00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002d04:	00813083          	ld	ra,8(sp)
    80002d08:	00013403          	ld	s0,0(sp)
    80002d0c:	00d5151b          	slliw	a0,a0,0xd
    80002d10:	0c2017b7          	lui	a5,0xc201
    80002d14:	00a78533          	add	a0,a5,a0
    80002d18:	00052023          	sw	zero,0(a0)
    80002d1c:	01010113          	addi	sp,sp,16
    80002d20:	00008067          	ret

0000000080002d24 <plic_claim>:
    80002d24:	ff010113          	addi	sp,sp,-16
    80002d28:	00813023          	sd	s0,0(sp)
    80002d2c:	00113423          	sd	ra,8(sp)
    80002d30:	01010413          	addi	s0,sp,16
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	9f8080e7          	jalr	-1544(ra) # 8000272c <cpuid>
    80002d3c:	00813083          	ld	ra,8(sp)
    80002d40:	00013403          	ld	s0,0(sp)
    80002d44:	00d5151b          	slliw	a0,a0,0xd
    80002d48:	0c2017b7          	lui	a5,0xc201
    80002d4c:	00a78533          	add	a0,a5,a0
    80002d50:	00452503          	lw	a0,4(a0)
    80002d54:	01010113          	addi	sp,sp,16
    80002d58:	00008067          	ret

0000000080002d5c <plic_complete>:
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	00113c23          	sd	ra,24(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    80002d70:	00050493          	mv	s1,a0
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	9b8080e7          	jalr	-1608(ra) # 8000272c <cpuid>
    80002d7c:	01813083          	ld	ra,24(sp)
    80002d80:	01013403          	ld	s0,16(sp)
    80002d84:	00d5179b          	slliw	a5,a0,0xd
    80002d88:	0c201737          	lui	a4,0xc201
    80002d8c:	00f707b3          	add	a5,a4,a5
    80002d90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002d94:	00813483          	ld	s1,8(sp)
    80002d98:	02010113          	addi	sp,sp,32
    80002d9c:	00008067          	ret

0000000080002da0 <consolewrite>:
    80002da0:	fb010113          	addi	sp,sp,-80
    80002da4:	04813023          	sd	s0,64(sp)
    80002da8:	04113423          	sd	ra,72(sp)
    80002dac:	02913c23          	sd	s1,56(sp)
    80002db0:	03213823          	sd	s2,48(sp)
    80002db4:	03313423          	sd	s3,40(sp)
    80002db8:	03413023          	sd	s4,32(sp)
    80002dbc:	01513c23          	sd	s5,24(sp)
    80002dc0:	05010413          	addi	s0,sp,80
    80002dc4:	06c05c63          	blez	a2,80002e3c <consolewrite+0x9c>
    80002dc8:	00060993          	mv	s3,a2
    80002dcc:	00050a13          	mv	s4,a0
    80002dd0:	00058493          	mv	s1,a1
    80002dd4:	00000913          	li	s2,0
    80002dd8:	fff00a93          	li	s5,-1
    80002ddc:	01c0006f          	j	80002df8 <consolewrite+0x58>
    80002de0:	fbf44503          	lbu	a0,-65(s0)
    80002de4:	0019091b          	addiw	s2,s2,1
    80002de8:	00148493          	addi	s1,s1,1
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	a9c080e7          	jalr	-1380(ra) # 80003888 <uartputc>
    80002df4:	03298063          	beq	s3,s2,80002e14 <consolewrite+0x74>
    80002df8:	00048613          	mv	a2,s1
    80002dfc:	00100693          	li	a3,1
    80002e00:	000a0593          	mv	a1,s4
    80002e04:	fbf40513          	addi	a0,s0,-65
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	9dc080e7          	jalr	-1572(ra) # 800027e4 <either_copyin>
    80002e10:	fd5518e3          	bne	a0,s5,80002de0 <consolewrite+0x40>
    80002e14:	04813083          	ld	ra,72(sp)
    80002e18:	04013403          	ld	s0,64(sp)
    80002e1c:	03813483          	ld	s1,56(sp)
    80002e20:	02813983          	ld	s3,40(sp)
    80002e24:	02013a03          	ld	s4,32(sp)
    80002e28:	01813a83          	ld	s5,24(sp)
    80002e2c:	00090513          	mv	a0,s2
    80002e30:	03013903          	ld	s2,48(sp)
    80002e34:	05010113          	addi	sp,sp,80
    80002e38:	00008067          	ret
    80002e3c:	00000913          	li	s2,0
    80002e40:	fd5ff06f          	j	80002e14 <consolewrite+0x74>

0000000080002e44 <consoleread>:
    80002e44:	f9010113          	addi	sp,sp,-112
    80002e48:	06813023          	sd	s0,96(sp)
    80002e4c:	04913c23          	sd	s1,88(sp)
    80002e50:	05213823          	sd	s2,80(sp)
    80002e54:	05313423          	sd	s3,72(sp)
    80002e58:	05413023          	sd	s4,64(sp)
    80002e5c:	03513c23          	sd	s5,56(sp)
    80002e60:	03613823          	sd	s6,48(sp)
    80002e64:	03713423          	sd	s7,40(sp)
    80002e68:	03813023          	sd	s8,32(sp)
    80002e6c:	06113423          	sd	ra,104(sp)
    80002e70:	01913c23          	sd	s9,24(sp)
    80002e74:	07010413          	addi	s0,sp,112
    80002e78:	00060b93          	mv	s7,a2
    80002e7c:	00050913          	mv	s2,a0
    80002e80:	00058c13          	mv	s8,a1
    80002e84:	00060b1b          	sext.w	s6,a2
    80002e88:	00004497          	auipc	s1,0x4
    80002e8c:	dd048493          	addi	s1,s1,-560 # 80006c58 <cons>
    80002e90:	00400993          	li	s3,4
    80002e94:	fff00a13          	li	s4,-1
    80002e98:	00a00a93          	li	s5,10
    80002e9c:	05705e63          	blez	s7,80002ef8 <consoleread+0xb4>
    80002ea0:	09c4a703          	lw	a4,156(s1)
    80002ea4:	0984a783          	lw	a5,152(s1)
    80002ea8:	0007071b          	sext.w	a4,a4
    80002eac:	08e78463          	beq	a5,a4,80002f34 <consoleread+0xf0>
    80002eb0:	07f7f713          	andi	a4,a5,127
    80002eb4:	00e48733          	add	a4,s1,a4
    80002eb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002ebc:	0017869b          	addiw	a3,a5,1
    80002ec0:	08d4ac23          	sw	a3,152(s1)
    80002ec4:	00070c9b          	sext.w	s9,a4
    80002ec8:	0b370663          	beq	a4,s3,80002f74 <consoleread+0x130>
    80002ecc:	00100693          	li	a3,1
    80002ed0:	f9f40613          	addi	a2,s0,-97
    80002ed4:	000c0593          	mv	a1,s8
    80002ed8:	00090513          	mv	a0,s2
    80002edc:	f8e40fa3          	sb	a4,-97(s0)
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	8b8080e7          	jalr	-1864(ra) # 80002798 <either_copyout>
    80002ee8:	01450863          	beq	a0,s4,80002ef8 <consoleread+0xb4>
    80002eec:	001c0c13          	addi	s8,s8,1
    80002ef0:	fffb8b9b          	addiw	s7,s7,-1
    80002ef4:	fb5c94e3          	bne	s9,s5,80002e9c <consoleread+0x58>
    80002ef8:	000b851b          	sext.w	a0,s7
    80002efc:	06813083          	ld	ra,104(sp)
    80002f00:	06013403          	ld	s0,96(sp)
    80002f04:	05813483          	ld	s1,88(sp)
    80002f08:	05013903          	ld	s2,80(sp)
    80002f0c:	04813983          	ld	s3,72(sp)
    80002f10:	04013a03          	ld	s4,64(sp)
    80002f14:	03813a83          	ld	s5,56(sp)
    80002f18:	02813b83          	ld	s7,40(sp)
    80002f1c:	02013c03          	ld	s8,32(sp)
    80002f20:	01813c83          	ld	s9,24(sp)
    80002f24:	40ab053b          	subw	a0,s6,a0
    80002f28:	03013b03          	ld	s6,48(sp)
    80002f2c:	07010113          	addi	sp,sp,112
    80002f30:	00008067          	ret
    80002f34:	00001097          	auipc	ra,0x1
    80002f38:	1d8080e7          	jalr	472(ra) # 8000410c <push_on>
    80002f3c:	0984a703          	lw	a4,152(s1)
    80002f40:	09c4a783          	lw	a5,156(s1)
    80002f44:	0007879b          	sext.w	a5,a5
    80002f48:	fef70ce3          	beq	a4,a5,80002f40 <consoleread+0xfc>
    80002f4c:	00001097          	auipc	ra,0x1
    80002f50:	234080e7          	jalr	564(ra) # 80004180 <pop_on>
    80002f54:	0984a783          	lw	a5,152(s1)
    80002f58:	07f7f713          	andi	a4,a5,127
    80002f5c:	00e48733          	add	a4,s1,a4
    80002f60:	01874703          	lbu	a4,24(a4)
    80002f64:	0017869b          	addiw	a3,a5,1
    80002f68:	08d4ac23          	sw	a3,152(s1)
    80002f6c:	00070c9b          	sext.w	s9,a4
    80002f70:	f5371ee3          	bne	a4,s3,80002ecc <consoleread+0x88>
    80002f74:	000b851b          	sext.w	a0,s7
    80002f78:	f96bf2e3          	bgeu	s7,s6,80002efc <consoleread+0xb8>
    80002f7c:	08f4ac23          	sw	a5,152(s1)
    80002f80:	f7dff06f          	j	80002efc <consoleread+0xb8>

0000000080002f84 <consputc>:
    80002f84:	10000793          	li	a5,256
    80002f88:	00f50663          	beq	a0,a5,80002f94 <consputc+0x10>
    80002f8c:	00001317          	auipc	t1,0x1
    80002f90:	9f430067          	jr	-1548(t1) # 80003980 <uartputc_sync>
    80002f94:	ff010113          	addi	sp,sp,-16
    80002f98:	00113423          	sd	ra,8(sp)
    80002f9c:	00813023          	sd	s0,0(sp)
    80002fa0:	01010413          	addi	s0,sp,16
    80002fa4:	00800513          	li	a0,8
    80002fa8:	00001097          	auipc	ra,0x1
    80002fac:	9d8080e7          	jalr	-1576(ra) # 80003980 <uartputc_sync>
    80002fb0:	02000513          	li	a0,32
    80002fb4:	00001097          	auipc	ra,0x1
    80002fb8:	9cc080e7          	jalr	-1588(ra) # 80003980 <uartputc_sync>
    80002fbc:	00013403          	ld	s0,0(sp)
    80002fc0:	00813083          	ld	ra,8(sp)
    80002fc4:	00800513          	li	a0,8
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00001317          	auipc	t1,0x1
    80002fd0:	9b430067          	jr	-1612(t1) # 80003980 <uartputc_sync>

0000000080002fd4 <consoleintr>:
    80002fd4:	fe010113          	addi	sp,sp,-32
    80002fd8:	00813823          	sd	s0,16(sp)
    80002fdc:	00913423          	sd	s1,8(sp)
    80002fe0:	01213023          	sd	s2,0(sp)
    80002fe4:	00113c23          	sd	ra,24(sp)
    80002fe8:	02010413          	addi	s0,sp,32
    80002fec:	00004917          	auipc	s2,0x4
    80002ff0:	c6c90913          	addi	s2,s2,-916 # 80006c58 <cons>
    80002ff4:	00050493          	mv	s1,a0
    80002ff8:	00090513          	mv	a0,s2
    80002ffc:	00001097          	auipc	ra,0x1
    80003000:	e40080e7          	jalr	-448(ra) # 80003e3c <acquire>
    80003004:	02048c63          	beqz	s1,8000303c <consoleintr+0x68>
    80003008:	0a092783          	lw	a5,160(s2)
    8000300c:	09892703          	lw	a4,152(s2)
    80003010:	07f00693          	li	a3,127
    80003014:	40e7873b          	subw	a4,a5,a4
    80003018:	02e6e263          	bltu	a3,a4,8000303c <consoleintr+0x68>
    8000301c:	00d00713          	li	a4,13
    80003020:	04e48063          	beq	s1,a4,80003060 <consoleintr+0x8c>
    80003024:	07f7f713          	andi	a4,a5,127
    80003028:	00e90733          	add	a4,s2,a4
    8000302c:	0017879b          	addiw	a5,a5,1
    80003030:	0af92023          	sw	a5,160(s2)
    80003034:	00970c23          	sb	s1,24(a4)
    80003038:	08f92e23          	sw	a5,156(s2)
    8000303c:	01013403          	ld	s0,16(sp)
    80003040:	01813083          	ld	ra,24(sp)
    80003044:	00813483          	ld	s1,8(sp)
    80003048:	00013903          	ld	s2,0(sp)
    8000304c:	00004517          	auipc	a0,0x4
    80003050:	c0c50513          	addi	a0,a0,-1012 # 80006c58 <cons>
    80003054:	02010113          	addi	sp,sp,32
    80003058:	00001317          	auipc	t1,0x1
    8000305c:	eb030067          	jr	-336(t1) # 80003f08 <release>
    80003060:	00a00493          	li	s1,10
    80003064:	fc1ff06f          	j	80003024 <consoleintr+0x50>

0000000080003068 <consoleinit>:
    80003068:	fe010113          	addi	sp,sp,-32
    8000306c:	00113c23          	sd	ra,24(sp)
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	02010413          	addi	s0,sp,32
    8000307c:	00004497          	auipc	s1,0x4
    80003080:	bdc48493          	addi	s1,s1,-1060 # 80006c58 <cons>
    80003084:	00048513          	mv	a0,s1
    80003088:	00002597          	auipc	a1,0x2
    8000308c:	20058593          	addi	a1,a1,512 # 80005288 <_ZZ8printHexmE9hexDigits+0x140>
    80003090:	00001097          	auipc	ra,0x1
    80003094:	d88080e7          	jalr	-632(ra) # 80003e18 <initlock>
    80003098:	00000097          	auipc	ra,0x0
    8000309c:	7ac080e7          	jalr	1964(ra) # 80003844 <uartinit>
    800030a0:	01813083          	ld	ra,24(sp)
    800030a4:	01013403          	ld	s0,16(sp)
    800030a8:	00000797          	auipc	a5,0x0
    800030ac:	d9c78793          	addi	a5,a5,-612 # 80002e44 <consoleread>
    800030b0:	0af4bc23          	sd	a5,184(s1)
    800030b4:	00000797          	auipc	a5,0x0
    800030b8:	cec78793          	addi	a5,a5,-788 # 80002da0 <consolewrite>
    800030bc:	0cf4b023          	sd	a5,192(s1)
    800030c0:	00813483          	ld	s1,8(sp)
    800030c4:	02010113          	addi	sp,sp,32
    800030c8:	00008067          	ret

00000000800030cc <console_read>:
    800030cc:	ff010113          	addi	sp,sp,-16
    800030d0:	00813423          	sd	s0,8(sp)
    800030d4:	01010413          	addi	s0,sp,16
    800030d8:	00813403          	ld	s0,8(sp)
    800030dc:	00004317          	auipc	t1,0x4
    800030e0:	c3433303          	ld	t1,-972(t1) # 80006d10 <devsw+0x10>
    800030e4:	01010113          	addi	sp,sp,16
    800030e8:	00030067          	jr	t1

00000000800030ec <console_write>:
    800030ec:	ff010113          	addi	sp,sp,-16
    800030f0:	00813423          	sd	s0,8(sp)
    800030f4:	01010413          	addi	s0,sp,16
    800030f8:	00813403          	ld	s0,8(sp)
    800030fc:	00004317          	auipc	t1,0x4
    80003100:	c1c33303          	ld	t1,-996(t1) # 80006d18 <devsw+0x18>
    80003104:	01010113          	addi	sp,sp,16
    80003108:	00030067          	jr	t1

000000008000310c <panic>:
    8000310c:	fe010113          	addi	sp,sp,-32
    80003110:	00113c23          	sd	ra,24(sp)
    80003114:	00813823          	sd	s0,16(sp)
    80003118:	00913423          	sd	s1,8(sp)
    8000311c:	02010413          	addi	s0,sp,32
    80003120:	00050493          	mv	s1,a0
    80003124:	00002517          	auipc	a0,0x2
    80003128:	16c50513          	addi	a0,a0,364 # 80005290 <_ZZ8printHexmE9hexDigits+0x148>
    8000312c:	00004797          	auipc	a5,0x4
    80003130:	c807a623          	sw	zero,-884(a5) # 80006db8 <pr+0x18>
    80003134:	00000097          	auipc	ra,0x0
    80003138:	034080e7          	jalr	52(ra) # 80003168 <__printf>
    8000313c:	00048513          	mv	a0,s1
    80003140:	00000097          	auipc	ra,0x0
    80003144:	028080e7          	jalr	40(ra) # 80003168 <__printf>
    80003148:	00002517          	auipc	a0,0x2
    8000314c:	fc850513          	addi	a0,a0,-56 # 80005110 <kvmincrease+0x840>
    80003150:	00000097          	auipc	ra,0x0
    80003154:	018080e7          	jalr	24(ra) # 80003168 <__printf>
    80003158:	00100793          	li	a5,1
    8000315c:	00003717          	auipc	a4,0x3
    80003160:	9cf72e23          	sw	a5,-1572(a4) # 80005b38 <panicked>
    80003164:	0000006f          	j	80003164 <panic+0x58>

0000000080003168 <__printf>:
    80003168:	f3010113          	addi	sp,sp,-208
    8000316c:	08813023          	sd	s0,128(sp)
    80003170:	07313423          	sd	s3,104(sp)
    80003174:	09010413          	addi	s0,sp,144
    80003178:	05813023          	sd	s8,64(sp)
    8000317c:	08113423          	sd	ra,136(sp)
    80003180:	06913c23          	sd	s1,120(sp)
    80003184:	07213823          	sd	s2,112(sp)
    80003188:	07413023          	sd	s4,96(sp)
    8000318c:	05513c23          	sd	s5,88(sp)
    80003190:	05613823          	sd	s6,80(sp)
    80003194:	05713423          	sd	s7,72(sp)
    80003198:	03913c23          	sd	s9,56(sp)
    8000319c:	03a13823          	sd	s10,48(sp)
    800031a0:	03b13423          	sd	s11,40(sp)
    800031a4:	00004317          	auipc	t1,0x4
    800031a8:	bfc30313          	addi	t1,t1,-1028 # 80006da0 <pr>
    800031ac:	01832c03          	lw	s8,24(t1)
    800031b0:	00b43423          	sd	a1,8(s0)
    800031b4:	00c43823          	sd	a2,16(s0)
    800031b8:	00d43c23          	sd	a3,24(s0)
    800031bc:	02e43023          	sd	a4,32(s0)
    800031c0:	02f43423          	sd	a5,40(s0)
    800031c4:	03043823          	sd	a6,48(s0)
    800031c8:	03143c23          	sd	a7,56(s0)
    800031cc:	00050993          	mv	s3,a0
    800031d0:	4a0c1663          	bnez	s8,8000367c <__printf+0x514>
    800031d4:	60098c63          	beqz	s3,800037ec <__printf+0x684>
    800031d8:	0009c503          	lbu	a0,0(s3)
    800031dc:	00840793          	addi	a5,s0,8
    800031e0:	f6f43c23          	sd	a5,-136(s0)
    800031e4:	00000493          	li	s1,0
    800031e8:	22050063          	beqz	a0,80003408 <__printf+0x2a0>
    800031ec:	00002a37          	lui	s4,0x2
    800031f0:	00018ab7          	lui	s5,0x18
    800031f4:	000f4b37          	lui	s6,0xf4
    800031f8:	00989bb7          	lui	s7,0x989
    800031fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003200:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003204:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003208:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000320c:	00148c9b          	addiw	s9,s1,1
    80003210:	02500793          	li	a5,37
    80003214:	01998933          	add	s2,s3,s9
    80003218:	38f51263          	bne	a0,a5,8000359c <__printf+0x434>
    8000321c:	00094783          	lbu	a5,0(s2)
    80003220:	00078c9b          	sext.w	s9,a5
    80003224:	1e078263          	beqz	a5,80003408 <__printf+0x2a0>
    80003228:	0024849b          	addiw	s1,s1,2
    8000322c:	07000713          	li	a4,112
    80003230:	00998933          	add	s2,s3,s1
    80003234:	38e78a63          	beq	a5,a4,800035c8 <__printf+0x460>
    80003238:	20f76863          	bltu	a4,a5,80003448 <__printf+0x2e0>
    8000323c:	42a78863          	beq	a5,a0,8000366c <__printf+0x504>
    80003240:	06400713          	li	a4,100
    80003244:	40e79663          	bne	a5,a4,80003650 <__printf+0x4e8>
    80003248:	f7843783          	ld	a5,-136(s0)
    8000324c:	0007a603          	lw	a2,0(a5)
    80003250:	00878793          	addi	a5,a5,8
    80003254:	f6f43c23          	sd	a5,-136(s0)
    80003258:	42064a63          	bltz	a2,8000368c <__printf+0x524>
    8000325c:	00a00713          	li	a4,10
    80003260:	02e677bb          	remuw	a5,a2,a4
    80003264:	00002d97          	auipc	s11,0x2
    80003268:	054d8d93          	addi	s11,s11,84 # 800052b8 <digits>
    8000326c:	00900593          	li	a1,9
    80003270:	0006051b          	sext.w	a0,a2
    80003274:	00000c93          	li	s9,0
    80003278:	02079793          	slli	a5,a5,0x20
    8000327c:	0207d793          	srli	a5,a5,0x20
    80003280:	00fd87b3          	add	a5,s11,a5
    80003284:	0007c783          	lbu	a5,0(a5)
    80003288:	02e656bb          	divuw	a3,a2,a4
    8000328c:	f8f40023          	sb	a5,-128(s0)
    80003290:	14c5d863          	bge	a1,a2,800033e0 <__printf+0x278>
    80003294:	06300593          	li	a1,99
    80003298:	00100c93          	li	s9,1
    8000329c:	02e6f7bb          	remuw	a5,a3,a4
    800032a0:	02079793          	slli	a5,a5,0x20
    800032a4:	0207d793          	srli	a5,a5,0x20
    800032a8:	00fd87b3          	add	a5,s11,a5
    800032ac:	0007c783          	lbu	a5,0(a5)
    800032b0:	02e6d73b          	divuw	a4,a3,a4
    800032b4:	f8f400a3          	sb	a5,-127(s0)
    800032b8:	12a5f463          	bgeu	a1,a0,800033e0 <__printf+0x278>
    800032bc:	00a00693          	li	a3,10
    800032c0:	00900593          	li	a1,9
    800032c4:	02d777bb          	remuw	a5,a4,a3
    800032c8:	02079793          	slli	a5,a5,0x20
    800032cc:	0207d793          	srli	a5,a5,0x20
    800032d0:	00fd87b3          	add	a5,s11,a5
    800032d4:	0007c503          	lbu	a0,0(a5)
    800032d8:	02d757bb          	divuw	a5,a4,a3
    800032dc:	f8a40123          	sb	a0,-126(s0)
    800032e0:	48e5f263          	bgeu	a1,a4,80003764 <__printf+0x5fc>
    800032e4:	06300513          	li	a0,99
    800032e8:	02d7f5bb          	remuw	a1,a5,a3
    800032ec:	02059593          	slli	a1,a1,0x20
    800032f0:	0205d593          	srli	a1,a1,0x20
    800032f4:	00bd85b3          	add	a1,s11,a1
    800032f8:	0005c583          	lbu	a1,0(a1)
    800032fc:	02d7d7bb          	divuw	a5,a5,a3
    80003300:	f8b401a3          	sb	a1,-125(s0)
    80003304:	48e57263          	bgeu	a0,a4,80003788 <__printf+0x620>
    80003308:	3e700513          	li	a0,999
    8000330c:	02d7f5bb          	remuw	a1,a5,a3
    80003310:	02059593          	slli	a1,a1,0x20
    80003314:	0205d593          	srli	a1,a1,0x20
    80003318:	00bd85b3          	add	a1,s11,a1
    8000331c:	0005c583          	lbu	a1,0(a1)
    80003320:	02d7d7bb          	divuw	a5,a5,a3
    80003324:	f8b40223          	sb	a1,-124(s0)
    80003328:	46e57663          	bgeu	a0,a4,80003794 <__printf+0x62c>
    8000332c:	02d7f5bb          	remuw	a1,a5,a3
    80003330:	02059593          	slli	a1,a1,0x20
    80003334:	0205d593          	srli	a1,a1,0x20
    80003338:	00bd85b3          	add	a1,s11,a1
    8000333c:	0005c583          	lbu	a1,0(a1)
    80003340:	02d7d7bb          	divuw	a5,a5,a3
    80003344:	f8b402a3          	sb	a1,-123(s0)
    80003348:	46ea7863          	bgeu	s4,a4,800037b8 <__printf+0x650>
    8000334c:	02d7f5bb          	remuw	a1,a5,a3
    80003350:	02059593          	slli	a1,a1,0x20
    80003354:	0205d593          	srli	a1,a1,0x20
    80003358:	00bd85b3          	add	a1,s11,a1
    8000335c:	0005c583          	lbu	a1,0(a1)
    80003360:	02d7d7bb          	divuw	a5,a5,a3
    80003364:	f8b40323          	sb	a1,-122(s0)
    80003368:	3eeaf863          	bgeu	s5,a4,80003758 <__printf+0x5f0>
    8000336c:	02d7f5bb          	remuw	a1,a5,a3
    80003370:	02059593          	slli	a1,a1,0x20
    80003374:	0205d593          	srli	a1,a1,0x20
    80003378:	00bd85b3          	add	a1,s11,a1
    8000337c:	0005c583          	lbu	a1,0(a1)
    80003380:	02d7d7bb          	divuw	a5,a5,a3
    80003384:	f8b403a3          	sb	a1,-121(s0)
    80003388:	42eb7e63          	bgeu	s6,a4,800037c4 <__printf+0x65c>
    8000338c:	02d7f5bb          	remuw	a1,a5,a3
    80003390:	02059593          	slli	a1,a1,0x20
    80003394:	0205d593          	srli	a1,a1,0x20
    80003398:	00bd85b3          	add	a1,s11,a1
    8000339c:	0005c583          	lbu	a1,0(a1)
    800033a0:	02d7d7bb          	divuw	a5,a5,a3
    800033a4:	f8b40423          	sb	a1,-120(s0)
    800033a8:	42ebfc63          	bgeu	s7,a4,800037e0 <__printf+0x678>
    800033ac:	02079793          	slli	a5,a5,0x20
    800033b0:	0207d793          	srli	a5,a5,0x20
    800033b4:	00fd8db3          	add	s11,s11,a5
    800033b8:	000dc703          	lbu	a4,0(s11)
    800033bc:	00a00793          	li	a5,10
    800033c0:	00900c93          	li	s9,9
    800033c4:	f8e404a3          	sb	a4,-119(s0)
    800033c8:	00065c63          	bgez	a2,800033e0 <__printf+0x278>
    800033cc:	f9040713          	addi	a4,s0,-112
    800033d0:	00f70733          	add	a4,a4,a5
    800033d4:	02d00693          	li	a3,45
    800033d8:	fed70823          	sb	a3,-16(a4)
    800033dc:	00078c93          	mv	s9,a5
    800033e0:	f8040793          	addi	a5,s0,-128
    800033e4:	01978cb3          	add	s9,a5,s9
    800033e8:	f7f40d13          	addi	s10,s0,-129
    800033ec:	000cc503          	lbu	a0,0(s9)
    800033f0:	fffc8c93          	addi	s9,s9,-1
    800033f4:	00000097          	auipc	ra,0x0
    800033f8:	b90080e7          	jalr	-1136(ra) # 80002f84 <consputc>
    800033fc:	ffac98e3          	bne	s9,s10,800033ec <__printf+0x284>
    80003400:	00094503          	lbu	a0,0(s2)
    80003404:	e00514e3          	bnez	a0,8000320c <__printf+0xa4>
    80003408:	1a0c1663          	bnez	s8,800035b4 <__printf+0x44c>
    8000340c:	08813083          	ld	ra,136(sp)
    80003410:	08013403          	ld	s0,128(sp)
    80003414:	07813483          	ld	s1,120(sp)
    80003418:	07013903          	ld	s2,112(sp)
    8000341c:	06813983          	ld	s3,104(sp)
    80003420:	06013a03          	ld	s4,96(sp)
    80003424:	05813a83          	ld	s5,88(sp)
    80003428:	05013b03          	ld	s6,80(sp)
    8000342c:	04813b83          	ld	s7,72(sp)
    80003430:	04013c03          	ld	s8,64(sp)
    80003434:	03813c83          	ld	s9,56(sp)
    80003438:	03013d03          	ld	s10,48(sp)
    8000343c:	02813d83          	ld	s11,40(sp)
    80003440:	0d010113          	addi	sp,sp,208
    80003444:	00008067          	ret
    80003448:	07300713          	li	a4,115
    8000344c:	1ce78a63          	beq	a5,a4,80003620 <__printf+0x4b8>
    80003450:	07800713          	li	a4,120
    80003454:	1ee79e63          	bne	a5,a4,80003650 <__printf+0x4e8>
    80003458:	f7843783          	ld	a5,-136(s0)
    8000345c:	0007a703          	lw	a4,0(a5)
    80003460:	00878793          	addi	a5,a5,8
    80003464:	f6f43c23          	sd	a5,-136(s0)
    80003468:	28074263          	bltz	a4,800036ec <__printf+0x584>
    8000346c:	00002d97          	auipc	s11,0x2
    80003470:	e4cd8d93          	addi	s11,s11,-436 # 800052b8 <digits>
    80003474:	00f77793          	andi	a5,a4,15
    80003478:	00fd87b3          	add	a5,s11,a5
    8000347c:	0007c683          	lbu	a3,0(a5)
    80003480:	00f00613          	li	a2,15
    80003484:	0007079b          	sext.w	a5,a4
    80003488:	f8d40023          	sb	a3,-128(s0)
    8000348c:	0047559b          	srliw	a1,a4,0x4
    80003490:	0047569b          	srliw	a3,a4,0x4
    80003494:	00000c93          	li	s9,0
    80003498:	0ee65063          	bge	a2,a4,80003578 <__printf+0x410>
    8000349c:	00f6f693          	andi	a3,a3,15
    800034a0:	00dd86b3          	add	a3,s11,a3
    800034a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800034a8:	0087d79b          	srliw	a5,a5,0x8
    800034ac:	00100c93          	li	s9,1
    800034b0:	f8d400a3          	sb	a3,-127(s0)
    800034b4:	0cb67263          	bgeu	a2,a1,80003578 <__printf+0x410>
    800034b8:	00f7f693          	andi	a3,a5,15
    800034bc:	00dd86b3          	add	a3,s11,a3
    800034c0:	0006c583          	lbu	a1,0(a3)
    800034c4:	00f00613          	li	a2,15
    800034c8:	0047d69b          	srliw	a3,a5,0x4
    800034cc:	f8b40123          	sb	a1,-126(s0)
    800034d0:	0047d593          	srli	a1,a5,0x4
    800034d4:	28f67e63          	bgeu	a2,a5,80003770 <__printf+0x608>
    800034d8:	00f6f693          	andi	a3,a3,15
    800034dc:	00dd86b3          	add	a3,s11,a3
    800034e0:	0006c503          	lbu	a0,0(a3)
    800034e4:	0087d813          	srli	a6,a5,0x8
    800034e8:	0087d69b          	srliw	a3,a5,0x8
    800034ec:	f8a401a3          	sb	a0,-125(s0)
    800034f0:	28b67663          	bgeu	a2,a1,8000377c <__printf+0x614>
    800034f4:	00f6f693          	andi	a3,a3,15
    800034f8:	00dd86b3          	add	a3,s11,a3
    800034fc:	0006c583          	lbu	a1,0(a3)
    80003500:	00c7d513          	srli	a0,a5,0xc
    80003504:	00c7d69b          	srliw	a3,a5,0xc
    80003508:	f8b40223          	sb	a1,-124(s0)
    8000350c:	29067a63          	bgeu	a2,a6,800037a0 <__printf+0x638>
    80003510:	00f6f693          	andi	a3,a3,15
    80003514:	00dd86b3          	add	a3,s11,a3
    80003518:	0006c583          	lbu	a1,0(a3)
    8000351c:	0107d813          	srli	a6,a5,0x10
    80003520:	0107d69b          	srliw	a3,a5,0x10
    80003524:	f8b402a3          	sb	a1,-123(s0)
    80003528:	28a67263          	bgeu	a2,a0,800037ac <__printf+0x644>
    8000352c:	00f6f693          	andi	a3,a3,15
    80003530:	00dd86b3          	add	a3,s11,a3
    80003534:	0006c683          	lbu	a3,0(a3)
    80003538:	0147d79b          	srliw	a5,a5,0x14
    8000353c:	f8d40323          	sb	a3,-122(s0)
    80003540:	21067663          	bgeu	a2,a6,8000374c <__printf+0x5e4>
    80003544:	02079793          	slli	a5,a5,0x20
    80003548:	0207d793          	srli	a5,a5,0x20
    8000354c:	00fd8db3          	add	s11,s11,a5
    80003550:	000dc683          	lbu	a3,0(s11)
    80003554:	00800793          	li	a5,8
    80003558:	00700c93          	li	s9,7
    8000355c:	f8d403a3          	sb	a3,-121(s0)
    80003560:	00075c63          	bgez	a4,80003578 <__printf+0x410>
    80003564:	f9040713          	addi	a4,s0,-112
    80003568:	00f70733          	add	a4,a4,a5
    8000356c:	02d00693          	li	a3,45
    80003570:	fed70823          	sb	a3,-16(a4)
    80003574:	00078c93          	mv	s9,a5
    80003578:	f8040793          	addi	a5,s0,-128
    8000357c:	01978cb3          	add	s9,a5,s9
    80003580:	f7f40d13          	addi	s10,s0,-129
    80003584:	000cc503          	lbu	a0,0(s9)
    80003588:	fffc8c93          	addi	s9,s9,-1
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	9f8080e7          	jalr	-1544(ra) # 80002f84 <consputc>
    80003594:	ff9d18e3          	bne	s10,s9,80003584 <__printf+0x41c>
    80003598:	0100006f          	j	800035a8 <__printf+0x440>
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	9e8080e7          	jalr	-1560(ra) # 80002f84 <consputc>
    800035a4:	000c8493          	mv	s1,s9
    800035a8:	00094503          	lbu	a0,0(s2)
    800035ac:	c60510e3          	bnez	a0,8000320c <__printf+0xa4>
    800035b0:	e40c0ee3          	beqz	s8,8000340c <__printf+0x2a4>
    800035b4:	00003517          	auipc	a0,0x3
    800035b8:	7ec50513          	addi	a0,a0,2028 # 80006da0 <pr>
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	94c080e7          	jalr	-1716(ra) # 80003f08 <release>
    800035c4:	e49ff06f          	j	8000340c <__printf+0x2a4>
    800035c8:	f7843783          	ld	a5,-136(s0)
    800035cc:	03000513          	li	a0,48
    800035d0:	01000d13          	li	s10,16
    800035d4:	00878713          	addi	a4,a5,8
    800035d8:	0007bc83          	ld	s9,0(a5)
    800035dc:	f6e43c23          	sd	a4,-136(s0)
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	9a4080e7          	jalr	-1628(ra) # 80002f84 <consputc>
    800035e8:	07800513          	li	a0,120
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	998080e7          	jalr	-1640(ra) # 80002f84 <consputc>
    800035f4:	00002d97          	auipc	s11,0x2
    800035f8:	cc4d8d93          	addi	s11,s11,-828 # 800052b8 <digits>
    800035fc:	03ccd793          	srli	a5,s9,0x3c
    80003600:	00fd87b3          	add	a5,s11,a5
    80003604:	0007c503          	lbu	a0,0(a5)
    80003608:	fffd0d1b          	addiw	s10,s10,-1
    8000360c:	004c9c93          	slli	s9,s9,0x4
    80003610:	00000097          	auipc	ra,0x0
    80003614:	974080e7          	jalr	-1676(ra) # 80002f84 <consputc>
    80003618:	fe0d12e3          	bnez	s10,800035fc <__printf+0x494>
    8000361c:	f8dff06f          	j	800035a8 <__printf+0x440>
    80003620:	f7843783          	ld	a5,-136(s0)
    80003624:	0007bc83          	ld	s9,0(a5)
    80003628:	00878793          	addi	a5,a5,8
    8000362c:	f6f43c23          	sd	a5,-136(s0)
    80003630:	000c9a63          	bnez	s9,80003644 <__printf+0x4dc>
    80003634:	1080006f          	j	8000373c <__printf+0x5d4>
    80003638:	001c8c93          	addi	s9,s9,1
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	948080e7          	jalr	-1720(ra) # 80002f84 <consputc>
    80003644:	000cc503          	lbu	a0,0(s9)
    80003648:	fe0518e3          	bnez	a0,80003638 <__printf+0x4d0>
    8000364c:	f5dff06f          	j	800035a8 <__printf+0x440>
    80003650:	02500513          	li	a0,37
    80003654:	00000097          	auipc	ra,0x0
    80003658:	930080e7          	jalr	-1744(ra) # 80002f84 <consputc>
    8000365c:	000c8513          	mv	a0,s9
    80003660:	00000097          	auipc	ra,0x0
    80003664:	924080e7          	jalr	-1756(ra) # 80002f84 <consputc>
    80003668:	f41ff06f          	j	800035a8 <__printf+0x440>
    8000366c:	02500513          	li	a0,37
    80003670:	00000097          	auipc	ra,0x0
    80003674:	914080e7          	jalr	-1772(ra) # 80002f84 <consputc>
    80003678:	f31ff06f          	j	800035a8 <__printf+0x440>
    8000367c:	00030513          	mv	a0,t1
    80003680:	00000097          	auipc	ra,0x0
    80003684:	7bc080e7          	jalr	1980(ra) # 80003e3c <acquire>
    80003688:	b4dff06f          	j	800031d4 <__printf+0x6c>
    8000368c:	40c0053b          	negw	a0,a2
    80003690:	00a00713          	li	a4,10
    80003694:	02e576bb          	remuw	a3,a0,a4
    80003698:	00002d97          	auipc	s11,0x2
    8000369c:	c20d8d93          	addi	s11,s11,-992 # 800052b8 <digits>
    800036a0:	ff700593          	li	a1,-9
    800036a4:	02069693          	slli	a3,a3,0x20
    800036a8:	0206d693          	srli	a3,a3,0x20
    800036ac:	00dd86b3          	add	a3,s11,a3
    800036b0:	0006c683          	lbu	a3,0(a3)
    800036b4:	02e557bb          	divuw	a5,a0,a4
    800036b8:	f8d40023          	sb	a3,-128(s0)
    800036bc:	10b65e63          	bge	a2,a1,800037d8 <__printf+0x670>
    800036c0:	06300593          	li	a1,99
    800036c4:	02e7f6bb          	remuw	a3,a5,a4
    800036c8:	02069693          	slli	a3,a3,0x20
    800036cc:	0206d693          	srli	a3,a3,0x20
    800036d0:	00dd86b3          	add	a3,s11,a3
    800036d4:	0006c683          	lbu	a3,0(a3)
    800036d8:	02e7d73b          	divuw	a4,a5,a4
    800036dc:	00200793          	li	a5,2
    800036e0:	f8d400a3          	sb	a3,-127(s0)
    800036e4:	bca5ece3          	bltu	a1,a0,800032bc <__printf+0x154>
    800036e8:	ce5ff06f          	j	800033cc <__printf+0x264>
    800036ec:	40e007bb          	negw	a5,a4
    800036f0:	00002d97          	auipc	s11,0x2
    800036f4:	bc8d8d93          	addi	s11,s11,-1080 # 800052b8 <digits>
    800036f8:	00f7f693          	andi	a3,a5,15
    800036fc:	00dd86b3          	add	a3,s11,a3
    80003700:	0006c583          	lbu	a1,0(a3)
    80003704:	ff100613          	li	a2,-15
    80003708:	0047d69b          	srliw	a3,a5,0x4
    8000370c:	f8b40023          	sb	a1,-128(s0)
    80003710:	0047d59b          	srliw	a1,a5,0x4
    80003714:	0ac75e63          	bge	a4,a2,800037d0 <__printf+0x668>
    80003718:	00f6f693          	andi	a3,a3,15
    8000371c:	00dd86b3          	add	a3,s11,a3
    80003720:	0006c603          	lbu	a2,0(a3)
    80003724:	00f00693          	li	a3,15
    80003728:	0087d79b          	srliw	a5,a5,0x8
    8000372c:	f8c400a3          	sb	a2,-127(s0)
    80003730:	d8b6e4e3          	bltu	a3,a1,800034b8 <__printf+0x350>
    80003734:	00200793          	li	a5,2
    80003738:	e2dff06f          	j	80003564 <__printf+0x3fc>
    8000373c:	00002c97          	auipc	s9,0x2
    80003740:	b5cc8c93          	addi	s9,s9,-1188 # 80005298 <_ZZ8printHexmE9hexDigits+0x150>
    80003744:	02800513          	li	a0,40
    80003748:	ef1ff06f          	j	80003638 <__printf+0x4d0>
    8000374c:	00700793          	li	a5,7
    80003750:	00600c93          	li	s9,6
    80003754:	e0dff06f          	j	80003560 <__printf+0x3f8>
    80003758:	00700793          	li	a5,7
    8000375c:	00600c93          	li	s9,6
    80003760:	c69ff06f          	j	800033c8 <__printf+0x260>
    80003764:	00300793          	li	a5,3
    80003768:	00200c93          	li	s9,2
    8000376c:	c5dff06f          	j	800033c8 <__printf+0x260>
    80003770:	00300793          	li	a5,3
    80003774:	00200c93          	li	s9,2
    80003778:	de9ff06f          	j	80003560 <__printf+0x3f8>
    8000377c:	00400793          	li	a5,4
    80003780:	00300c93          	li	s9,3
    80003784:	dddff06f          	j	80003560 <__printf+0x3f8>
    80003788:	00400793          	li	a5,4
    8000378c:	00300c93          	li	s9,3
    80003790:	c39ff06f          	j	800033c8 <__printf+0x260>
    80003794:	00500793          	li	a5,5
    80003798:	00400c93          	li	s9,4
    8000379c:	c2dff06f          	j	800033c8 <__printf+0x260>
    800037a0:	00500793          	li	a5,5
    800037a4:	00400c93          	li	s9,4
    800037a8:	db9ff06f          	j	80003560 <__printf+0x3f8>
    800037ac:	00600793          	li	a5,6
    800037b0:	00500c93          	li	s9,5
    800037b4:	dadff06f          	j	80003560 <__printf+0x3f8>
    800037b8:	00600793          	li	a5,6
    800037bc:	00500c93          	li	s9,5
    800037c0:	c09ff06f          	j	800033c8 <__printf+0x260>
    800037c4:	00800793          	li	a5,8
    800037c8:	00700c93          	li	s9,7
    800037cc:	bfdff06f          	j	800033c8 <__printf+0x260>
    800037d0:	00100793          	li	a5,1
    800037d4:	d91ff06f          	j	80003564 <__printf+0x3fc>
    800037d8:	00100793          	li	a5,1
    800037dc:	bf1ff06f          	j	800033cc <__printf+0x264>
    800037e0:	00900793          	li	a5,9
    800037e4:	00800c93          	li	s9,8
    800037e8:	be1ff06f          	j	800033c8 <__printf+0x260>
    800037ec:	00002517          	auipc	a0,0x2
    800037f0:	ab450513          	addi	a0,a0,-1356 # 800052a0 <_ZZ8printHexmE9hexDigits+0x158>
    800037f4:	00000097          	auipc	ra,0x0
    800037f8:	918080e7          	jalr	-1768(ra) # 8000310c <panic>

00000000800037fc <printfinit>:
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00813823          	sd	s0,16(sp)
    80003804:	00913423          	sd	s1,8(sp)
    80003808:	00113c23          	sd	ra,24(sp)
    8000380c:	02010413          	addi	s0,sp,32
    80003810:	00003497          	auipc	s1,0x3
    80003814:	59048493          	addi	s1,s1,1424 # 80006da0 <pr>
    80003818:	00048513          	mv	a0,s1
    8000381c:	00002597          	auipc	a1,0x2
    80003820:	a9458593          	addi	a1,a1,-1388 # 800052b0 <_ZZ8printHexmE9hexDigits+0x168>
    80003824:	00000097          	auipc	ra,0x0
    80003828:	5f4080e7          	jalr	1524(ra) # 80003e18 <initlock>
    8000382c:	01813083          	ld	ra,24(sp)
    80003830:	01013403          	ld	s0,16(sp)
    80003834:	0004ac23          	sw	zero,24(s1)
    80003838:	00813483          	ld	s1,8(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret

0000000080003844 <uartinit>:
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00813423          	sd	s0,8(sp)
    8000384c:	01010413          	addi	s0,sp,16
    80003850:	100007b7          	lui	a5,0x10000
    80003854:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003858:	f8000713          	li	a4,-128
    8000385c:	00e781a3          	sb	a4,3(a5)
    80003860:	00300713          	li	a4,3
    80003864:	00e78023          	sb	a4,0(a5)
    80003868:	000780a3          	sb	zero,1(a5)
    8000386c:	00e781a3          	sb	a4,3(a5)
    80003870:	00700693          	li	a3,7
    80003874:	00d78123          	sb	a3,2(a5)
    80003878:	00e780a3          	sb	a4,1(a5)
    8000387c:	00813403          	ld	s0,8(sp)
    80003880:	01010113          	addi	sp,sp,16
    80003884:	00008067          	ret

0000000080003888 <uartputc>:
    80003888:	00002797          	auipc	a5,0x2
    8000388c:	2b07a783          	lw	a5,688(a5) # 80005b38 <panicked>
    80003890:	00078463          	beqz	a5,80003898 <uartputc+0x10>
    80003894:	0000006f          	j	80003894 <uartputc+0xc>
    80003898:	fd010113          	addi	sp,sp,-48
    8000389c:	02813023          	sd	s0,32(sp)
    800038a0:	00913c23          	sd	s1,24(sp)
    800038a4:	01213823          	sd	s2,16(sp)
    800038a8:	01313423          	sd	s3,8(sp)
    800038ac:	02113423          	sd	ra,40(sp)
    800038b0:	03010413          	addi	s0,sp,48
    800038b4:	00002917          	auipc	s2,0x2
    800038b8:	28c90913          	addi	s2,s2,652 # 80005b40 <uart_tx_r>
    800038bc:	00093783          	ld	a5,0(s2)
    800038c0:	00002497          	auipc	s1,0x2
    800038c4:	28848493          	addi	s1,s1,648 # 80005b48 <uart_tx_w>
    800038c8:	0004b703          	ld	a4,0(s1)
    800038cc:	02078693          	addi	a3,a5,32
    800038d0:	00050993          	mv	s3,a0
    800038d4:	02e69c63          	bne	a3,a4,8000390c <uartputc+0x84>
    800038d8:	00001097          	auipc	ra,0x1
    800038dc:	834080e7          	jalr	-1996(ra) # 8000410c <push_on>
    800038e0:	00093783          	ld	a5,0(s2)
    800038e4:	0004b703          	ld	a4,0(s1)
    800038e8:	02078793          	addi	a5,a5,32
    800038ec:	00e79463          	bne	a5,a4,800038f4 <uartputc+0x6c>
    800038f0:	0000006f          	j	800038f0 <uartputc+0x68>
    800038f4:	00001097          	auipc	ra,0x1
    800038f8:	88c080e7          	jalr	-1908(ra) # 80004180 <pop_on>
    800038fc:	00093783          	ld	a5,0(s2)
    80003900:	0004b703          	ld	a4,0(s1)
    80003904:	02078693          	addi	a3,a5,32
    80003908:	fce688e3          	beq	a3,a4,800038d8 <uartputc+0x50>
    8000390c:	01f77693          	andi	a3,a4,31
    80003910:	00003597          	auipc	a1,0x3
    80003914:	4b058593          	addi	a1,a1,1200 # 80006dc0 <uart_tx_buf>
    80003918:	00d586b3          	add	a3,a1,a3
    8000391c:	00170713          	addi	a4,a4,1
    80003920:	01368023          	sb	s3,0(a3)
    80003924:	00e4b023          	sd	a4,0(s1)
    80003928:	10000637          	lui	a2,0x10000
    8000392c:	02f71063          	bne	a4,a5,8000394c <uartputc+0xc4>
    80003930:	0340006f          	j	80003964 <uartputc+0xdc>
    80003934:	00074703          	lbu	a4,0(a4)
    80003938:	00f93023          	sd	a5,0(s2)
    8000393c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003940:	00093783          	ld	a5,0(s2)
    80003944:	0004b703          	ld	a4,0(s1)
    80003948:	00f70e63          	beq	a4,a5,80003964 <uartputc+0xdc>
    8000394c:	00564683          	lbu	a3,5(a2)
    80003950:	01f7f713          	andi	a4,a5,31
    80003954:	00e58733          	add	a4,a1,a4
    80003958:	0206f693          	andi	a3,a3,32
    8000395c:	00178793          	addi	a5,a5,1
    80003960:	fc069ae3          	bnez	a3,80003934 <uartputc+0xac>
    80003964:	02813083          	ld	ra,40(sp)
    80003968:	02013403          	ld	s0,32(sp)
    8000396c:	01813483          	ld	s1,24(sp)
    80003970:	01013903          	ld	s2,16(sp)
    80003974:	00813983          	ld	s3,8(sp)
    80003978:	03010113          	addi	sp,sp,48
    8000397c:	00008067          	ret

0000000080003980 <uartputc_sync>:
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00813423          	sd	s0,8(sp)
    80003988:	01010413          	addi	s0,sp,16
    8000398c:	00002717          	auipc	a4,0x2
    80003990:	1ac72703          	lw	a4,428(a4) # 80005b38 <panicked>
    80003994:	02071663          	bnez	a4,800039c0 <uartputc_sync+0x40>
    80003998:	00050793          	mv	a5,a0
    8000399c:	100006b7          	lui	a3,0x10000
    800039a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800039a4:	02077713          	andi	a4,a4,32
    800039a8:	fe070ce3          	beqz	a4,800039a0 <uartputc_sync+0x20>
    800039ac:	0ff7f793          	andi	a5,a5,255
    800039b0:	00f68023          	sb	a5,0(a3)
    800039b4:	00813403          	ld	s0,8(sp)
    800039b8:	01010113          	addi	sp,sp,16
    800039bc:	00008067          	ret
    800039c0:	0000006f          	j	800039c0 <uartputc_sync+0x40>

00000000800039c4 <uartstart>:
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00813423          	sd	s0,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
    800039d0:	00002617          	auipc	a2,0x2
    800039d4:	17060613          	addi	a2,a2,368 # 80005b40 <uart_tx_r>
    800039d8:	00002517          	auipc	a0,0x2
    800039dc:	17050513          	addi	a0,a0,368 # 80005b48 <uart_tx_w>
    800039e0:	00063783          	ld	a5,0(a2)
    800039e4:	00053703          	ld	a4,0(a0)
    800039e8:	04f70263          	beq	a4,a5,80003a2c <uartstart+0x68>
    800039ec:	100005b7          	lui	a1,0x10000
    800039f0:	00003817          	auipc	a6,0x3
    800039f4:	3d080813          	addi	a6,a6,976 # 80006dc0 <uart_tx_buf>
    800039f8:	01c0006f          	j	80003a14 <uartstart+0x50>
    800039fc:	0006c703          	lbu	a4,0(a3)
    80003a00:	00f63023          	sd	a5,0(a2)
    80003a04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a08:	00063783          	ld	a5,0(a2)
    80003a0c:	00053703          	ld	a4,0(a0)
    80003a10:	00f70e63          	beq	a4,a5,80003a2c <uartstart+0x68>
    80003a14:	01f7f713          	andi	a4,a5,31
    80003a18:	00e806b3          	add	a3,a6,a4
    80003a1c:	0055c703          	lbu	a4,5(a1)
    80003a20:	00178793          	addi	a5,a5,1
    80003a24:	02077713          	andi	a4,a4,32
    80003a28:	fc071ae3          	bnez	a4,800039fc <uartstart+0x38>
    80003a2c:	00813403          	ld	s0,8(sp)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <uartgetc>:
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
    80003a44:	10000737          	lui	a4,0x10000
    80003a48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003a4c:	0017f793          	andi	a5,a5,1
    80003a50:	00078c63          	beqz	a5,80003a68 <uartgetc+0x30>
    80003a54:	00074503          	lbu	a0,0(a4)
    80003a58:	0ff57513          	andi	a0,a0,255
    80003a5c:	00813403          	ld	s0,8(sp)
    80003a60:	01010113          	addi	sp,sp,16
    80003a64:	00008067          	ret
    80003a68:	fff00513          	li	a0,-1
    80003a6c:	ff1ff06f          	j	80003a5c <uartgetc+0x24>

0000000080003a70 <uartintr>:
    80003a70:	100007b7          	lui	a5,0x10000
    80003a74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003a78:	0017f793          	andi	a5,a5,1
    80003a7c:	0a078463          	beqz	a5,80003b24 <uartintr+0xb4>
    80003a80:	fe010113          	addi	sp,sp,-32
    80003a84:	00813823          	sd	s0,16(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	00113c23          	sd	ra,24(sp)
    80003a90:	02010413          	addi	s0,sp,32
    80003a94:	100004b7          	lui	s1,0x10000
    80003a98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003a9c:	0ff57513          	andi	a0,a0,255
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	534080e7          	jalr	1332(ra) # 80002fd4 <consoleintr>
    80003aa8:	0054c783          	lbu	a5,5(s1)
    80003aac:	0017f793          	andi	a5,a5,1
    80003ab0:	fe0794e3          	bnez	a5,80003a98 <uartintr+0x28>
    80003ab4:	00002617          	auipc	a2,0x2
    80003ab8:	08c60613          	addi	a2,a2,140 # 80005b40 <uart_tx_r>
    80003abc:	00002517          	auipc	a0,0x2
    80003ac0:	08c50513          	addi	a0,a0,140 # 80005b48 <uart_tx_w>
    80003ac4:	00063783          	ld	a5,0(a2)
    80003ac8:	00053703          	ld	a4,0(a0)
    80003acc:	04f70263          	beq	a4,a5,80003b10 <uartintr+0xa0>
    80003ad0:	100005b7          	lui	a1,0x10000
    80003ad4:	00003817          	auipc	a6,0x3
    80003ad8:	2ec80813          	addi	a6,a6,748 # 80006dc0 <uart_tx_buf>
    80003adc:	01c0006f          	j	80003af8 <uartintr+0x88>
    80003ae0:	0006c703          	lbu	a4,0(a3)
    80003ae4:	00f63023          	sd	a5,0(a2)
    80003ae8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003aec:	00063783          	ld	a5,0(a2)
    80003af0:	00053703          	ld	a4,0(a0)
    80003af4:	00f70e63          	beq	a4,a5,80003b10 <uartintr+0xa0>
    80003af8:	01f7f713          	andi	a4,a5,31
    80003afc:	00e806b3          	add	a3,a6,a4
    80003b00:	0055c703          	lbu	a4,5(a1)
    80003b04:	00178793          	addi	a5,a5,1
    80003b08:	02077713          	andi	a4,a4,32
    80003b0c:	fc071ae3          	bnez	a4,80003ae0 <uartintr+0x70>
    80003b10:	01813083          	ld	ra,24(sp)
    80003b14:	01013403          	ld	s0,16(sp)
    80003b18:	00813483          	ld	s1,8(sp)
    80003b1c:	02010113          	addi	sp,sp,32
    80003b20:	00008067          	ret
    80003b24:	00002617          	auipc	a2,0x2
    80003b28:	01c60613          	addi	a2,a2,28 # 80005b40 <uart_tx_r>
    80003b2c:	00002517          	auipc	a0,0x2
    80003b30:	01c50513          	addi	a0,a0,28 # 80005b48 <uart_tx_w>
    80003b34:	00063783          	ld	a5,0(a2)
    80003b38:	00053703          	ld	a4,0(a0)
    80003b3c:	04f70263          	beq	a4,a5,80003b80 <uartintr+0x110>
    80003b40:	100005b7          	lui	a1,0x10000
    80003b44:	00003817          	auipc	a6,0x3
    80003b48:	27c80813          	addi	a6,a6,636 # 80006dc0 <uart_tx_buf>
    80003b4c:	01c0006f          	j	80003b68 <uartintr+0xf8>
    80003b50:	0006c703          	lbu	a4,0(a3)
    80003b54:	00f63023          	sd	a5,0(a2)
    80003b58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b5c:	00063783          	ld	a5,0(a2)
    80003b60:	00053703          	ld	a4,0(a0)
    80003b64:	02f70063          	beq	a4,a5,80003b84 <uartintr+0x114>
    80003b68:	01f7f713          	andi	a4,a5,31
    80003b6c:	00e806b3          	add	a3,a6,a4
    80003b70:	0055c703          	lbu	a4,5(a1)
    80003b74:	00178793          	addi	a5,a5,1
    80003b78:	02077713          	andi	a4,a4,32
    80003b7c:	fc071ae3          	bnez	a4,80003b50 <uartintr+0xe0>
    80003b80:	00008067          	ret
    80003b84:	00008067          	ret

0000000080003b88 <kinit>:
    80003b88:	fc010113          	addi	sp,sp,-64
    80003b8c:	02913423          	sd	s1,40(sp)
    80003b90:	fffff7b7          	lui	a5,0xfffff
    80003b94:	00004497          	auipc	s1,0x4
    80003b98:	25b48493          	addi	s1,s1,603 # 80007def <end+0xfff>
    80003b9c:	02813823          	sd	s0,48(sp)
    80003ba0:	01313c23          	sd	s3,24(sp)
    80003ba4:	00f4f4b3          	and	s1,s1,a5
    80003ba8:	02113c23          	sd	ra,56(sp)
    80003bac:	03213023          	sd	s2,32(sp)
    80003bb0:	01413823          	sd	s4,16(sp)
    80003bb4:	01513423          	sd	s5,8(sp)
    80003bb8:	04010413          	addi	s0,sp,64
    80003bbc:	000017b7          	lui	a5,0x1
    80003bc0:	01100993          	li	s3,17
    80003bc4:	00f487b3          	add	a5,s1,a5
    80003bc8:	01b99993          	slli	s3,s3,0x1b
    80003bcc:	06f9e063          	bltu	s3,a5,80003c2c <kinit+0xa4>
    80003bd0:	00003a97          	auipc	s5,0x3
    80003bd4:	220a8a93          	addi	s5,s5,544 # 80006df0 <end>
    80003bd8:	0754ec63          	bltu	s1,s5,80003c50 <kinit+0xc8>
    80003bdc:	0734fa63          	bgeu	s1,s3,80003c50 <kinit+0xc8>
    80003be0:	00088a37          	lui	s4,0x88
    80003be4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003be8:	00002917          	auipc	s2,0x2
    80003bec:	f6890913          	addi	s2,s2,-152 # 80005b50 <kmem>
    80003bf0:	00ca1a13          	slli	s4,s4,0xc
    80003bf4:	0140006f          	j	80003c08 <kinit+0x80>
    80003bf8:	000017b7          	lui	a5,0x1
    80003bfc:	00f484b3          	add	s1,s1,a5
    80003c00:	0554e863          	bltu	s1,s5,80003c50 <kinit+0xc8>
    80003c04:	0534f663          	bgeu	s1,s3,80003c50 <kinit+0xc8>
    80003c08:	00001637          	lui	a2,0x1
    80003c0c:	00100593          	li	a1,1
    80003c10:	00048513          	mv	a0,s1
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	5e4080e7          	jalr	1508(ra) # 800041f8 <__memset>
    80003c1c:	00093783          	ld	a5,0(s2)
    80003c20:	00f4b023          	sd	a5,0(s1)
    80003c24:	00993023          	sd	s1,0(s2)
    80003c28:	fd4498e3          	bne	s1,s4,80003bf8 <kinit+0x70>
    80003c2c:	03813083          	ld	ra,56(sp)
    80003c30:	03013403          	ld	s0,48(sp)
    80003c34:	02813483          	ld	s1,40(sp)
    80003c38:	02013903          	ld	s2,32(sp)
    80003c3c:	01813983          	ld	s3,24(sp)
    80003c40:	01013a03          	ld	s4,16(sp)
    80003c44:	00813a83          	ld	s5,8(sp)
    80003c48:	04010113          	addi	sp,sp,64
    80003c4c:	00008067          	ret
    80003c50:	00001517          	auipc	a0,0x1
    80003c54:	68050513          	addi	a0,a0,1664 # 800052d0 <digits+0x18>
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	4b4080e7          	jalr	1204(ra) # 8000310c <panic>

0000000080003c60 <freerange>:
    80003c60:	fc010113          	addi	sp,sp,-64
    80003c64:	000017b7          	lui	a5,0x1
    80003c68:	02913423          	sd	s1,40(sp)
    80003c6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003c70:	009504b3          	add	s1,a0,s1
    80003c74:	fffff537          	lui	a0,0xfffff
    80003c78:	02813823          	sd	s0,48(sp)
    80003c7c:	02113c23          	sd	ra,56(sp)
    80003c80:	03213023          	sd	s2,32(sp)
    80003c84:	01313c23          	sd	s3,24(sp)
    80003c88:	01413823          	sd	s4,16(sp)
    80003c8c:	01513423          	sd	s5,8(sp)
    80003c90:	01613023          	sd	s6,0(sp)
    80003c94:	04010413          	addi	s0,sp,64
    80003c98:	00a4f4b3          	and	s1,s1,a0
    80003c9c:	00f487b3          	add	a5,s1,a5
    80003ca0:	06f5e463          	bltu	a1,a5,80003d08 <freerange+0xa8>
    80003ca4:	00003a97          	auipc	s5,0x3
    80003ca8:	14ca8a93          	addi	s5,s5,332 # 80006df0 <end>
    80003cac:	0954e263          	bltu	s1,s5,80003d30 <freerange+0xd0>
    80003cb0:	01100993          	li	s3,17
    80003cb4:	01b99993          	slli	s3,s3,0x1b
    80003cb8:	0734fc63          	bgeu	s1,s3,80003d30 <freerange+0xd0>
    80003cbc:	00058a13          	mv	s4,a1
    80003cc0:	00002917          	auipc	s2,0x2
    80003cc4:	e9090913          	addi	s2,s2,-368 # 80005b50 <kmem>
    80003cc8:	00002b37          	lui	s6,0x2
    80003ccc:	0140006f          	j	80003ce0 <freerange+0x80>
    80003cd0:	000017b7          	lui	a5,0x1
    80003cd4:	00f484b3          	add	s1,s1,a5
    80003cd8:	0554ec63          	bltu	s1,s5,80003d30 <freerange+0xd0>
    80003cdc:	0534fa63          	bgeu	s1,s3,80003d30 <freerange+0xd0>
    80003ce0:	00001637          	lui	a2,0x1
    80003ce4:	00100593          	li	a1,1
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00000097          	auipc	ra,0x0
    80003cf0:	50c080e7          	jalr	1292(ra) # 800041f8 <__memset>
    80003cf4:	00093703          	ld	a4,0(s2)
    80003cf8:	016487b3          	add	a5,s1,s6
    80003cfc:	00e4b023          	sd	a4,0(s1)
    80003d00:	00993023          	sd	s1,0(s2)
    80003d04:	fcfa76e3          	bgeu	s4,a5,80003cd0 <freerange+0x70>
    80003d08:	03813083          	ld	ra,56(sp)
    80003d0c:	03013403          	ld	s0,48(sp)
    80003d10:	02813483          	ld	s1,40(sp)
    80003d14:	02013903          	ld	s2,32(sp)
    80003d18:	01813983          	ld	s3,24(sp)
    80003d1c:	01013a03          	ld	s4,16(sp)
    80003d20:	00813a83          	ld	s5,8(sp)
    80003d24:	00013b03          	ld	s6,0(sp)
    80003d28:	04010113          	addi	sp,sp,64
    80003d2c:	00008067          	ret
    80003d30:	00001517          	auipc	a0,0x1
    80003d34:	5a050513          	addi	a0,a0,1440 # 800052d0 <digits+0x18>
    80003d38:	fffff097          	auipc	ra,0xfffff
    80003d3c:	3d4080e7          	jalr	980(ra) # 8000310c <panic>

0000000080003d40 <kfree>:
    80003d40:	fe010113          	addi	sp,sp,-32
    80003d44:	00813823          	sd	s0,16(sp)
    80003d48:	00113c23          	sd	ra,24(sp)
    80003d4c:	00913423          	sd	s1,8(sp)
    80003d50:	02010413          	addi	s0,sp,32
    80003d54:	03451793          	slli	a5,a0,0x34
    80003d58:	04079c63          	bnez	a5,80003db0 <kfree+0x70>
    80003d5c:	00003797          	auipc	a5,0x3
    80003d60:	09478793          	addi	a5,a5,148 # 80006df0 <end>
    80003d64:	00050493          	mv	s1,a0
    80003d68:	04f56463          	bltu	a0,a5,80003db0 <kfree+0x70>
    80003d6c:	01100793          	li	a5,17
    80003d70:	01b79793          	slli	a5,a5,0x1b
    80003d74:	02f57e63          	bgeu	a0,a5,80003db0 <kfree+0x70>
    80003d78:	00001637          	lui	a2,0x1
    80003d7c:	00100593          	li	a1,1
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	478080e7          	jalr	1144(ra) # 800041f8 <__memset>
    80003d88:	00002797          	auipc	a5,0x2
    80003d8c:	dc878793          	addi	a5,a5,-568 # 80005b50 <kmem>
    80003d90:	0007b703          	ld	a4,0(a5)
    80003d94:	01813083          	ld	ra,24(sp)
    80003d98:	01013403          	ld	s0,16(sp)
    80003d9c:	00e4b023          	sd	a4,0(s1)
    80003da0:	0097b023          	sd	s1,0(a5)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret
    80003db0:	00001517          	auipc	a0,0x1
    80003db4:	52050513          	addi	a0,a0,1312 # 800052d0 <digits+0x18>
    80003db8:	fffff097          	auipc	ra,0xfffff
    80003dbc:	354080e7          	jalr	852(ra) # 8000310c <panic>

0000000080003dc0 <kalloc>:
    80003dc0:	fe010113          	addi	sp,sp,-32
    80003dc4:	00813823          	sd	s0,16(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	00113c23          	sd	ra,24(sp)
    80003dd0:	02010413          	addi	s0,sp,32
    80003dd4:	00002797          	auipc	a5,0x2
    80003dd8:	d7c78793          	addi	a5,a5,-644 # 80005b50 <kmem>
    80003ddc:	0007b483          	ld	s1,0(a5)
    80003de0:	02048063          	beqz	s1,80003e00 <kalloc+0x40>
    80003de4:	0004b703          	ld	a4,0(s1)
    80003de8:	00001637          	lui	a2,0x1
    80003dec:	00500593          	li	a1,5
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00e7b023          	sd	a4,0(a5)
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	400080e7          	jalr	1024(ra) # 800041f8 <__memset>
    80003e00:	01813083          	ld	ra,24(sp)
    80003e04:	01013403          	ld	s0,16(sp)
    80003e08:	00048513          	mv	a0,s1
    80003e0c:	00813483          	ld	s1,8(sp)
    80003e10:	02010113          	addi	sp,sp,32
    80003e14:	00008067          	ret

0000000080003e18 <initlock>:
    80003e18:	ff010113          	addi	sp,sp,-16
    80003e1c:	00813423          	sd	s0,8(sp)
    80003e20:	01010413          	addi	s0,sp,16
    80003e24:	00813403          	ld	s0,8(sp)
    80003e28:	00b53423          	sd	a1,8(a0)
    80003e2c:	00052023          	sw	zero,0(a0)
    80003e30:	00053823          	sd	zero,16(a0)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret

0000000080003e3c <acquire>:
    80003e3c:	fe010113          	addi	sp,sp,-32
    80003e40:	00813823          	sd	s0,16(sp)
    80003e44:	00913423          	sd	s1,8(sp)
    80003e48:	00113c23          	sd	ra,24(sp)
    80003e4c:	01213023          	sd	s2,0(sp)
    80003e50:	02010413          	addi	s0,sp,32
    80003e54:	00050493          	mv	s1,a0
    80003e58:	10002973          	csrr	s2,sstatus
    80003e5c:	100027f3          	csrr	a5,sstatus
    80003e60:	ffd7f793          	andi	a5,a5,-3
    80003e64:	10079073          	csrw	sstatus,a5
    80003e68:	fffff097          	auipc	ra,0xfffff
    80003e6c:	8e4080e7          	jalr	-1820(ra) # 8000274c <mycpu>
    80003e70:	07852783          	lw	a5,120(a0)
    80003e74:	06078e63          	beqz	a5,80003ef0 <acquire+0xb4>
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	8d4080e7          	jalr	-1836(ra) # 8000274c <mycpu>
    80003e80:	07852783          	lw	a5,120(a0)
    80003e84:	0004a703          	lw	a4,0(s1)
    80003e88:	0017879b          	addiw	a5,a5,1
    80003e8c:	06f52c23          	sw	a5,120(a0)
    80003e90:	04071063          	bnez	a4,80003ed0 <acquire+0x94>
    80003e94:	00100713          	li	a4,1
    80003e98:	00070793          	mv	a5,a4
    80003e9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003ea0:	0007879b          	sext.w	a5,a5
    80003ea4:	fe079ae3          	bnez	a5,80003e98 <acquire+0x5c>
    80003ea8:	0ff0000f          	fence
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	8a0080e7          	jalr	-1888(ra) # 8000274c <mycpu>
    80003eb4:	01813083          	ld	ra,24(sp)
    80003eb8:	01013403          	ld	s0,16(sp)
    80003ebc:	00a4b823          	sd	a0,16(s1)
    80003ec0:	00013903          	ld	s2,0(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret
    80003ed0:	0104b903          	ld	s2,16(s1)
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	878080e7          	jalr	-1928(ra) # 8000274c <mycpu>
    80003edc:	faa91ce3          	bne	s2,a0,80003e94 <acquire+0x58>
    80003ee0:	00001517          	auipc	a0,0x1
    80003ee4:	3f850513          	addi	a0,a0,1016 # 800052d8 <digits+0x20>
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	224080e7          	jalr	548(ra) # 8000310c <panic>
    80003ef0:	00195913          	srli	s2,s2,0x1
    80003ef4:	fffff097          	auipc	ra,0xfffff
    80003ef8:	858080e7          	jalr	-1960(ra) # 8000274c <mycpu>
    80003efc:	00197913          	andi	s2,s2,1
    80003f00:	07252e23          	sw	s2,124(a0)
    80003f04:	f75ff06f          	j	80003e78 <acquire+0x3c>

0000000080003f08 <release>:
    80003f08:	fe010113          	addi	sp,sp,-32
    80003f0c:	00813823          	sd	s0,16(sp)
    80003f10:	00113c23          	sd	ra,24(sp)
    80003f14:	00913423          	sd	s1,8(sp)
    80003f18:	01213023          	sd	s2,0(sp)
    80003f1c:	02010413          	addi	s0,sp,32
    80003f20:	00052783          	lw	a5,0(a0)
    80003f24:	00079a63          	bnez	a5,80003f38 <release+0x30>
    80003f28:	00001517          	auipc	a0,0x1
    80003f2c:	3b850513          	addi	a0,a0,952 # 800052e0 <digits+0x28>
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	1dc080e7          	jalr	476(ra) # 8000310c <panic>
    80003f38:	01053903          	ld	s2,16(a0)
    80003f3c:	00050493          	mv	s1,a0
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	80c080e7          	jalr	-2036(ra) # 8000274c <mycpu>
    80003f48:	fea910e3          	bne	s2,a0,80003f28 <release+0x20>
    80003f4c:	0004b823          	sd	zero,16(s1)
    80003f50:	0ff0000f          	fence
    80003f54:	0f50000f          	fence	iorw,ow
    80003f58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	7f0080e7          	jalr	2032(ra) # 8000274c <mycpu>
    80003f64:	100027f3          	csrr	a5,sstatus
    80003f68:	0027f793          	andi	a5,a5,2
    80003f6c:	04079a63          	bnez	a5,80003fc0 <release+0xb8>
    80003f70:	07852783          	lw	a5,120(a0)
    80003f74:	02f05e63          	blez	a5,80003fb0 <release+0xa8>
    80003f78:	fff7871b          	addiw	a4,a5,-1
    80003f7c:	06e52c23          	sw	a4,120(a0)
    80003f80:	00071c63          	bnez	a4,80003f98 <release+0x90>
    80003f84:	07c52783          	lw	a5,124(a0)
    80003f88:	00078863          	beqz	a5,80003f98 <release+0x90>
    80003f8c:	100027f3          	csrr	a5,sstatus
    80003f90:	0027e793          	ori	a5,a5,2
    80003f94:	10079073          	csrw	sstatus,a5
    80003f98:	01813083          	ld	ra,24(sp)
    80003f9c:	01013403          	ld	s0,16(sp)
    80003fa0:	00813483          	ld	s1,8(sp)
    80003fa4:	00013903          	ld	s2,0(sp)
    80003fa8:	02010113          	addi	sp,sp,32
    80003fac:	00008067          	ret
    80003fb0:	00001517          	auipc	a0,0x1
    80003fb4:	35050513          	addi	a0,a0,848 # 80005300 <digits+0x48>
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	154080e7          	jalr	340(ra) # 8000310c <panic>
    80003fc0:	00001517          	auipc	a0,0x1
    80003fc4:	32850513          	addi	a0,a0,808 # 800052e8 <digits+0x30>
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	144080e7          	jalr	324(ra) # 8000310c <panic>

0000000080003fd0 <holding>:
    80003fd0:	00052783          	lw	a5,0(a0)
    80003fd4:	00079663          	bnez	a5,80003fe0 <holding+0x10>
    80003fd8:	00000513          	li	a0,0
    80003fdc:	00008067          	ret
    80003fe0:	fe010113          	addi	sp,sp,-32
    80003fe4:	00813823          	sd	s0,16(sp)
    80003fe8:	00913423          	sd	s1,8(sp)
    80003fec:	00113c23          	sd	ra,24(sp)
    80003ff0:	02010413          	addi	s0,sp,32
    80003ff4:	01053483          	ld	s1,16(a0)
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	754080e7          	jalr	1876(ra) # 8000274c <mycpu>
    80004000:	01813083          	ld	ra,24(sp)
    80004004:	01013403          	ld	s0,16(sp)
    80004008:	40a48533          	sub	a0,s1,a0
    8000400c:	00153513          	seqz	a0,a0
    80004010:	00813483          	ld	s1,8(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret

000000008000401c <push_off>:
    8000401c:	fe010113          	addi	sp,sp,-32
    80004020:	00813823          	sd	s0,16(sp)
    80004024:	00113c23          	sd	ra,24(sp)
    80004028:	00913423          	sd	s1,8(sp)
    8000402c:	02010413          	addi	s0,sp,32
    80004030:	100024f3          	csrr	s1,sstatus
    80004034:	100027f3          	csrr	a5,sstatus
    80004038:	ffd7f793          	andi	a5,a5,-3
    8000403c:	10079073          	csrw	sstatus,a5
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	70c080e7          	jalr	1804(ra) # 8000274c <mycpu>
    80004048:	07852783          	lw	a5,120(a0)
    8000404c:	02078663          	beqz	a5,80004078 <push_off+0x5c>
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	6fc080e7          	jalr	1788(ra) # 8000274c <mycpu>
    80004058:	07852783          	lw	a5,120(a0)
    8000405c:	01813083          	ld	ra,24(sp)
    80004060:	01013403          	ld	s0,16(sp)
    80004064:	0017879b          	addiw	a5,a5,1
    80004068:	06f52c23          	sw	a5,120(a0)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	02010113          	addi	sp,sp,32
    80004074:	00008067          	ret
    80004078:	0014d493          	srli	s1,s1,0x1
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	6d0080e7          	jalr	1744(ra) # 8000274c <mycpu>
    80004084:	0014f493          	andi	s1,s1,1
    80004088:	06952e23          	sw	s1,124(a0)
    8000408c:	fc5ff06f          	j	80004050 <push_off+0x34>

0000000080004090 <pop_off>:
    80004090:	ff010113          	addi	sp,sp,-16
    80004094:	00813023          	sd	s0,0(sp)
    80004098:	00113423          	sd	ra,8(sp)
    8000409c:	01010413          	addi	s0,sp,16
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	6ac080e7          	jalr	1708(ra) # 8000274c <mycpu>
    800040a8:	100027f3          	csrr	a5,sstatus
    800040ac:	0027f793          	andi	a5,a5,2
    800040b0:	04079663          	bnez	a5,800040fc <pop_off+0x6c>
    800040b4:	07852783          	lw	a5,120(a0)
    800040b8:	02f05a63          	blez	a5,800040ec <pop_off+0x5c>
    800040bc:	fff7871b          	addiw	a4,a5,-1
    800040c0:	06e52c23          	sw	a4,120(a0)
    800040c4:	00071c63          	bnez	a4,800040dc <pop_off+0x4c>
    800040c8:	07c52783          	lw	a5,124(a0)
    800040cc:	00078863          	beqz	a5,800040dc <pop_off+0x4c>
    800040d0:	100027f3          	csrr	a5,sstatus
    800040d4:	0027e793          	ori	a5,a5,2
    800040d8:	10079073          	csrw	sstatus,a5
    800040dc:	00813083          	ld	ra,8(sp)
    800040e0:	00013403          	ld	s0,0(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret
    800040ec:	00001517          	auipc	a0,0x1
    800040f0:	21450513          	addi	a0,a0,532 # 80005300 <digits+0x48>
    800040f4:	fffff097          	auipc	ra,0xfffff
    800040f8:	018080e7          	jalr	24(ra) # 8000310c <panic>
    800040fc:	00001517          	auipc	a0,0x1
    80004100:	1ec50513          	addi	a0,a0,492 # 800052e8 <digits+0x30>
    80004104:	fffff097          	auipc	ra,0xfffff
    80004108:	008080e7          	jalr	8(ra) # 8000310c <panic>

000000008000410c <push_on>:
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00813823          	sd	s0,16(sp)
    80004114:	00113c23          	sd	ra,24(sp)
    80004118:	00913423          	sd	s1,8(sp)
    8000411c:	02010413          	addi	s0,sp,32
    80004120:	100024f3          	csrr	s1,sstatus
    80004124:	100027f3          	csrr	a5,sstatus
    80004128:	0027e793          	ori	a5,a5,2
    8000412c:	10079073          	csrw	sstatus,a5
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	61c080e7          	jalr	1564(ra) # 8000274c <mycpu>
    80004138:	07852783          	lw	a5,120(a0)
    8000413c:	02078663          	beqz	a5,80004168 <push_on+0x5c>
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	60c080e7          	jalr	1548(ra) # 8000274c <mycpu>
    80004148:	07852783          	lw	a5,120(a0)
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	01013403          	ld	s0,16(sp)
    80004154:	0017879b          	addiw	a5,a5,1
    80004158:	06f52c23          	sw	a5,120(a0)
    8000415c:	00813483          	ld	s1,8(sp)
    80004160:	02010113          	addi	sp,sp,32
    80004164:	00008067          	ret
    80004168:	0014d493          	srli	s1,s1,0x1
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	5e0080e7          	jalr	1504(ra) # 8000274c <mycpu>
    80004174:	0014f493          	andi	s1,s1,1
    80004178:	06952e23          	sw	s1,124(a0)
    8000417c:	fc5ff06f          	j	80004140 <push_on+0x34>

0000000080004180 <pop_on>:
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00813023          	sd	s0,0(sp)
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	01010413          	addi	s0,sp,16
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	5bc080e7          	jalr	1468(ra) # 8000274c <mycpu>
    80004198:	100027f3          	csrr	a5,sstatus
    8000419c:	0027f793          	andi	a5,a5,2
    800041a0:	04078463          	beqz	a5,800041e8 <pop_on+0x68>
    800041a4:	07852783          	lw	a5,120(a0)
    800041a8:	02f05863          	blez	a5,800041d8 <pop_on+0x58>
    800041ac:	fff7879b          	addiw	a5,a5,-1
    800041b0:	06f52c23          	sw	a5,120(a0)
    800041b4:	07853783          	ld	a5,120(a0)
    800041b8:	00079863          	bnez	a5,800041c8 <pop_on+0x48>
    800041bc:	100027f3          	csrr	a5,sstatus
    800041c0:	ffd7f793          	andi	a5,a5,-3
    800041c4:	10079073          	csrw	sstatus,a5
    800041c8:	00813083          	ld	ra,8(sp)
    800041cc:	00013403          	ld	s0,0(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret
    800041d8:	00001517          	auipc	a0,0x1
    800041dc:	15050513          	addi	a0,a0,336 # 80005328 <digits+0x70>
    800041e0:	fffff097          	auipc	ra,0xfffff
    800041e4:	f2c080e7          	jalr	-212(ra) # 8000310c <panic>
    800041e8:	00001517          	auipc	a0,0x1
    800041ec:	12050513          	addi	a0,a0,288 # 80005308 <digits+0x50>
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	f1c080e7          	jalr	-228(ra) # 8000310c <panic>

00000000800041f8 <__memset>:
    800041f8:	ff010113          	addi	sp,sp,-16
    800041fc:	00813423          	sd	s0,8(sp)
    80004200:	01010413          	addi	s0,sp,16
    80004204:	1a060e63          	beqz	a2,800043c0 <__memset+0x1c8>
    80004208:	40a007b3          	neg	a5,a0
    8000420c:	0077f793          	andi	a5,a5,7
    80004210:	00778693          	addi	a3,a5,7
    80004214:	00b00813          	li	a6,11
    80004218:	0ff5f593          	andi	a1,a1,255
    8000421c:	fff6071b          	addiw	a4,a2,-1
    80004220:	1b06e663          	bltu	a3,a6,800043cc <__memset+0x1d4>
    80004224:	1cd76463          	bltu	a4,a3,800043ec <__memset+0x1f4>
    80004228:	1a078e63          	beqz	a5,800043e4 <__memset+0x1ec>
    8000422c:	00b50023          	sb	a1,0(a0)
    80004230:	00100713          	li	a4,1
    80004234:	1ae78463          	beq	a5,a4,800043dc <__memset+0x1e4>
    80004238:	00b500a3          	sb	a1,1(a0)
    8000423c:	00200713          	li	a4,2
    80004240:	1ae78a63          	beq	a5,a4,800043f4 <__memset+0x1fc>
    80004244:	00b50123          	sb	a1,2(a0)
    80004248:	00300713          	li	a4,3
    8000424c:	18e78463          	beq	a5,a4,800043d4 <__memset+0x1dc>
    80004250:	00b501a3          	sb	a1,3(a0)
    80004254:	00400713          	li	a4,4
    80004258:	1ae78263          	beq	a5,a4,800043fc <__memset+0x204>
    8000425c:	00b50223          	sb	a1,4(a0)
    80004260:	00500713          	li	a4,5
    80004264:	1ae78063          	beq	a5,a4,80004404 <__memset+0x20c>
    80004268:	00b502a3          	sb	a1,5(a0)
    8000426c:	00700713          	li	a4,7
    80004270:	18e79e63          	bne	a5,a4,8000440c <__memset+0x214>
    80004274:	00b50323          	sb	a1,6(a0)
    80004278:	00700e93          	li	t4,7
    8000427c:	00859713          	slli	a4,a1,0x8
    80004280:	00e5e733          	or	a4,a1,a4
    80004284:	01059e13          	slli	t3,a1,0x10
    80004288:	01c76e33          	or	t3,a4,t3
    8000428c:	01859313          	slli	t1,a1,0x18
    80004290:	006e6333          	or	t1,t3,t1
    80004294:	02059893          	slli	a7,a1,0x20
    80004298:	40f60e3b          	subw	t3,a2,a5
    8000429c:	011368b3          	or	a7,t1,a7
    800042a0:	02859813          	slli	a6,a1,0x28
    800042a4:	0108e833          	or	a6,a7,a6
    800042a8:	03059693          	slli	a3,a1,0x30
    800042ac:	003e589b          	srliw	a7,t3,0x3
    800042b0:	00d866b3          	or	a3,a6,a3
    800042b4:	03859713          	slli	a4,a1,0x38
    800042b8:	00389813          	slli	a6,a7,0x3
    800042bc:	00f507b3          	add	a5,a0,a5
    800042c0:	00e6e733          	or	a4,a3,a4
    800042c4:	000e089b          	sext.w	a7,t3
    800042c8:	00f806b3          	add	a3,a6,a5
    800042cc:	00e7b023          	sd	a4,0(a5)
    800042d0:	00878793          	addi	a5,a5,8
    800042d4:	fed79ce3          	bne	a5,a3,800042cc <__memset+0xd4>
    800042d8:	ff8e7793          	andi	a5,t3,-8
    800042dc:	0007871b          	sext.w	a4,a5
    800042e0:	01d787bb          	addw	a5,a5,t4
    800042e4:	0ce88e63          	beq	a7,a4,800043c0 <__memset+0x1c8>
    800042e8:	00f50733          	add	a4,a0,a5
    800042ec:	00b70023          	sb	a1,0(a4)
    800042f0:	0017871b          	addiw	a4,a5,1
    800042f4:	0cc77663          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    800042f8:	00e50733          	add	a4,a0,a4
    800042fc:	00b70023          	sb	a1,0(a4)
    80004300:	0027871b          	addiw	a4,a5,2
    80004304:	0ac77e63          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004308:	00e50733          	add	a4,a0,a4
    8000430c:	00b70023          	sb	a1,0(a4)
    80004310:	0037871b          	addiw	a4,a5,3
    80004314:	0ac77663          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004318:	00e50733          	add	a4,a0,a4
    8000431c:	00b70023          	sb	a1,0(a4)
    80004320:	0047871b          	addiw	a4,a5,4
    80004324:	08c77e63          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004328:	00e50733          	add	a4,a0,a4
    8000432c:	00b70023          	sb	a1,0(a4)
    80004330:	0057871b          	addiw	a4,a5,5
    80004334:	08c77663          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004338:	00e50733          	add	a4,a0,a4
    8000433c:	00b70023          	sb	a1,0(a4)
    80004340:	0067871b          	addiw	a4,a5,6
    80004344:	06c77e63          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004348:	00e50733          	add	a4,a0,a4
    8000434c:	00b70023          	sb	a1,0(a4)
    80004350:	0077871b          	addiw	a4,a5,7
    80004354:	06c77663          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004358:	00e50733          	add	a4,a0,a4
    8000435c:	00b70023          	sb	a1,0(a4)
    80004360:	0087871b          	addiw	a4,a5,8
    80004364:	04c77e63          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004368:	00e50733          	add	a4,a0,a4
    8000436c:	00b70023          	sb	a1,0(a4)
    80004370:	0097871b          	addiw	a4,a5,9
    80004374:	04c77663          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004378:	00e50733          	add	a4,a0,a4
    8000437c:	00b70023          	sb	a1,0(a4)
    80004380:	00a7871b          	addiw	a4,a5,10
    80004384:	02c77e63          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004388:	00e50733          	add	a4,a0,a4
    8000438c:	00b70023          	sb	a1,0(a4)
    80004390:	00b7871b          	addiw	a4,a5,11
    80004394:	02c77663          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    80004398:	00e50733          	add	a4,a0,a4
    8000439c:	00b70023          	sb	a1,0(a4)
    800043a0:	00c7871b          	addiw	a4,a5,12
    800043a4:	00c77e63          	bgeu	a4,a2,800043c0 <__memset+0x1c8>
    800043a8:	00e50733          	add	a4,a0,a4
    800043ac:	00b70023          	sb	a1,0(a4)
    800043b0:	00d7879b          	addiw	a5,a5,13
    800043b4:	00c7f663          	bgeu	a5,a2,800043c0 <__memset+0x1c8>
    800043b8:	00f507b3          	add	a5,a0,a5
    800043bc:	00b78023          	sb	a1,0(a5)
    800043c0:	00813403          	ld	s0,8(sp)
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret
    800043cc:	00b00693          	li	a3,11
    800043d0:	e55ff06f          	j	80004224 <__memset+0x2c>
    800043d4:	00300e93          	li	t4,3
    800043d8:	ea5ff06f          	j	8000427c <__memset+0x84>
    800043dc:	00100e93          	li	t4,1
    800043e0:	e9dff06f          	j	8000427c <__memset+0x84>
    800043e4:	00000e93          	li	t4,0
    800043e8:	e95ff06f          	j	8000427c <__memset+0x84>
    800043ec:	00000793          	li	a5,0
    800043f0:	ef9ff06f          	j	800042e8 <__memset+0xf0>
    800043f4:	00200e93          	li	t4,2
    800043f8:	e85ff06f          	j	8000427c <__memset+0x84>
    800043fc:	00400e93          	li	t4,4
    80004400:	e7dff06f          	j	8000427c <__memset+0x84>
    80004404:	00500e93          	li	t4,5
    80004408:	e75ff06f          	j	8000427c <__memset+0x84>
    8000440c:	00600e93          	li	t4,6
    80004410:	e6dff06f          	j	8000427c <__memset+0x84>

0000000080004414 <__memmove>:
    80004414:	ff010113          	addi	sp,sp,-16
    80004418:	00813423          	sd	s0,8(sp)
    8000441c:	01010413          	addi	s0,sp,16
    80004420:	0e060863          	beqz	a2,80004510 <__memmove+0xfc>
    80004424:	fff6069b          	addiw	a3,a2,-1
    80004428:	0006881b          	sext.w	a6,a3
    8000442c:	0ea5e863          	bltu	a1,a0,8000451c <__memmove+0x108>
    80004430:	00758713          	addi	a4,a1,7
    80004434:	00a5e7b3          	or	a5,a1,a0
    80004438:	40a70733          	sub	a4,a4,a0
    8000443c:	0077f793          	andi	a5,a5,7
    80004440:	00f73713          	sltiu	a4,a4,15
    80004444:	00174713          	xori	a4,a4,1
    80004448:	0017b793          	seqz	a5,a5
    8000444c:	00e7f7b3          	and	a5,a5,a4
    80004450:	10078863          	beqz	a5,80004560 <__memmove+0x14c>
    80004454:	00900793          	li	a5,9
    80004458:	1107f463          	bgeu	a5,a6,80004560 <__memmove+0x14c>
    8000445c:	0036581b          	srliw	a6,a2,0x3
    80004460:	fff8081b          	addiw	a6,a6,-1
    80004464:	02081813          	slli	a6,a6,0x20
    80004468:	01d85893          	srli	a7,a6,0x1d
    8000446c:	00858813          	addi	a6,a1,8
    80004470:	00058793          	mv	a5,a1
    80004474:	00050713          	mv	a4,a0
    80004478:	01088833          	add	a6,a7,a6
    8000447c:	0007b883          	ld	a7,0(a5)
    80004480:	00878793          	addi	a5,a5,8
    80004484:	00870713          	addi	a4,a4,8
    80004488:	ff173c23          	sd	a7,-8(a4)
    8000448c:	ff0798e3          	bne	a5,a6,8000447c <__memmove+0x68>
    80004490:	ff867713          	andi	a4,a2,-8
    80004494:	02071793          	slli	a5,a4,0x20
    80004498:	0207d793          	srli	a5,a5,0x20
    8000449c:	00f585b3          	add	a1,a1,a5
    800044a0:	40e686bb          	subw	a3,a3,a4
    800044a4:	00f507b3          	add	a5,a0,a5
    800044a8:	06e60463          	beq	a2,a4,80004510 <__memmove+0xfc>
    800044ac:	0005c703          	lbu	a4,0(a1)
    800044b0:	00e78023          	sb	a4,0(a5)
    800044b4:	04068e63          	beqz	a3,80004510 <__memmove+0xfc>
    800044b8:	0015c603          	lbu	a2,1(a1)
    800044bc:	00100713          	li	a4,1
    800044c0:	00c780a3          	sb	a2,1(a5)
    800044c4:	04e68663          	beq	a3,a4,80004510 <__memmove+0xfc>
    800044c8:	0025c603          	lbu	a2,2(a1)
    800044cc:	00200713          	li	a4,2
    800044d0:	00c78123          	sb	a2,2(a5)
    800044d4:	02e68e63          	beq	a3,a4,80004510 <__memmove+0xfc>
    800044d8:	0035c603          	lbu	a2,3(a1)
    800044dc:	00300713          	li	a4,3
    800044e0:	00c781a3          	sb	a2,3(a5)
    800044e4:	02e68663          	beq	a3,a4,80004510 <__memmove+0xfc>
    800044e8:	0045c603          	lbu	a2,4(a1)
    800044ec:	00400713          	li	a4,4
    800044f0:	00c78223          	sb	a2,4(a5)
    800044f4:	00e68e63          	beq	a3,a4,80004510 <__memmove+0xfc>
    800044f8:	0055c603          	lbu	a2,5(a1)
    800044fc:	00500713          	li	a4,5
    80004500:	00c782a3          	sb	a2,5(a5)
    80004504:	00e68663          	beq	a3,a4,80004510 <__memmove+0xfc>
    80004508:	0065c703          	lbu	a4,6(a1)
    8000450c:	00e78323          	sb	a4,6(a5)
    80004510:	00813403          	ld	s0,8(sp)
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00008067          	ret
    8000451c:	02061713          	slli	a4,a2,0x20
    80004520:	02075713          	srli	a4,a4,0x20
    80004524:	00e587b3          	add	a5,a1,a4
    80004528:	f0f574e3          	bgeu	a0,a5,80004430 <__memmove+0x1c>
    8000452c:	02069613          	slli	a2,a3,0x20
    80004530:	02065613          	srli	a2,a2,0x20
    80004534:	fff64613          	not	a2,a2
    80004538:	00e50733          	add	a4,a0,a4
    8000453c:	00c78633          	add	a2,a5,a2
    80004540:	fff7c683          	lbu	a3,-1(a5)
    80004544:	fff78793          	addi	a5,a5,-1
    80004548:	fff70713          	addi	a4,a4,-1
    8000454c:	00d70023          	sb	a3,0(a4)
    80004550:	fec798e3          	bne	a5,a2,80004540 <__memmove+0x12c>
    80004554:	00813403          	ld	s0,8(sp)
    80004558:	01010113          	addi	sp,sp,16
    8000455c:	00008067          	ret
    80004560:	02069713          	slli	a4,a3,0x20
    80004564:	02075713          	srli	a4,a4,0x20
    80004568:	00170713          	addi	a4,a4,1
    8000456c:	00e50733          	add	a4,a0,a4
    80004570:	00050793          	mv	a5,a0
    80004574:	0005c683          	lbu	a3,0(a1)
    80004578:	00178793          	addi	a5,a5,1
    8000457c:	00158593          	addi	a1,a1,1
    80004580:	fed78fa3          	sb	a3,-1(a5)
    80004584:	fee798e3          	bne	a5,a4,80004574 <__memmove+0x160>
    80004588:	f89ff06f          	j	80004510 <__memmove+0xfc>

000000008000458c <__mem_free>:
    8000458c:	ff010113          	addi	sp,sp,-16
    80004590:	00813423          	sd	s0,8(sp)
    80004594:	01010413          	addi	s0,sp,16
    80004598:	00001597          	auipc	a1,0x1
    8000459c:	5c058593          	addi	a1,a1,1472 # 80005b58 <freep>
    800045a0:	0005b783          	ld	a5,0(a1)
    800045a4:	ff050693          	addi	a3,a0,-16
    800045a8:	0007b703          	ld	a4,0(a5)
    800045ac:	00d7fc63          	bgeu	a5,a3,800045c4 <__mem_free+0x38>
    800045b0:	00e6ee63          	bltu	a3,a4,800045cc <__mem_free+0x40>
    800045b4:	00e7fc63          	bgeu	a5,a4,800045cc <__mem_free+0x40>
    800045b8:	00070793          	mv	a5,a4
    800045bc:	0007b703          	ld	a4,0(a5)
    800045c0:	fed7e8e3          	bltu	a5,a3,800045b0 <__mem_free+0x24>
    800045c4:	fee7eae3          	bltu	a5,a4,800045b8 <__mem_free+0x2c>
    800045c8:	fee6f8e3          	bgeu	a3,a4,800045b8 <__mem_free+0x2c>
    800045cc:	ff852803          	lw	a6,-8(a0)
    800045d0:	02081613          	slli	a2,a6,0x20
    800045d4:	01c65613          	srli	a2,a2,0x1c
    800045d8:	00c68633          	add	a2,a3,a2
    800045dc:	02c70a63          	beq	a4,a2,80004610 <__mem_free+0x84>
    800045e0:	fee53823          	sd	a4,-16(a0)
    800045e4:	0087a503          	lw	a0,8(a5)
    800045e8:	02051613          	slli	a2,a0,0x20
    800045ec:	01c65613          	srli	a2,a2,0x1c
    800045f0:	00c78633          	add	a2,a5,a2
    800045f4:	04c68263          	beq	a3,a2,80004638 <__mem_free+0xac>
    800045f8:	00813403          	ld	s0,8(sp)
    800045fc:	00d7b023          	sd	a3,0(a5)
    80004600:	00f5b023          	sd	a5,0(a1)
    80004604:	00000513          	li	a0,0
    80004608:	01010113          	addi	sp,sp,16
    8000460c:	00008067          	ret
    80004610:	00872603          	lw	a2,8(a4)
    80004614:	00073703          	ld	a4,0(a4)
    80004618:	0106083b          	addw	a6,a2,a6
    8000461c:	ff052c23          	sw	a6,-8(a0)
    80004620:	fee53823          	sd	a4,-16(a0)
    80004624:	0087a503          	lw	a0,8(a5)
    80004628:	02051613          	slli	a2,a0,0x20
    8000462c:	01c65613          	srli	a2,a2,0x1c
    80004630:	00c78633          	add	a2,a5,a2
    80004634:	fcc692e3          	bne	a3,a2,800045f8 <__mem_free+0x6c>
    80004638:	00813403          	ld	s0,8(sp)
    8000463c:	0105053b          	addw	a0,a0,a6
    80004640:	00a7a423          	sw	a0,8(a5)
    80004644:	00e7b023          	sd	a4,0(a5)
    80004648:	00f5b023          	sd	a5,0(a1)
    8000464c:	00000513          	li	a0,0
    80004650:	01010113          	addi	sp,sp,16
    80004654:	00008067          	ret

0000000080004658 <__mem_alloc>:
    80004658:	fc010113          	addi	sp,sp,-64
    8000465c:	02813823          	sd	s0,48(sp)
    80004660:	02913423          	sd	s1,40(sp)
    80004664:	03213023          	sd	s2,32(sp)
    80004668:	01513423          	sd	s5,8(sp)
    8000466c:	02113c23          	sd	ra,56(sp)
    80004670:	01313c23          	sd	s3,24(sp)
    80004674:	01413823          	sd	s4,16(sp)
    80004678:	01613023          	sd	s6,0(sp)
    8000467c:	04010413          	addi	s0,sp,64
    80004680:	00001a97          	auipc	s5,0x1
    80004684:	4d8a8a93          	addi	s5,s5,1240 # 80005b58 <freep>
    80004688:	00f50913          	addi	s2,a0,15
    8000468c:	000ab683          	ld	a3,0(s5)
    80004690:	00495913          	srli	s2,s2,0x4
    80004694:	0019049b          	addiw	s1,s2,1
    80004698:	00048913          	mv	s2,s1
    8000469c:	0c068c63          	beqz	a3,80004774 <__mem_alloc+0x11c>
    800046a0:	0006b503          	ld	a0,0(a3)
    800046a4:	00852703          	lw	a4,8(a0)
    800046a8:	10977063          	bgeu	a4,s1,800047a8 <__mem_alloc+0x150>
    800046ac:	000017b7          	lui	a5,0x1
    800046b0:	0009099b          	sext.w	s3,s2
    800046b4:	0af4e863          	bltu	s1,a5,80004764 <__mem_alloc+0x10c>
    800046b8:	02099a13          	slli	s4,s3,0x20
    800046bc:	01ca5a13          	srli	s4,s4,0x1c
    800046c0:	fff00b13          	li	s6,-1
    800046c4:	0100006f          	j	800046d4 <__mem_alloc+0x7c>
    800046c8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800046cc:	00852703          	lw	a4,8(a0)
    800046d0:	04977463          	bgeu	a4,s1,80004718 <__mem_alloc+0xc0>
    800046d4:	00050793          	mv	a5,a0
    800046d8:	fea698e3          	bne	a3,a0,800046c8 <__mem_alloc+0x70>
    800046dc:	000a0513          	mv	a0,s4
    800046e0:	00000097          	auipc	ra,0x0
    800046e4:	1f0080e7          	jalr	496(ra) # 800048d0 <kvmincrease>
    800046e8:	00050793          	mv	a5,a0
    800046ec:	01050513          	addi	a0,a0,16
    800046f0:	07678e63          	beq	a5,s6,8000476c <__mem_alloc+0x114>
    800046f4:	0137a423          	sw	s3,8(a5)
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	e94080e7          	jalr	-364(ra) # 8000458c <__mem_free>
    80004700:	000ab783          	ld	a5,0(s5)
    80004704:	06078463          	beqz	a5,8000476c <__mem_alloc+0x114>
    80004708:	0007b503          	ld	a0,0(a5)
    8000470c:	00078693          	mv	a3,a5
    80004710:	00852703          	lw	a4,8(a0)
    80004714:	fc9760e3          	bltu	a4,s1,800046d4 <__mem_alloc+0x7c>
    80004718:	08e48263          	beq	s1,a4,8000479c <__mem_alloc+0x144>
    8000471c:	4127073b          	subw	a4,a4,s2
    80004720:	02071693          	slli	a3,a4,0x20
    80004724:	01c6d693          	srli	a3,a3,0x1c
    80004728:	00e52423          	sw	a4,8(a0)
    8000472c:	00d50533          	add	a0,a0,a3
    80004730:	01252423          	sw	s2,8(a0)
    80004734:	00fab023          	sd	a5,0(s5)
    80004738:	01050513          	addi	a0,a0,16
    8000473c:	03813083          	ld	ra,56(sp)
    80004740:	03013403          	ld	s0,48(sp)
    80004744:	02813483          	ld	s1,40(sp)
    80004748:	02013903          	ld	s2,32(sp)
    8000474c:	01813983          	ld	s3,24(sp)
    80004750:	01013a03          	ld	s4,16(sp)
    80004754:	00813a83          	ld	s5,8(sp)
    80004758:	00013b03          	ld	s6,0(sp)
    8000475c:	04010113          	addi	sp,sp,64
    80004760:	00008067          	ret
    80004764:	000019b7          	lui	s3,0x1
    80004768:	f51ff06f          	j	800046b8 <__mem_alloc+0x60>
    8000476c:	00000513          	li	a0,0
    80004770:	fcdff06f          	j	8000473c <__mem_alloc+0xe4>
    80004774:	00002797          	auipc	a5,0x2
    80004778:	66c78793          	addi	a5,a5,1644 # 80006de0 <base>
    8000477c:	00078513          	mv	a0,a5
    80004780:	00fab023          	sd	a5,0(s5)
    80004784:	00f7b023          	sd	a5,0(a5)
    80004788:	00000713          	li	a4,0
    8000478c:	00002797          	auipc	a5,0x2
    80004790:	6407ae23          	sw	zero,1628(a5) # 80006de8 <base+0x8>
    80004794:	00050693          	mv	a3,a0
    80004798:	f11ff06f          	j	800046a8 <__mem_alloc+0x50>
    8000479c:	00053703          	ld	a4,0(a0)
    800047a0:	00e7b023          	sd	a4,0(a5)
    800047a4:	f91ff06f          	j	80004734 <__mem_alloc+0xdc>
    800047a8:	00068793          	mv	a5,a3
    800047ac:	f6dff06f          	j	80004718 <__mem_alloc+0xc0>

00000000800047b0 <__putc>:
    800047b0:	fe010113          	addi	sp,sp,-32
    800047b4:	00813823          	sd	s0,16(sp)
    800047b8:	00113c23          	sd	ra,24(sp)
    800047bc:	02010413          	addi	s0,sp,32
    800047c0:	00050793          	mv	a5,a0
    800047c4:	fef40593          	addi	a1,s0,-17
    800047c8:	00100613          	li	a2,1
    800047cc:	00000513          	li	a0,0
    800047d0:	fef407a3          	sb	a5,-17(s0)
    800047d4:	fffff097          	auipc	ra,0xfffff
    800047d8:	918080e7          	jalr	-1768(ra) # 800030ec <console_write>
    800047dc:	01813083          	ld	ra,24(sp)
    800047e0:	01013403          	ld	s0,16(sp)
    800047e4:	02010113          	addi	sp,sp,32
    800047e8:	00008067          	ret

00000000800047ec <__getc>:
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00813823          	sd	s0,16(sp)
    800047f4:	00113c23          	sd	ra,24(sp)
    800047f8:	02010413          	addi	s0,sp,32
    800047fc:	fe840593          	addi	a1,s0,-24
    80004800:	00100613          	li	a2,1
    80004804:	00000513          	li	a0,0
    80004808:	fffff097          	auipc	ra,0xfffff
    8000480c:	8c4080e7          	jalr	-1852(ra) # 800030cc <console_read>
    80004810:	fe844503          	lbu	a0,-24(s0)
    80004814:	01813083          	ld	ra,24(sp)
    80004818:	01013403          	ld	s0,16(sp)
    8000481c:	02010113          	addi	sp,sp,32
    80004820:	00008067          	ret

0000000080004824 <console_handler>:
    80004824:	fe010113          	addi	sp,sp,-32
    80004828:	00813823          	sd	s0,16(sp)
    8000482c:	00113c23          	sd	ra,24(sp)
    80004830:	00913423          	sd	s1,8(sp)
    80004834:	02010413          	addi	s0,sp,32
    80004838:	14202773          	csrr	a4,scause
    8000483c:	100027f3          	csrr	a5,sstatus
    80004840:	0027f793          	andi	a5,a5,2
    80004844:	06079e63          	bnez	a5,800048c0 <console_handler+0x9c>
    80004848:	00074c63          	bltz	a4,80004860 <console_handler+0x3c>
    8000484c:	01813083          	ld	ra,24(sp)
    80004850:	01013403          	ld	s0,16(sp)
    80004854:	00813483          	ld	s1,8(sp)
    80004858:	02010113          	addi	sp,sp,32
    8000485c:	00008067          	ret
    80004860:	0ff77713          	andi	a4,a4,255
    80004864:	00900793          	li	a5,9
    80004868:	fef712e3          	bne	a4,a5,8000484c <console_handler+0x28>
    8000486c:	ffffe097          	auipc	ra,0xffffe
    80004870:	4b8080e7          	jalr	1208(ra) # 80002d24 <plic_claim>
    80004874:	00a00793          	li	a5,10
    80004878:	00050493          	mv	s1,a0
    8000487c:	02f50c63          	beq	a0,a5,800048b4 <console_handler+0x90>
    80004880:	fc0506e3          	beqz	a0,8000484c <console_handler+0x28>
    80004884:	00050593          	mv	a1,a0
    80004888:	00001517          	auipc	a0,0x1
    8000488c:	9a850513          	addi	a0,a0,-1624 # 80005230 <_ZZ8printHexmE9hexDigits+0xe8>
    80004890:	fffff097          	auipc	ra,0xfffff
    80004894:	8d8080e7          	jalr	-1832(ra) # 80003168 <__printf>
    80004898:	01013403          	ld	s0,16(sp)
    8000489c:	01813083          	ld	ra,24(sp)
    800048a0:	00048513          	mv	a0,s1
    800048a4:	00813483          	ld	s1,8(sp)
    800048a8:	02010113          	addi	sp,sp,32
    800048ac:	ffffe317          	auipc	t1,0xffffe
    800048b0:	4b030067          	jr	1200(t1) # 80002d5c <plic_complete>
    800048b4:	fffff097          	auipc	ra,0xfffff
    800048b8:	1bc080e7          	jalr	444(ra) # 80003a70 <uartintr>
    800048bc:	fddff06f          	j	80004898 <console_handler+0x74>
    800048c0:	00001517          	auipc	a0,0x1
    800048c4:	a7050513          	addi	a0,a0,-1424 # 80005330 <digits+0x78>
    800048c8:	fffff097          	auipc	ra,0xfffff
    800048cc:	844080e7          	jalr	-1980(ra) # 8000310c <panic>

00000000800048d0 <kvmincrease>:
    800048d0:	fe010113          	addi	sp,sp,-32
    800048d4:	01213023          	sd	s2,0(sp)
    800048d8:	00001937          	lui	s2,0x1
    800048dc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800048e0:	00813823          	sd	s0,16(sp)
    800048e4:	00113c23          	sd	ra,24(sp)
    800048e8:	00913423          	sd	s1,8(sp)
    800048ec:	02010413          	addi	s0,sp,32
    800048f0:	01250933          	add	s2,a0,s2
    800048f4:	00c95913          	srli	s2,s2,0xc
    800048f8:	02090863          	beqz	s2,80004928 <kvmincrease+0x58>
    800048fc:	00000493          	li	s1,0
    80004900:	00148493          	addi	s1,s1,1
    80004904:	fffff097          	auipc	ra,0xfffff
    80004908:	4bc080e7          	jalr	1212(ra) # 80003dc0 <kalloc>
    8000490c:	fe991ae3          	bne	s2,s1,80004900 <kvmincrease+0x30>
    80004910:	01813083          	ld	ra,24(sp)
    80004914:	01013403          	ld	s0,16(sp)
    80004918:	00813483          	ld	s1,8(sp)
    8000491c:	00013903          	ld	s2,0(sp)
    80004920:	02010113          	addi	sp,sp,32
    80004924:	00008067          	ret
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	00013903          	ld	s2,0(sp)
    80004938:	00000513          	li	a0,0
    8000493c:	02010113          	addi	sp,sp,32
    80004940:	00008067          	ret
	...
