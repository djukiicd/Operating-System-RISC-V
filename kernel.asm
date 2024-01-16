
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	a0013103          	ld	sp,-1536(sp) # 80005a00 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	28c020ef          	jal	ra,800022a8 <start>

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
    800011ac:	4b5000ef          	jal	ra,80001e60 <_ZN5Riscv13handleSyscallEv>
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
    800012bc:	57d000ef          	jal	ra,80002038 <_ZN5Riscv20handleTimerInterruptEv>
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
    8000134c:	53d000ef          	jal	ra,80002088 <_ZN5Riscv22handleConsoleInterruptEv>
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
    800013d8:	4d9000ef          	jal	ra,800020b0 <_ZN5Riscv14handleBadCauseEv>
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
#include"../lib/hw.h"
//#include "../h/ccb.hpp"
#include "../h/print.hpp"
#include "../h/kThread.hpp"
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
    if (n % 4 == 0) kThread::yield();
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
    if (n % 4 == 0) kThread::yield();
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	48c080e7          	jalr	1164(ra) # 80001bc8 <_ZN7kThread5yieldEv>
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
    8000176c:	89850513          	addi	a0,a0,-1896 # 80005000 <kvmincrease+0x950>
    80001770:	00001097          	auipc	ra,0x1
    80001774:	9d0080e7          	jalr	-1584(ra) # 80002140 <_Z11printStringPKc>
        printInteger(i);
    80001778:	00048513          	mv	a0,s1
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	a08080e7          	jalr	-1528(ra) # 80002184 <_Z12printIntegerm>
        printString("\n");
    80001784:	00004517          	auipc	a0,0x4
    80001788:	98450513          	addi	a0,a0,-1660 # 80005108 <kvmincrease+0xa58>
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	9b4080e7          	jalr	-1612(ra) # 80002140 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001794:	0014849b          	addiw	s1,s1,1
    80001798:	0ff4f493          	andi	s1,s1,255
    8000179c:	00200793          	li	a5,2
    800017a0:	fc97f4e3          	bgeu	a5,s1,80001768 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800017a4:	00004517          	auipc	a0,0x4
    800017a8:	86450513          	addi	a0,a0,-1948 # 80005008 <kvmincrease+0x958>
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	994080e7          	jalr	-1644(ra) # 80002140 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800017b4:	00700313          	li	t1,7
    kThread::yield();
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	410080e7          	jalr	1040(ra) # 80001bc8 <_ZN7kThread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800017c0:	00030913          	mv	s2,t1

    printString("A: t1=");
    800017c4:	00004517          	auipc	a0,0x4
    800017c8:	85450513          	addi	a0,a0,-1964 # 80005018 <kvmincrease+0x968>
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	974080e7          	jalr	-1676(ra) # 80002140 <_Z11printStringPKc>
    printInteger(t1);
    800017d4:	00090513          	mv	a0,s2
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	9ac080e7          	jalr	-1620(ra) # 80002184 <_Z12printIntegerm>
    printString("\n");
    800017e0:	00004517          	auipc	a0,0x4
    800017e4:	92850513          	addi	a0,a0,-1752 # 80005108 <kvmincrease+0xa58>
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	958080e7          	jalr	-1704(ra) # 80002140 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800017f0:	01400513          	li	a0,20
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	ee4080e7          	jalr	-284(ra) # 800016d8 <_ZL9fibonaccim>
    800017fc:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001800:	00004517          	auipc	a0,0x4
    80001804:	82050513          	addi	a0,a0,-2016 # 80005020 <kvmincrease+0x970>
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	938080e7          	jalr	-1736(ra) # 80002140 <_Z11printStringPKc>
    printInteger(result);
    80001810:	00090513          	mv	a0,s2
    80001814:	00001097          	auipc	ra,0x1
    80001818:	970080e7          	jalr	-1680(ra) # 80002184 <_Z12printIntegerm>
    printString("\n");
    8000181c:	00004517          	auipc	a0,0x4
    80001820:	8ec50513          	addi	a0,a0,-1812 # 80005108 <kvmincrease+0xa58>
    80001824:	00001097          	auipc	ra,0x1
    80001828:	91c080e7          	jalr	-1764(ra) # 80002140 <_Z11printStringPKc>
    8000182c:	0380006f          	j	80001864 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001830:	00003517          	auipc	a0,0x3
    80001834:	7d050513          	addi	a0,a0,2000 # 80005000 <kvmincrease+0x950>
    80001838:	00001097          	auipc	ra,0x1
    8000183c:	908080e7          	jalr	-1784(ra) # 80002140 <_Z11printStringPKc>
        printInteger(i);
    80001840:	00048513          	mv	a0,s1
    80001844:	00001097          	auipc	ra,0x1
    80001848:	940080e7          	jalr	-1728(ra) # 80002184 <_Z12printIntegerm>
        printString("\n");
    8000184c:	00004517          	auipc	a0,0x4
    80001850:	8bc50513          	addi	a0,a0,-1860 # 80005108 <kvmincrease+0xa58>
    80001854:	00001097          	auipc	ra,0x1
    80001858:	8ec080e7          	jalr	-1812(ra) # 80002140 <_Z11printStringPKc>
    for (; i < 6; i++)
    8000185c:	0014849b          	addiw	s1,s1,1
    80001860:	0ff4f493          	andi	s1,s1,255
    80001864:	00500793          	li	a5,5
    80001868:	fc97f4e3          	bgeu	a5,s1,80001830 <_Z11workerBodyAPv+0xe8>
    }

    kThread::running->setFinished(true);
    8000186c:	00004797          	auipc	a5,0x4
    80001870:	19c7b783          	ld	a5,412(a5) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001874:	0007b783          	ld	a5,0(a5)

public:

    ~kThread() { delete[] stack; }
    inline bool isFinished() const { return finished; }
    inline void setFinished(bool finished) { kThread::finished = finished; }
    80001878:	00100713          	li	a4,1
    8000187c:	02e78823          	sb	a4,48(a5)
    kThread::yield();
    80001880:	00000097          	auipc	ra,0x0
    80001884:	348080e7          	jalr	840(ra) # 80001bc8 <_ZN7kThread5yieldEv>
    printString("yee");
    80001888:	00003517          	auipc	a0,0x3
    8000188c:	7a850513          	addi	a0,a0,1960 # 80005030 <kvmincrease+0x980>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	8b0080e7          	jalr	-1872(ra) # 80002140 <_Z11printStringPKc>
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
    800018d4:	76850513          	addi	a0,a0,1896 # 80005038 <kvmincrease+0x988>
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	868080e7          	jalr	-1944(ra) # 80002140 <_Z11printStringPKc>
        printInteger(i);
    800018e0:	00048513          	mv	a0,s1
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	8a0080e7          	jalr	-1888(ra) # 80002184 <_Z12printIntegerm>
        printString("\n");
    800018ec:	00004517          	auipc	a0,0x4
    800018f0:	81c50513          	addi	a0,a0,-2020 # 80005108 <kvmincrease+0xa58>
    800018f4:	00001097          	auipc	ra,0x1
    800018f8:	84c080e7          	jalr	-1972(ra) # 80002140 <_Z11printStringPKc>
    for (; i < 13; i++)
    800018fc:	0014849b          	addiw	s1,s1,1
    80001900:	0ff4f493          	andi	s1,s1,255
    80001904:	00c00793          	li	a5,12
    80001908:	fc97f4e3          	bgeu	a5,s1,800018d0 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    8000190c:	00003517          	auipc	a0,0x3
    80001910:	73450513          	addi	a0,a0,1844 # 80005040 <kvmincrease+0x990>
    80001914:	00001097          	auipc	ra,0x1
    80001918:	82c080e7          	jalr	-2004(ra) # 80002140 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000191c:	00500313          	li	t1,5
    kThread::yield();
    80001920:	00000097          	auipc	ra,0x0
    80001924:	2a8080e7          	jalr	680(ra) # 80001bc8 <_ZN7kThread5yieldEv>

    uint64 result = fibonacci(23);
    80001928:	01700513          	li	a0,23
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	dac080e7          	jalr	-596(ra) # 800016d8 <_ZL9fibonaccim>
    80001934:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001938:	00003517          	auipc	a0,0x3
    8000193c:	6e850513          	addi	a0,a0,1768 # 80005020 <kvmincrease+0x970>
    80001940:	00001097          	auipc	ra,0x1
    80001944:	800080e7          	jalr	-2048(ra) # 80002140 <_Z11printStringPKc>
    printInteger(result);
    80001948:	00090513          	mv	a0,s2
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	838080e7          	jalr	-1992(ra) # 80002184 <_Z12printIntegerm>
    printString("\n");
    80001954:	00003517          	auipc	a0,0x3
    80001958:	7b450513          	addi	a0,a0,1972 # 80005108 <kvmincrease+0xa58>
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	7e4080e7          	jalr	2020(ra) # 80002140 <_Z11printStringPKc>
    80001964:	0380006f          	j	8000199c <_Z11workerBodyBPv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001968:	00003517          	auipc	a0,0x3
    8000196c:	6d050513          	addi	a0,a0,1744 # 80005038 <kvmincrease+0x988>
    80001970:	00000097          	auipc	ra,0x0
    80001974:	7d0080e7          	jalr	2000(ra) # 80002140 <_Z11printStringPKc>
        printInteger(i);
    80001978:	00048513          	mv	a0,s1
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	808080e7          	jalr	-2040(ra) # 80002184 <_Z12printIntegerm>
        printString("\n");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	78450513          	addi	a0,a0,1924 # 80005108 <kvmincrease+0xa58>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	7b4080e7          	jalr	1972(ra) # 80002140 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001994:	0014849b          	addiw	s1,s1,1
    80001998:	0ff4f493          	andi	s1,s1,255
    8000199c:	00f00793          	li	a5,15
    800019a0:	fc97f4e3          	bgeu	a5,s1,80001968 <_Z11workerBodyBPv+0xb8>
    }
    kThread::running->setFinished(true);
    800019a4:	00004797          	auipc	a5,0x4
    800019a8:	0647b783          	ld	a5,100(a5) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019ac:	0007b783          	ld	a5,0(a5)
    800019b0:	00100713          	li	a4,1
    800019b4:	02e78823          	sb	a4,48(a5)
    kThread::yield();
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	210080e7          	jalr	528(ra) # 80001bc8 <_ZN7kThread5yieldEv>

    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	00813483          	ld	s1,8(sp)
    800019cc:	00013903          	ld	s2,0(sp)
    800019d0:	02010113          	addi	sp,sp,32
    800019d4:	00008067          	ret

00000000800019d8 <_ZN7kThread13threadWrapperEv>:

    kThread::contextSwitch(&old->context, &running->context);
}


void kThread::threadWrapper() {
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00113423          	sd	ra,8(sp)
    800019e0:	00813023          	sd	s0,0(sp)
    800019e4:	01010413          	addi	s0,sp,16

    //Riscv::popSppSpie();
  //  printInteger(100);
    running->body(running->arg);
    800019e8:	00004797          	auipc	a5,0x4
    800019ec:	0887b783          	ld	a5,136(a5) # 80005a70 <_ZN7kThread7runningE>
    800019f0:	0087b703          	ld	a4,8(a5)
    800019f4:	0107b503          	ld	a0,16(a5)
    800019f8:	000700e7          	jalr	a4
//    kthread_exit();
}
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_ZN7kThreadC1EPFvPvES0_S0_>:
kThread::kThread(Body body, void* arg, void* stack_space) :
    80001a0c:	fd010113          	addi	sp,sp,-48
    80001a10:	02113423          	sd	ra,40(sp)
    80001a14:	02813023          	sd	s0,32(sp)
    80001a18:	00913c23          	sd	s1,24(sp)
    80001a1c:	01213823          	sd	s2,16(sp)
    80001a20:	01313423          	sd	s3,8(sp)
    80001a24:	03010413          	addi	s0,sp,48
    80001a28:	00050493          	mv	s1,a0
    80001a2c:	00058913          	mv	s2,a1
    80001a30:	00068993          	mv	s3,a3
finished(false)
    80001a34:	00b53423          	sd	a1,8(a0)
    80001a38:	00c53823          	sd	a2,16(a0)
stack(body!= nullptr ? new uint64[4096]: nullptr),
    80001a3c:	06058463          	beqz	a1,80001aa4 <_ZN7kThreadC1EPFvPvES0_S0_+0x98>
    80001a40:	00008537          	lui	a0,0x8
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	384080e7          	jalr	900(ra) # 80001dc8 <_Znam>
finished(false)
    80001a4c:	00a4bc23          	sd	a0,24(s1)
context({body!=nullptr?(uint64)threadWrapper : 0,
    80001a50:	04090e63          	beqz	s2,80001aac <_ZN7kThreadC1EPFvPvES0_S0_+0xa0>
    80001a54:	00000797          	auipc	a5,0x0
    80001a58:	f8478793          	addi	a5,a5,-124 # 800019d8 <_ZN7kThread13threadWrapperEv>
finished(false)
    80001a5c:	02f4b023          	sd	a5,32(s1)
         stack_space != nullptr ? (uint64) &stack[4095] : 0 }),
    80001a60:	04098a63          	beqz	s3,80001ab4 <_ZN7kThreadC1EPFvPvES0_S0_+0xa8>
    80001a64:	000087b7          	lui	a5,0x8
    80001a68:	ff878793          	addi	a5,a5,-8 # 7ff8 <_entry-0x7fff8008>
    80001a6c:	00f50533          	add	a0,a0,a5
finished(false)
    80001a70:	02a4b423          	sd	a0,40(s1)
    80001a74:	02048823          	sb	zero,48(s1)
    if(body != nullptr) { kScheduler::put(this);}
    80001a78:	00090863          	beqz	s2,80001a88 <_ZN7kThreadC1EPFvPvES0_S0_+0x7c>
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	678080e7          	jalr	1656(ra) # 800020f8 <_ZN10kScheduler3putEP7kThread>
}
    80001a88:	02813083          	ld	ra,40(sp)
    80001a8c:	02013403          	ld	s0,32(sp)
    80001a90:	01813483          	ld	s1,24(sp)
    80001a94:	01013903          	ld	s2,16(sp)
    80001a98:	00813983          	ld	s3,8(sp)
    80001a9c:	03010113          	addi	sp,sp,48
    80001aa0:	00008067          	ret
stack(body!= nullptr ? new uint64[4096]: nullptr),
    80001aa4:	00000513          	li	a0,0
    80001aa8:	fa5ff06f          	j	80001a4c <_ZN7kThreadC1EPFvPvES0_S0_+0x40>
context({body!=nullptr?(uint64)threadWrapper : 0,
    80001aac:	00000793          	li	a5,0
    80001ab0:	fadff06f          	j	80001a5c <_ZN7kThreadC1EPFvPvES0_S0_+0x50>
         stack_space != nullptr ? (uint64) &stack[4095] : 0 }),
    80001ab4:	00000513          	li	a0,0
    80001ab8:	fb9ff06f          	j	80001a70 <_ZN7kThreadC1EPFvPvES0_S0_+0x64>

0000000080001abc <_ZN7kThread13createProcessEPFvPvES0_S0_>:
kThread* kThread::createProcess(Body body, void* args, void* stack_space) {
    80001abc:	fd010113          	addi	sp,sp,-48
    80001ac0:	02113423          	sd	ra,40(sp)
    80001ac4:	02813023          	sd	s0,32(sp)
    80001ac8:	00913c23          	sd	s1,24(sp)
    80001acc:	01213823          	sd	s2,16(sp)
    80001ad0:	01313423          	sd	s3,8(sp)
    80001ad4:	01413023          	sd	s4,0(sp)
    80001ad8:	03010413          	addi	s0,sp,48
    80001adc:	00050913          	mv	s2,a0
    80001ae0:	00058993          	mv	s3,a1
    80001ae4:	00060a13          	mv	s4,a2
    printString("\nKreirana nit\n");
    80001ae8:	00003517          	auipc	a0,0x3
    80001aec:	56850513          	addi	a0,a0,1384 # 80005050 <kvmincrease+0x9a0>
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	650080e7          	jalr	1616(ra) # 80002140 <_Z11printStringPKc>
    return new kThread(body,args, stack_space);
    80001af8:	03800513          	li	a0,56
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	2a4080e7          	jalr	676(ra) # 80001da0 <_Znwm>
    80001b04:	00050493          	mv	s1,a0
    80001b08:	000a0693          	mv	a3,s4
    80001b0c:	00098613          	mv	a2,s3
    80001b10:	00090593          	mv	a1,s2
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	ef8080e7          	jalr	-264(ra) # 80001a0c <_ZN7kThreadC1EPFvPvES0_S0_>
    80001b1c:	0200006f          	j	80001b3c <_ZN7kThread13createProcessEPFvPvES0_S0_+0x80>
    80001b20:	00050913          	mv	s2,a0
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	2c8080e7          	jalr	712(ra) # 80001df0 <_ZdlPv>
    80001b30:	00090513          	mv	a0,s2
    80001b34:	00005097          	auipc	ra,0x5
    80001b38:	024080e7          	jalr	36(ra) # 80006b58 <_Unwind_Resume>
}
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	02813083          	ld	ra,40(sp)
    80001b44:	02013403          	ld	s0,32(sp)
    80001b48:	01813483          	ld	s1,24(sp)
    80001b4c:	01013903          	ld	s2,16(sp)
    80001b50:	00813983          	ld	s3,8(sp)
    80001b54:	00013a03          	ld	s4,0(sp)
    80001b58:	03010113          	addi	sp,sp,48
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN7kThread8dispatchEv>:
{
    80001b60:	fe010113          	addi	sp,sp,-32
    80001b64:	00113c23          	sd	ra,24(sp)
    80001b68:	00813823          	sd	s0,16(sp)
    80001b6c:	00913423          	sd	s1,8(sp)
    80001b70:	02010413          	addi	s0,sp,32
    kThread *old = running;
    80001b74:	00004497          	auipc	s1,0x4
    80001b78:	efc4b483          	ld	s1,-260(s1) # 80005a70 <_ZN7kThread7runningE>
    inline bool isFinished() const { return finished; }
    80001b7c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { kScheduler::put(old); }
    80001b80:	02078c63          	beqz	a5,80001bb8 <_ZN7kThread8dispatchEv+0x58>
    running = kScheduler::get();
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	544080e7          	jalr	1348(ra) # 800020c8 <_ZN10kScheduler3getEv>
    80001b8c:	00004797          	auipc	a5,0x4
    80001b90:	eea7b223          	sd	a0,-284(a5) # 80005a70 <_ZN7kThread7runningE>
    kThread::contextSwitch(&old->context, &running->context);
    80001b94:	02050593          	addi	a1,a0,32
    80001b98:	02048513          	addi	a0,s1,32
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	848080e7          	jalr	-1976(ra) # 800013e4 <_ZN7kThread13contextSwitchEPNS_7ContextES1_>
}
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	00813483          	ld	s1,8(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret
    if (!old->isFinished()) { kScheduler::put(old); }
    80001bb8:	00048513          	mv	a0,s1
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	53c080e7          	jalr	1340(ra) # 800020f8 <_ZN10kScheduler3putEP7kThread>
    80001bc4:	fc1ff06f          	j	80001b84 <_ZN7kThread8dispatchEv+0x24>

0000000080001bc8 <_ZN7kThread5yieldEv>:
{
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00113423          	sd	ra,8(sp)
    80001bd0:	00813023          	sd	s0,0(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001bd8:	fffff097          	auipc	ra,0xfffff
    80001bdc:	428080e7          	jalr	1064(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    kThread::dispatch();
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	f80080e7          	jalr	-128(ra) # 80001b60 <_ZN7kThread8dispatchEv>
    Riscv::popRegisters();
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	494080e7          	jalr	1172(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001bf0:	00813083          	ld	ra,8(sp)
    80001bf4:	00013403          	ld	s0,0(sp)
    80001bf8:	01010113          	addi	sp,sp,16
    80001bfc:	00008067          	ret

0000000080001c00 <_ZN7kThread11kThreadExitEv>:

void kThread::kThreadExit() {
    80001c00:	ff010113          	addi	sp,sp,-16
    80001c04:	00813423          	sd	s0,8(sp)
    80001c08:	01010413          	addi	s0,sp,16

}
    80001c0c:	00813403          	ld	s0,8(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <main>:
#include "../h/workers.hpp"

extern "C" { extern int __supervisorTrap;}

int main()
{
    80001c18:	fb010113          	addi	sp,sp,-80
    80001c1c:	04113423          	sd	ra,72(sp)
    80001c20:	04813023          	sd	s0,64(sp)
    80001c24:	02913c23          	sd	s1,56(sp)
    80001c28:	03213823          	sd	s2,48(sp)
    80001c2c:	05010413          	addi	s0,sp,80


   __asm__ volatile ("csrw stvec, %0 ": : "r" ((uint64)&__supervisorTrap | 1));
    80001c30:	00004797          	auipc	a5,0x4
    80001c34:	de87b783          	ld	a5,-536(a5) # 80005a18 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c38:	0017e793          	ori	a5,a5,1
    80001c3c:	10579073          	csrw	stvec,a5
//    ret = test(13);
//    printInteger(ret);
//    printString(" test done\n");
//
    uint64  size = 4096;
    void* ptrA = mem_alloc(size);
    80001c40:	00001537          	lui	a0,0x1
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	7e4080e7          	jalr	2020(ra) # 80001428 <_Z9mem_allocm>
    80001c4c:	fca43c23          	sd	a0,-40(s0)
    uint64 intPtr = (uint64)(&ptrA);
    printHex(intPtr);
    80001c50:	fd840513          	addi	a0,s0,-40
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	5c0080e7          	jalr	1472(ra) # 80002214 <_Z8printHexm>
    printString(" mem_alloc done\n");
    80001c5c:	00003517          	auipc	a0,0x3
    80001c60:	40450513          	addi	a0,a0,1028 # 80005060 <kvmincrease+0x9b0>
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	4dc080e7          	jalr	1244(ra) # 80002140 <_Z11printStringPKc>

    void* ptrB = mem_alloc(size);
    80001c6c:	00001537          	lui	a0,0x1
    80001c70:	fffff097          	auipc	ra,0xfffff
    80001c74:	7b8080e7          	jalr	1976(ra) # 80001428 <_Z9mem_allocm>
    80001c78:	fca43823          	sd	a0,-48(s0)
    intPtr = (uint64)(&ptrB);
    printHex(intPtr);
    80001c7c:	fd040513          	addi	a0,s0,-48
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	594080e7          	jalr	1428(ra) # 80002214 <_Z8printHexm>
    printString(" mem_alloc done\n");
    80001c88:	00003517          	auipc	a0,0x3
    80001c8c:	3d850513          	addi	a0,a0,984 # 80005060 <kvmincrease+0x9b0>
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	4b0080e7          	jalr	1200(ra) # 80002140 <_Z11printStringPKc>
//    int retB = thread_create(&threads[2], workerBodyB, nullptr);
//    printInteger(retB);
//    printString("\n");


    threads[0] = kThread::createProcess(nullptr,nullptr,nullptr);
    80001c98:	00000613          	li	a2,0
    80001c9c:	00000593          	li	a1,0
    80001ca0:	00000513          	li	a0,0
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	e18080e7          	jalr	-488(ra) # 80001abc <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001cac:	faa43c23          	sd	a0,-72(s0)
    kThread::running = threads[0];
    80001cb0:	00004797          	auipc	a5,0x4
    80001cb4:	d587b783          	ld	a5,-680(a5) # 80005a08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001cb8:	00a7b023          	sd	a0,0(a5)
    threads[1] = kThread::createProcess(workerBodyA, nullptr, ptrA);
    80001cbc:	fd843603          	ld	a2,-40(s0)
    80001cc0:	00000593          	li	a1,0
    80001cc4:	00004517          	auipc	a0,0x4
    80001cc8:	d4c53503          	ld	a0,-692(a0) # 80005a10 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	df0080e7          	jalr	-528(ra) # 80001abc <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001cd4:	fca43023          	sd	a0,-64(s0)
    printString("CoroutineA created\n");
    80001cd8:	00003517          	auipc	a0,0x3
    80001cdc:	3a050513          	addi	a0,a0,928 # 80005078 <kvmincrease+0x9c8>
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	460080e7          	jalr	1120(ra) # 80002140 <_Z11printStringPKc>
    threads[2] = kThread::createProcess(workerBodyB, nullptr, ptrB);
    80001ce8:	fd043603          	ld	a2,-48(s0)
    80001cec:	00000593          	li	a1,0
    80001cf0:	00004517          	auipc	a0,0x4
    80001cf4:	d3053503          	ld	a0,-720(a0) # 80005a20 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	dc4080e7          	jalr	-572(ra) # 80001abc <_ZN7kThread13createProcessEPFvPvES0_S0_>
    80001d00:	fca43423          	sd	a0,-56(s0)
    printString("CoroutineB created\n");
    80001d04:	00003517          	auipc	a0,0x3
    80001d08:	38c50513          	addi	a0,a0,908 # 80005090 <kvmincrease+0x9e0>
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	434080e7          	jalr	1076(ra) # 80002140 <_Z11printStringPKc>
    80001d14:	00c0006f          	j	80001d20 <main+0x108>

    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    {
        kThread::yield();
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	eb0080e7          	jalr	-336(ra) # 80001bc8 <_ZN7kThread5yieldEv>
    while (!(threads[1]->isFinished() && threads[2]->isFinished()))
    80001d20:	fc043783          	ld	a5,-64(s0)
    80001d24:	0307c783          	lbu	a5,48(a5)
    80001d28:	fe0788e3          	beqz	a5,80001d18 <main+0x100>
    80001d2c:	fc843783          	ld	a5,-56(s0)
    80001d30:	0307c783          	lbu	a5,48(a5)
    80001d34:	fe0782e3          	beqz	a5,80001d18 <main+0x100>
    80001d38:	fb840493          	addi	s1,s0,-72
    80001d3c:	0140006f          	j	80001d50 <main+0x138>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001d40:	00090513          	mv	a0,s2
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	0ac080e7          	jalr	172(ra) # 80001df0 <_ZdlPv>
    for (auto &thread: threads)
    80001d4c:	00848493          	addi	s1,s1,8
    80001d50:	fd040793          	addi	a5,s0,-48
    80001d54:	02f48063          	beq	s1,a5,80001d74 <main+0x15c>
        delete thread;
    80001d58:	0004b903          	ld	s2,0(s1)
    80001d5c:	fe0908e3          	beqz	s2,80001d4c <main+0x134>
    ~kThread() { delete[] stack; }
    80001d60:	01893503          	ld	a0,24(s2)
    80001d64:	fc050ee3          	beqz	a0,80001d40 <main+0x128>
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	0b0080e7          	jalr	176(ra) # 80001e18 <_ZdaPv>
    80001d70:	fd1ff06f          	j	80001d40 <main+0x128>
    }

    printString("Main exit\n");
    80001d74:	00003517          	auipc	a0,0x3
    80001d78:	33450513          	addi	a0,a0,820 # 800050a8 <kvmincrease+0x9f8>
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	3c4080e7          	jalr	964(ra) # 80002140 <_Z11printStringPKc>
    return 0;

}
    80001d84:	00000513          	li	a0,0
    80001d88:	04813083          	ld	ra,72(sp)
    80001d8c:	04013403          	ld	s0,64(sp)
    80001d90:	03813483          	ld	s1,56(sp)
    80001d94:	03013903          	ld	s2,48(sp)
    80001d98:	05010113          	addi	sp,sp,80
    80001d9c:	00008067          	ret

0000000080001da0 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00113423          	sd	ra,8(sp)
    80001da8:	00813023          	sd	s0,0(sp)
    80001dac:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001db0:	00002097          	auipc	ra,0x2
    80001db4:	688080e7          	jalr	1672(ra) # 80004438 <__mem_alloc>
}
    80001db8:	00813083          	ld	ra,8(sp)
    80001dbc:	00013403          	ld	s0,0(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <_Znam>:

void *operator new[](size_t n)
{
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00113423          	sd	ra,8(sp)
    80001dd0:	00813023          	sd	s0,0(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001dd8:	00002097          	auipc	ra,0x2
    80001ddc:	660080e7          	jalr	1632(ra) # 80004438 <__mem_alloc>
}
    80001de0:	00813083          	ld	ra,8(sp)
    80001de4:	00013403          	ld	s0,0(sp)
    80001de8:	01010113          	addi	sp,sp,16
    80001dec:	00008067          	ret

0000000080001df0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001e00:	00002097          	auipc	ra,0x2
    80001e04:	56c080e7          	jalr	1388(ra) # 8000436c <__mem_free>
}
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00113423          	sd	ra,8(sp)
    80001e20:	00813023          	sd	s0,0(sp)
    80001e24:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001e28:	00002097          	auipc	ra,0x2
    80001e2c:	544080e7          	jalr	1348(ra) # 8000436c <__mem_free>
    80001e30:	00813083          	ld	ra,8(sp)
    80001e34:	00013403          	ld	s0,0(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN5Riscv10popSppSpieEv>:
#include "../h/kThread.hpp"

using Body = void (*)(void *);

void Riscv::popSppSpie()
{
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00813423          	sd	s0,8(sp)
    80001e48:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra"); // sepc <=ra
    80001e4c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001e50:	10200073          	sret
}
    80001e54:	00813403          	ld	s0,8(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_ZN5Riscv13handleSyscallEv>:

void Riscv::handleSyscall() {
    80001e60:	fa010113          	addi	sp,sp,-96
    80001e64:	04113c23          	sd	ra,88(sp)
    80001e68:	04813823          	sd	s0,80(sp)
    80001e6c:	04913423          	sd	s1,72(sp)
    80001e70:	06010413          	addi	s0,sp,96

    //uzimam parametre
    uint64 a0, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001e74:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80001e78:	00058793          	mv	a5,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80001e7c:	00060793          	mv	a5,a2
    __asm__ volatile("mv %0, a4" : "=r"(a3));
    80001e80:	00070793          	mv	a5,a4
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80001e84:	00070793          	mv	a5,a4
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001e88:	142027f3          	csrr	a5,scause
    80001e8c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001e90:	fb843483          	ld	s1,-72(s0)

    uint64  scause = r_scause();

    //ecall iz korisnickog, ecall iz sistemskog rezima
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)//syscall
    80001e94:	ff848713          	addi	a4,s1,-8
    80001e98:	00100793          	li	a5,1
    80001e9c:	0ce7f263          	bgeu	a5,a4,80001f60 <_ZN5Riscv13handleSyscallEv+0x100>

    }
    else

    {
        if(scause == 0x0000000000000002UL)
    80001ea0:	00200793          	li	a5,2
    80001ea4:	14f48c63          	beq	s1,a5,80001ffc <_ZN5Riscv13handleSyscallEv+0x19c>
            printString("Ilegalna instrukcija\n:");
        else if (scause == 0x0000000000000005UL)
    80001ea8:	00500793          	li	a5,5
    80001eac:	16f48263          	beq	s1,a5,80002010 <_ZN5Riscv13handleSyscallEv+0x1b0>
            printString("Nedozvolena adresa citanja\n");
        else if (scause == 0x0000000000000007UL)
    80001eb0:	00700793          	li	a5,7
    80001eb4:	16f48863          	beq	s1,a5,80002024 <_ZN5Riscv13handleSyscallEv+0x1c4>
            printString("Nedozvolena adresa upisa\n");


        printString("scause: ");
    80001eb8:	00003517          	auipc	a0,0x3
    80001ebc:	25850513          	addi	a0,a0,600 # 80005110 <kvmincrease+0xa60>
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	280080e7          	jalr	640(ra) # 80002140 <_Z11printStringPKc>
        printInteger(scause);
    80001ec8:	00048513          	mv	a0,s1
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	2b8080e7          	jalr	696(ra) # 80002184 <_Z12printIntegerm>
        printString("\n");
    80001ed4:	00003517          	auipc	a0,0x3
    80001ed8:	23450513          	addi	a0,a0,564 # 80005108 <kvmincrease+0xa58>
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	264080e7          	jalr	612(ra) # 80002140 <_Z11printStringPKc>
        printString("sepc: ");
    80001ee4:	00003517          	auipc	a0,0x3
    80001ee8:	23c50513          	addi	a0,a0,572 # 80005120 <kvmincrease+0xa70>
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	254080e7          	jalr	596(ra) # 80002140 <_Z11printStringPKc>
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ef4:	141027f3          	csrr	a5,sepc
    80001ef8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001efc:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	284080e7          	jalr	644(ra) # 80002184 <_Z12printIntegerm>
        printString("\n");
    80001f08:	00003517          	auipc	a0,0x3
    80001f0c:	20050513          	addi	a0,a0,512 # 80005108 <kvmincrease+0xa58>
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	230080e7          	jalr	560(ra) # 80002140 <_Z11printStringPKc>
        printString("stval: ");
    80001f18:	00003517          	auipc	a0,0x3
    80001f1c:	21050513          	addi	a0,a0,528 # 80005128 <kvmincrease+0xa78>
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	220080e7          	jalr	544(ra) # 80002140 <_Z11printStringPKc>
}

inline uint64 Riscv::r_stval()
{
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001f28:	143027f3          	csrr	a5,stval
    80001f2c:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80001f30:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	250080e7          	jalr	592(ra) # 80002184 <_Z12printIntegerm>
        printString("\n");
    80001f3c:	00003517          	auipc	a0,0x3
    80001f40:	1cc50513          	addi	a0,a0,460 # 80005108 <kvmincrease+0xa58>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	1fc080e7          	jalr	508(ra) # 80002140 <_Z11printStringPKc>
        //while(1);
    }
}
    80001f4c:	05813083          	ld	ra,88(sp)
    80001f50:	05013403          	ld	s0,80(sp)
    80001f54:	04813483          	ld	s1,72(sp)
    80001f58:	06010113          	addi	sp,sp,96
    80001f5c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f60:	141027f3          	csrr	a5,sepc
    80001f64:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001f68:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+ 4; // jer pc pokazuje na trenutnu instrukciju tj ecall, a po povratku treba da sksocim na  sledecu da se ne bih vrtela vecno
    80001f6c:	00478793          	addi	a5,a5,4
    80001f70:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f74:	100027f3          	csrr	a5,sstatus
    80001f78:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001f7c:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus(); // kupim vrednost statusnog registra
    80001f80:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a0" : "=r"(syscall));
    80001f84:	00050793          	mv	a5,a0
        switch(syscall)
    80001f88:	00200713          	li	a4,2
    80001f8c:	04e78e63          	beq	a5,a4,80001fe8 <_ZN5Riscv13handleSyscallEv+0x188>
    80001f90:	02f76c63          	bltu	a4,a5,80001fc8 <_ZN5Riscv13handleSyscallEv+0x168>
    80001f94:	00100713          	li	a4,1
    80001f98:	00e79c63          	bne	a5,a4,80001fb0 <_ZN5Riscv13handleSyscallEv+0x150>
                __asm__ volatile("mv %0, a1":"=r"(size));
    80001f9c:	00058513          	mv	a0,a1
                ptr = __mem_alloc(size);
    80001fa0:	00651513          	slli	a0,a0,0x6
    80001fa4:	00002097          	auipc	ra,0x2
    80001fa8:	494080e7          	jalr	1172(ra) # 80004438 <__mem_alloc>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001fac:	00050513          	mv	a0,a0
        __asm__ volatile("sd a0, 80(fp)"); //resava mi problem sa a0 (skontaj sta si tu radila)
    80001fb0:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001fb4:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001fb8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001fbc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001fc0:	14179073          	csrw	sepc,a5
}
    80001fc4:	f89ff06f          	j	80001f4c <_ZN5Riscv13handleSyscallEv+0xec>
        switch(syscall)
    80001fc8:	01100713          	li	a4,17
    80001fcc:	00e78663          	beq	a5,a4,80001fd8 <_ZN5Riscv13handleSyscallEv+0x178>
    80001fd0:	05500713          	li	a4,85
    80001fd4:	fce79ee3          	bne	a5,a4,80001fb0 <_ZN5Riscv13handleSyscallEv+0x150>
                __asm__ volatile("mv %0, a1":"=r"(args));
    80001fd8:	00058793          	mv	a5,a1
                args += 6;
    80001fdc:	0067879b          	addiw	a5,a5,6
                __asm__ volatile("mv a0, %0"::"r"(args));
    80001fe0:	00078513          	mv	a0,a5
                break;
    80001fe4:	fcdff06f          	j	80001fb0 <_ZN5Riscv13handleSyscallEv+0x150>
                __asm__ volatile("mv %0, a1": "=r"(ptr));
    80001fe8:	00058513          	mv	a0,a1
                ret = __mem_free(ptr);
    80001fec:	00002097          	auipc	ra,0x2
    80001ff0:	380080e7          	jalr	896(ra) # 8000436c <__mem_free>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80001ff4:	00050513          	mv	a0,a0
                break;
    80001ff8:	fb9ff06f          	j	80001fb0 <_ZN5Riscv13handleSyscallEv+0x150>
            printString("Ilegalna instrukcija\n:");
    80001ffc:	00003517          	auipc	a0,0x3
    80002000:	0bc50513          	addi	a0,a0,188 # 800050b8 <kvmincrease+0xa08>
    80002004:	00000097          	auipc	ra,0x0
    80002008:	13c080e7          	jalr	316(ra) # 80002140 <_Z11printStringPKc>
    8000200c:	eadff06f          	j	80001eb8 <_ZN5Riscv13handleSyscallEv+0x58>
            printString("Nedozvolena adresa citanja\n");
    80002010:	00003517          	auipc	a0,0x3
    80002014:	0c050513          	addi	a0,a0,192 # 800050d0 <kvmincrease+0xa20>
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	128080e7          	jalr	296(ra) # 80002140 <_Z11printStringPKc>
    80002020:	e99ff06f          	j	80001eb8 <_ZN5Riscv13handleSyscallEv+0x58>
            printString("Nedozvolena adresa upisa\n");
    80002024:	00003517          	auipc	a0,0x3
    80002028:	0cc50513          	addi	a0,a0,204 # 800050f0 <kvmincrease+0xa40>
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	114080e7          	jalr	276(ra) # 80002140 <_Z11printStringPKc>
    80002034:	e85ff06f          	j	80001eb8 <_ZN5Riscv13handleSyscallEv+0x58>

0000000080002038 <_ZN5Riscv20handleTimerInterruptEv>:
void Riscv::handleTimerInterrupt() {
    80002038:	fd010113          	addi	sp,sp,-48
    8000203c:	02813423          	sd	s0,40(sp)
    80002040:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002044:	00200793          	li	a5,2
    80002048:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000204c:	141027f3          	csrr	a5,sepc
    80002050:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002054:	fd843783          	ld	a5,-40(s0)

    mc_sip(SIP_SSIP); //zasto ovo?? - ni ne radim vrv

    uint64 volatile sepc = r_sepc();
    80002058:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000205c:	100027f3          	csrr	a5,sstatus
    80002060:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002064:	fd043783          	ld	a5,-48(s0)
    uint64 volatile sstatus = r_sstatus();
    80002068:	fef43023          	sd	a5,-32(s0)
    w_sstatus(sstatus);
    8000206c:	fe043783          	ld	a5,-32(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002070:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    80002074:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002078:	14179073          	csrw	sepc,a5
}
    8000207c:	02813403          	ld	s0,40(sp)
    80002080:	03010113          	addi	sp,sp,48
    80002084:	00008067          	ret

0000000080002088 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00113423          	sd	ra,8(sp)
    80002090:	00813023          	sd	s0,0(sp)
    80002094:	01010413          	addi	s0,sp,16
    console_handler();
    80002098:	00002097          	auipc	ra,0x2
    8000209c:	56c080e7          	jalr	1388(ra) # 80004604 <console_handler>
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN5Riscv14handleBadCauseEv>:

void Riscv::handleBadCause() {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16

    800020bc:	00813403          	ld	s0,8(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_ZN10kScheduler3getEv>:

kThread* kScheduler::headReady = nullptr;
kThread* kScheduler::tailReady = nullptr;
//ne zaboravi idle nit da ubacis na pocetku
kThread* kScheduler::get()
{
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00813423          	sd	s0,8(sp)
    800020d0:	01010413          	addi	s0,sp,16

    kThread* tmp = headReady;
    800020d4:	00004517          	auipc	a0,0x4
    800020d8:	9a453503          	ld	a0,-1628(a0) # 80005a78 <_ZN10kScheduler9headReadyE>
   if(headReady) headReady = headReady->nextReadyProccess;
    800020dc:	00050863          	beqz	a0,800020ec <_ZN10kScheduler3getEv+0x24>
    800020e0:	00053783          	ld	a5,0(a0)
    800020e4:	00004717          	auipc	a4,0x4
    800020e8:	98f73a23          	sd	a5,-1644(a4) # 80005a78 <_ZN10kScheduler9headReadyE>
    return tmp;

}
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_ZN10kScheduler3putEP7kThread>:

void kScheduler::put(kThread* thr)
{
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16

    if(!headReady) headReady = thr;
    80002104:	00004797          	auipc	a5,0x4
    80002108:	9747b783          	ld	a5,-1676(a5) # 80005a78 <_ZN10kScheduler9headReadyE>
    8000210c:	02078463          	beqz	a5,80002134 <_ZN10kScheduler3putEP7kThread+0x3c>

    if(tailReady)
    80002110:	00004797          	auipc	a5,0x4
    80002114:	9707b783          	ld	a5,-1680(a5) # 80005a80 <_ZN10kScheduler9tailReadyE>
    80002118:	00078463          	beqz	a5,80002120 <_ZN10kScheduler3putEP7kThread+0x28>
    {
        tailReady->nextReadyProccess = thr;
    8000211c:	00a7b023          	sd	a0,0(a5)
    }

     tailReady = thr;
    80002120:	00004797          	auipc	a5,0x4
    80002124:	96a7b023          	sd	a0,-1696(a5) # 80005a80 <_ZN10kScheduler9tailReadyE>

}
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret
    if(!headReady) headReady = thr;
    80002134:	00004797          	auipc	a5,0x4
    80002138:	94a7b223          	sd	a0,-1724(a5) # 80005a78 <_ZN10kScheduler9headReadyE>
    8000213c:	fd5ff06f          	j	80002110 <_ZN10kScheduler3putEP7kThread+0x18>

0000000080002140 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002140:	fe010113          	addi	sp,sp,-32
    80002144:	00113c23          	sd	ra,24(sp)
    80002148:	00813823          	sd	s0,16(sp)
    8000214c:	00913423          	sd	s1,8(sp)
    80002150:	02010413          	addi	s0,sp,32
    80002154:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002158:	0004c503          	lbu	a0,0(s1)
    8000215c:	00050a63          	beqz	a0,80002170 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80002160:	00002097          	auipc	ra,0x2
    80002164:	430080e7          	jalr	1072(ra) # 80004590 <__putc>
        string++;
    80002168:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000216c:	fedff06f          	j	80002158 <_Z11printStringPKc+0x18>
    }
}
    80002170:	01813083          	ld	ra,24(sp)
    80002174:	01013403          	ld	s0,16(sp)
    80002178:	00813483          	ld	s1,8(sp)
    8000217c:	02010113          	addi	sp,sp,32
    80002180:	00008067          	ret

0000000080002184 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002184:	fd010113          	addi	sp,sp,-48
    80002188:	02113423          	sd	ra,40(sp)
    8000218c:	02813023          	sd	s0,32(sp)
    80002190:	00913c23          	sd	s1,24(sp)
    80002194:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002198:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    8000219c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800021a0:	00a00613          	li	a2,10
    800021a4:	02c5773b          	remuw	a4,a0,a2
    800021a8:	02071693          	slli	a3,a4,0x20
    800021ac:	0206d693          	srli	a3,a3,0x20
    800021b0:	00003717          	auipc	a4,0x3
    800021b4:	f8070713          	addi	a4,a4,-128 # 80005130 <_ZZ12printIntegermE6digits>
    800021b8:	00d70733          	add	a4,a4,a3
    800021bc:	00074703          	lbu	a4,0(a4)
    800021c0:	fe040693          	addi	a3,s0,-32
    800021c4:	009687b3          	add	a5,a3,s1
    800021c8:	0014849b          	addiw	s1,s1,1
    800021cc:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800021d0:	0005071b          	sext.w	a4,a0
    800021d4:	02c5553b          	divuw	a0,a0,a2
    800021d8:	00900793          	li	a5,9
    800021dc:	fce7e2e3          	bltu	a5,a4,800021a0 <_Z12printIntegerm+0x1c>

    if (neg==1)
        buf[i++] = '-';

    while (--i >= 0)
    800021e0:	fff4849b          	addiw	s1,s1,-1
    800021e4:	0004ce63          	bltz	s1,80002200 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    800021e8:	fe040793          	addi	a5,s0,-32
    800021ec:	009787b3          	add	a5,a5,s1
    800021f0:	ff07c503          	lbu	a0,-16(a5)
    800021f4:	00002097          	auipc	ra,0x2
    800021f8:	39c080e7          	jalr	924(ra) # 80004590 <__putc>
    800021fc:	fe5ff06f          	j	800021e0 <_Z12printIntegerm+0x5c>
}
    80002200:	02813083          	ld	ra,40(sp)
    80002204:	02013403          	ld	s0,32(sp)
    80002208:	01813483          	ld	s1,24(sp)
    8000220c:	03010113          	addi	sp,sp,48
    80002210:	00008067          	ret

0000000080002214 <_Z8printHexm>:


void printHex(uint64 integer)
{
    80002214:	fc010113          	addi	sp,sp,-64
    80002218:	02113c23          	sd	ra,56(sp)
    8000221c:	02813823          	sd	s0,48(sp)
    80002220:	02913423          	sd	s1,40(sp)
    80002224:	04010413          	addi	s0,sp,64
    static char hexDigits[] = "0123456789ABCDEF";
    char hexChars[17];
    int index = 0;
    80002228:	00000493          	li	s1,0

    while (integer > 0) {
    8000222c:	02050863          	beqz	a0,8000225c <_Z8printHexm+0x48>
        uint64 remainder = integer % 16;
    80002230:	00f57713          	andi	a4,a0,15
        hexChars[index++] = hexDigits[remainder];
    80002234:	00003797          	auipc	a5,0x3
    80002238:	efc78793          	addi	a5,a5,-260 # 80005130 <_ZZ12printIntegermE6digits>
    8000223c:	00e787b3          	add	a5,a5,a4
    80002240:	0107c703          	lbu	a4,16(a5)
    80002244:	fe040793          	addi	a5,s0,-32
    80002248:	009787b3          	add	a5,a5,s1
    8000224c:	fee78423          	sb	a4,-24(a5)
        integer /= 16;
    80002250:	00455513          	srli	a0,a0,0x4
        hexChars[index++] = hexDigits[remainder];
    80002254:	0014849b          	addiw	s1,s1,1
    while (integer > 0) {
    80002258:	fd5ff06f          	j	8000222c <_Z8printHexm+0x18>
    }

    __putc('0');
    8000225c:	03000513          	li	a0,48
    80002260:	00002097          	auipc	ra,0x2
    80002264:	330080e7          	jalr	816(ra) # 80004590 <__putc>
    __putc('x');
    80002268:	07800513          	li	a0,120
    8000226c:	00002097          	auipc	ra,0x2
    80002270:	324080e7          	jalr	804(ra) # 80004590 <__putc>
    // Print the hexadecimal characters in reverse order
    while (--index >= 0) {
    80002274:	fff4849b          	addiw	s1,s1,-1
    80002278:	0004ce63          	bltz	s1,80002294 <_Z8printHexm+0x80>
        __putc(hexChars[index]);
    8000227c:	fe040793          	addi	a5,s0,-32
    80002280:	009787b3          	add	a5,a5,s1
    80002284:	fe87c503          	lbu	a0,-24(a5)
    80002288:	00002097          	auipc	ra,0x2
    8000228c:	308080e7          	jalr	776(ra) # 80004590 <__putc>
    80002290:	fe5ff06f          	j	80002274 <_Z8printHexm+0x60>
    }
    80002294:	03813083          	ld	ra,56(sp)
    80002298:	03013403          	ld	s0,48(sp)
    8000229c:	02813483          	ld	s1,40(sp)
    800022a0:	04010113          	addi	sp,sp,64
    800022a4:	00008067          	ret

00000000800022a8 <start>:
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00813423          	sd	s0,8(sp)
    800022b0:	01010413          	addi	s0,sp,16
    800022b4:	300027f3          	csrr	a5,mstatus
    800022b8:	ffffe737          	lui	a4,0xffffe
    800022bc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7aff>
    800022c0:	00e7f7b3          	and	a5,a5,a4
    800022c4:	00001737          	lui	a4,0x1
    800022c8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800022cc:	00e7e7b3          	or	a5,a5,a4
    800022d0:	30079073          	csrw	mstatus,a5
    800022d4:	00000797          	auipc	a5,0x0
    800022d8:	16078793          	addi	a5,a5,352 # 80002434 <system_main>
    800022dc:	34179073          	csrw	mepc,a5
    800022e0:	00000793          	li	a5,0
    800022e4:	18079073          	csrw	satp,a5
    800022e8:	000107b7          	lui	a5,0x10
    800022ec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800022f0:	30279073          	csrw	medeleg,a5
    800022f4:	30379073          	csrw	mideleg,a5
    800022f8:	104027f3          	csrr	a5,sie
    800022fc:	2227e793          	ori	a5,a5,546
    80002300:	10479073          	csrw	sie,a5
    80002304:	fff00793          	li	a5,-1
    80002308:	00a7d793          	srli	a5,a5,0xa
    8000230c:	3b079073          	csrw	pmpaddr0,a5
    80002310:	00f00793          	li	a5,15
    80002314:	3a079073          	csrw	pmpcfg0,a5
    80002318:	f14027f3          	csrr	a5,mhartid
    8000231c:	0200c737          	lui	a4,0x200c
    80002320:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002324:	0007869b          	sext.w	a3,a5
    80002328:	00269713          	slli	a4,a3,0x2
    8000232c:	000f4637          	lui	a2,0xf4
    80002330:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002334:	00d70733          	add	a4,a4,a3
    80002338:	0037979b          	slliw	a5,a5,0x3
    8000233c:	020046b7          	lui	a3,0x2004
    80002340:	00d787b3          	add	a5,a5,a3
    80002344:	00c585b3          	add	a1,a1,a2
    80002348:	00371693          	slli	a3,a4,0x3
    8000234c:	00003717          	auipc	a4,0x3
    80002350:	74470713          	addi	a4,a4,1860 # 80005a90 <timer_scratch>
    80002354:	00b7b023          	sd	a1,0(a5)
    80002358:	00d70733          	add	a4,a4,a3
    8000235c:	00f73c23          	sd	a5,24(a4)
    80002360:	02c73023          	sd	a2,32(a4)
    80002364:	34071073          	csrw	mscratch,a4
    80002368:	00000797          	auipc	a5,0x0
    8000236c:	6e878793          	addi	a5,a5,1768 # 80002a50 <timervec>
    80002370:	30579073          	csrw	mtvec,a5
    80002374:	300027f3          	csrr	a5,mstatus
    80002378:	0087e793          	ori	a5,a5,8
    8000237c:	30079073          	csrw	mstatus,a5
    80002380:	304027f3          	csrr	a5,mie
    80002384:	0807e793          	ori	a5,a5,128
    80002388:	30479073          	csrw	mie,a5
    8000238c:	f14027f3          	csrr	a5,mhartid
    80002390:	0007879b          	sext.w	a5,a5
    80002394:	00078213          	mv	tp,a5
    80002398:	30200073          	mret
    8000239c:	00813403          	ld	s0,8(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <timerinit>:
    800023a8:	ff010113          	addi	sp,sp,-16
    800023ac:	00813423          	sd	s0,8(sp)
    800023b0:	01010413          	addi	s0,sp,16
    800023b4:	f14027f3          	csrr	a5,mhartid
    800023b8:	0200c737          	lui	a4,0x200c
    800023bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800023c0:	0007869b          	sext.w	a3,a5
    800023c4:	00269713          	slli	a4,a3,0x2
    800023c8:	000f4637          	lui	a2,0xf4
    800023cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800023d0:	00d70733          	add	a4,a4,a3
    800023d4:	0037979b          	slliw	a5,a5,0x3
    800023d8:	020046b7          	lui	a3,0x2004
    800023dc:	00d787b3          	add	a5,a5,a3
    800023e0:	00c585b3          	add	a1,a1,a2
    800023e4:	00371693          	slli	a3,a4,0x3
    800023e8:	00003717          	auipc	a4,0x3
    800023ec:	6a870713          	addi	a4,a4,1704 # 80005a90 <timer_scratch>
    800023f0:	00b7b023          	sd	a1,0(a5)
    800023f4:	00d70733          	add	a4,a4,a3
    800023f8:	00f73c23          	sd	a5,24(a4)
    800023fc:	02c73023          	sd	a2,32(a4)
    80002400:	34071073          	csrw	mscratch,a4
    80002404:	00000797          	auipc	a5,0x0
    80002408:	64c78793          	addi	a5,a5,1612 # 80002a50 <timervec>
    8000240c:	30579073          	csrw	mtvec,a5
    80002410:	300027f3          	csrr	a5,mstatus
    80002414:	0087e793          	ori	a5,a5,8
    80002418:	30079073          	csrw	mstatus,a5
    8000241c:	304027f3          	csrr	a5,mie
    80002420:	0807e793          	ori	a5,a5,128
    80002424:	30479073          	csrw	mie,a5
    80002428:	00813403          	ld	s0,8(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <system_main>:
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00913423          	sd	s1,8(sp)
    80002440:	00113c23          	sd	ra,24(sp)
    80002444:	02010413          	addi	s0,sp,32
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	0c4080e7          	jalr	196(ra) # 8000250c <cpuid>
    80002450:	00003497          	auipc	s1,0x3
    80002454:	5f048493          	addi	s1,s1,1520 # 80005a40 <started>
    80002458:	02050263          	beqz	a0,8000247c <system_main+0x48>
    8000245c:	0004a783          	lw	a5,0(s1)
    80002460:	0007879b          	sext.w	a5,a5
    80002464:	fe078ce3          	beqz	a5,8000245c <system_main+0x28>
    80002468:	0ff0000f          	fence
    8000246c:	00003517          	auipc	a0,0x3
    80002470:	d1c50513          	addi	a0,a0,-740 # 80005188 <_ZZ8printHexmE9hexDigits+0x48>
    80002474:	00001097          	auipc	ra,0x1
    80002478:	a78080e7          	jalr	-1416(ra) # 80002eec <panic>
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	9cc080e7          	jalr	-1588(ra) # 80002e48 <consoleinit>
    80002484:	00001097          	auipc	ra,0x1
    80002488:	158080e7          	jalr	344(ra) # 800035dc <printfinit>
    8000248c:	00003517          	auipc	a0,0x3
    80002490:	c7c50513          	addi	a0,a0,-900 # 80005108 <kvmincrease+0xa58>
    80002494:	00001097          	auipc	ra,0x1
    80002498:	ab4080e7          	jalr	-1356(ra) # 80002f48 <__printf>
    8000249c:	00003517          	auipc	a0,0x3
    800024a0:	cbc50513          	addi	a0,a0,-836 # 80005158 <_ZZ8printHexmE9hexDigits+0x18>
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	aa4080e7          	jalr	-1372(ra) # 80002f48 <__printf>
    800024ac:	00003517          	auipc	a0,0x3
    800024b0:	c5c50513          	addi	a0,a0,-932 # 80005108 <kvmincrease+0xa58>
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	a94080e7          	jalr	-1388(ra) # 80002f48 <__printf>
    800024bc:	00001097          	auipc	ra,0x1
    800024c0:	4ac080e7          	jalr	1196(ra) # 80003968 <kinit>
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	148080e7          	jalr	328(ra) # 8000260c <trapinit>
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	16c080e7          	jalr	364(ra) # 80002638 <trapinithart>
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	5bc080e7          	jalr	1468(ra) # 80002a90 <plicinit>
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	5dc080e7          	jalr	1500(ra) # 80002ab8 <plicinithart>
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	078080e7          	jalr	120(ra) # 8000255c <userinit>
    800024ec:	0ff0000f          	fence
    800024f0:	00100793          	li	a5,1
    800024f4:	00003517          	auipc	a0,0x3
    800024f8:	c7c50513          	addi	a0,a0,-900 # 80005170 <_ZZ8printHexmE9hexDigits+0x30>
    800024fc:	00f4a023          	sw	a5,0(s1)
    80002500:	00001097          	auipc	ra,0x1
    80002504:	a48080e7          	jalr	-1464(ra) # 80002f48 <__printf>
    80002508:	0000006f          	j	80002508 <system_main+0xd4>

000000008000250c <cpuid>:
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00813423          	sd	s0,8(sp)
    80002514:	01010413          	addi	s0,sp,16
    80002518:	00020513          	mv	a0,tp
    8000251c:	00813403          	ld	s0,8(sp)
    80002520:	0005051b          	sext.w	a0,a0
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00008067          	ret

000000008000252c <mycpu>:
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00813423          	sd	s0,8(sp)
    80002534:	01010413          	addi	s0,sp,16
    80002538:	00020793          	mv	a5,tp
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	0007879b          	sext.w	a5,a5
    80002544:	00779793          	slli	a5,a5,0x7
    80002548:	00004517          	auipc	a0,0x4
    8000254c:	57850513          	addi	a0,a0,1400 # 80006ac0 <cpus>
    80002550:	00f50533          	add	a0,a0,a5
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret

000000008000255c <userinit>:
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00813423          	sd	s0,8(sp)
    80002564:	01010413          	addi	s0,sp,16
    80002568:	00813403          	ld	s0,8(sp)
    8000256c:	01010113          	addi	sp,sp,16
    80002570:	fffff317          	auipc	t1,0xfffff
    80002574:	6a830067          	jr	1704(t1) # 80001c18 <main>

0000000080002578 <either_copyout>:
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00813023          	sd	s0,0(sp)
    80002580:	00113423          	sd	ra,8(sp)
    80002584:	01010413          	addi	s0,sp,16
    80002588:	02051663          	bnez	a0,800025b4 <either_copyout+0x3c>
    8000258c:	00058513          	mv	a0,a1
    80002590:	00060593          	mv	a1,a2
    80002594:	0006861b          	sext.w	a2,a3
    80002598:	00002097          	auipc	ra,0x2
    8000259c:	c5c080e7          	jalr	-932(ra) # 800041f4 <__memmove>
    800025a0:	00813083          	ld	ra,8(sp)
    800025a4:	00013403          	ld	s0,0(sp)
    800025a8:	00000513          	li	a0,0
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret
    800025b4:	00003517          	auipc	a0,0x3
    800025b8:	bfc50513          	addi	a0,a0,-1028 # 800051b0 <_ZZ8printHexmE9hexDigits+0x70>
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	930080e7          	jalr	-1744(ra) # 80002eec <panic>

00000000800025c4 <either_copyin>:
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00813023          	sd	s0,0(sp)
    800025cc:	00113423          	sd	ra,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    800025d4:	02059463          	bnez	a1,800025fc <either_copyin+0x38>
    800025d8:	00060593          	mv	a1,a2
    800025dc:	0006861b          	sext.w	a2,a3
    800025e0:	00002097          	auipc	ra,0x2
    800025e4:	c14080e7          	jalr	-1004(ra) # 800041f4 <__memmove>
    800025e8:	00813083          	ld	ra,8(sp)
    800025ec:	00013403          	ld	s0,0(sp)
    800025f0:	00000513          	li	a0,0
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret
    800025fc:	00003517          	auipc	a0,0x3
    80002600:	bdc50513          	addi	a0,a0,-1060 # 800051d8 <_ZZ8printHexmE9hexDigits+0x98>
    80002604:	00001097          	auipc	ra,0x1
    80002608:	8e8080e7          	jalr	-1816(ra) # 80002eec <panic>

000000008000260c <trapinit>:
    8000260c:	ff010113          	addi	sp,sp,-16
    80002610:	00813423          	sd	s0,8(sp)
    80002614:	01010413          	addi	s0,sp,16
    80002618:	00813403          	ld	s0,8(sp)
    8000261c:	00003597          	auipc	a1,0x3
    80002620:	be458593          	addi	a1,a1,-1052 # 80005200 <_ZZ8printHexmE9hexDigits+0xc0>
    80002624:	00004517          	auipc	a0,0x4
    80002628:	51c50513          	addi	a0,a0,1308 # 80006b40 <tickslock>
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00001317          	auipc	t1,0x1
    80002634:	5c830067          	jr	1480(t1) # 80003bf8 <initlock>

0000000080002638 <trapinithart>:
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00813423          	sd	s0,8(sp)
    80002640:	01010413          	addi	s0,sp,16
    80002644:	00000797          	auipc	a5,0x0
    80002648:	2fc78793          	addi	a5,a5,764 # 80002940 <kernelvec>
    8000264c:	10579073          	csrw	stvec,a5
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <usertrap>:
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00813423          	sd	s0,8(sp)
    80002664:	01010413          	addi	s0,sp,16
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <usertrapret>:
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00813423          	sd	s0,8(sp)
    8000267c:	01010413          	addi	s0,sp,16
    80002680:	00813403          	ld	s0,8(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <kerneltrap>:
    8000268c:	fe010113          	addi	sp,sp,-32
    80002690:	00813823          	sd	s0,16(sp)
    80002694:	00113c23          	sd	ra,24(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	142025f3          	csrr	a1,scause
    800026a4:	100027f3          	csrr	a5,sstatus
    800026a8:	0027f793          	andi	a5,a5,2
    800026ac:	10079c63          	bnez	a5,800027c4 <kerneltrap+0x138>
    800026b0:	142027f3          	csrr	a5,scause
    800026b4:	0207ce63          	bltz	a5,800026f0 <kerneltrap+0x64>
    800026b8:	00003517          	auipc	a0,0x3
    800026bc:	b9050513          	addi	a0,a0,-1136 # 80005248 <_ZZ8printHexmE9hexDigits+0x108>
    800026c0:	00001097          	auipc	ra,0x1
    800026c4:	888080e7          	jalr	-1912(ra) # 80002f48 <__printf>
    800026c8:	141025f3          	csrr	a1,sepc
    800026cc:	14302673          	csrr	a2,stval
    800026d0:	00003517          	auipc	a0,0x3
    800026d4:	b8850513          	addi	a0,a0,-1144 # 80005258 <_ZZ8printHexmE9hexDigits+0x118>
    800026d8:	00001097          	auipc	ra,0x1
    800026dc:	870080e7          	jalr	-1936(ra) # 80002f48 <__printf>
    800026e0:	00003517          	auipc	a0,0x3
    800026e4:	b9050513          	addi	a0,a0,-1136 # 80005270 <_ZZ8printHexmE9hexDigits+0x130>
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	804080e7          	jalr	-2044(ra) # 80002eec <panic>
    800026f0:	0ff7f713          	andi	a4,a5,255
    800026f4:	00900693          	li	a3,9
    800026f8:	04d70063          	beq	a4,a3,80002738 <kerneltrap+0xac>
    800026fc:	fff00713          	li	a4,-1
    80002700:	03f71713          	slli	a4,a4,0x3f
    80002704:	00170713          	addi	a4,a4,1
    80002708:	fae798e3          	bne	a5,a4,800026b8 <kerneltrap+0x2c>
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	e00080e7          	jalr	-512(ra) # 8000250c <cpuid>
    80002714:	06050663          	beqz	a0,80002780 <kerneltrap+0xf4>
    80002718:	144027f3          	csrr	a5,sip
    8000271c:	ffd7f793          	andi	a5,a5,-3
    80002720:	14479073          	csrw	sip,a5
    80002724:	01813083          	ld	ra,24(sp)
    80002728:	01013403          	ld	s0,16(sp)
    8000272c:	00813483          	ld	s1,8(sp)
    80002730:	02010113          	addi	sp,sp,32
    80002734:	00008067          	ret
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	3cc080e7          	jalr	972(ra) # 80002b04 <plic_claim>
    80002740:	00a00793          	li	a5,10
    80002744:	00050493          	mv	s1,a0
    80002748:	06f50863          	beq	a0,a5,800027b8 <kerneltrap+0x12c>
    8000274c:	fc050ce3          	beqz	a0,80002724 <kerneltrap+0x98>
    80002750:	00050593          	mv	a1,a0
    80002754:	00003517          	auipc	a0,0x3
    80002758:	ad450513          	addi	a0,a0,-1324 # 80005228 <_ZZ8printHexmE9hexDigits+0xe8>
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	7ec080e7          	jalr	2028(ra) # 80002f48 <__printf>
    80002764:	01013403          	ld	s0,16(sp)
    80002768:	01813083          	ld	ra,24(sp)
    8000276c:	00048513          	mv	a0,s1
    80002770:	00813483          	ld	s1,8(sp)
    80002774:	02010113          	addi	sp,sp,32
    80002778:	00000317          	auipc	t1,0x0
    8000277c:	3c430067          	jr	964(t1) # 80002b3c <plic_complete>
    80002780:	00004517          	auipc	a0,0x4
    80002784:	3c050513          	addi	a0,a0,960 # 80006b40 <tickslock>
    80002788:	00001097          	auipc	ra,0x1
    8000278c:	494080e7          	jalr	1172(ra) # 80003c1c <acquire>
    80002790:	00003717          	auipc	a4,0x3
    80002794:	2b470713          	addi	a4,a4,692 # 80005a44 <ticks>
    80002798:	00072783          	lw	a5,0(a4)
    8000279c:	00004517          	auipc	a0,0x4
    800027a0:	3a450513          	addi	a0,a0,932 # 80006b40 <tickslock>
    800027a4:	0017879b          	addiw	a5,a5,1
    800027a8:	00f72023          	sw	a5,0(a4)
    800027ac:	00001097          	auipc	ra,0x1
    800027b0:	53c080e7          	jalr	1340(ra) # 80003ce8 <release>
    800027b4:	f65ff06f          	j	80002718 <kerneltrap+0x8c>
    800027b8:	00001097          	auipc	ra,0x1
    800027bc:	098080e7          	jalr	152(ra) # 80003850 <uartintr>
    800027c0:	fa5ff06f          	j	80002764 <kerneltrap+0xd8>
    800027c4:	00003517          	auipc	a0,0x3
    800027c8:	a4450513          	addi	a0,a0,-1468 # 80005208 <_ZZ8printHexmE9hexDigits+0xc8>
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	720080e7          	jalr	1824(ra) # 80002eec <panic>

00000000800027d4 <clockintr>:
    800027d4:	fe010113          	addi	sp,sp,-32
    800027d8:	00813823          	sd	s0,16(sp)
    800027dc:	00913423          	sd	s1,8(sp)
    800027e0:	00113c23          	sd	ra,24(sp)
    800027e4:	02010413          	addi	s0,sp,32
    800027e8:	00004497          	auipc	s1,0x4
    800027ec:	35848493          	addi	s1,s1,856 # 80006b40 <tickslock>
    800027f0:	00048513          	mv	a0,s1
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	428080e7          	jalr	1064(ra) # 80003c1c <acquire>
    800027fc:	00003717          	auipc	a4,0x3
    80002800:	24870713          	addi	a4,a4,584 # 80005a44 <ticks>
    80002804:	00072783          	lw	a5,0(a4)
    80002808:	01013403          	ld	s0,16(sp)
    8000280c:	01813083          	ld	ra,24(sp)
    80002810:	00048513          	mv	a0,s1
    80002814:	0017879b          	addiw	a5,a5,1
    80002818:	00813483          	ld	s1,8(sp)
    8000281c:	00f72023          	sw	a5,0(a4)
    80002820:	02010113          	addi	sp,sp,32
    80002824:	00001317          	auipc	t1,0x1
    80002828:	4c430067          	jr	1220(t1) # 80003ce8 <release>

000000008000282c <devintr>:
    8000282c:	142027f3          	csrr	a5,scause
    80002830:	00000513          	li	a0,0
    80002834:	0007c463          	bltz	a5,8000283c <devintr+0x10>
    80002838:	00008067          	ret
    8000283c:	fe010113          	addi	sp,sp,-32
    80002840:	00813823          	sd	s0,16(sp)
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00913423          	sd	s1,8(sp)
    8000284c:	02010413          	addi	s0,sp,32
    80002850:	0ff7f713          	andi	a4,a5,255
    80002854:	00900693          	li	a3,9
    80002858:	04d70c63          	beq	a4,a3,800028b0 <devintr+0x84>
    8000285c:	fff00713          	li	a4,-1
    80002860:	03f71713          	slli	a4,a4,0x3f
    80002864:	00170713          	addi	a4,a4,1
    80002868:	00e78c63          	beq	a5,a4,80002880 <devintr+0x54>
    8000286c:	01813083          	ld	ra,24(sp)
    80002870:	01013403          	ld	s0,16(sp)
    80002874:	00813483          	ld	s1,8(sp)
    80002878:	02010113          	addi	sp,sp,32
    8000287c:	00008067          	ret
    80002880:	00000097          	auipc	ra,0x0
    80002884:	c8c080e7          	jalr	-884(ra) # 8000250c <cpuid>
    80002888:	06050663          	beqz	a0,800028f4 <devintr+0xc8>
    8000288c:	144027f3          	csrr	a5,sip
    80002890:	ffd7f793          	andi	a5,a5,-3
    80002894:	14479073          	csrw	sip,a5
    80002898:	01813083          	ld	ra,24(sp)
    8000289c:	01013403          	ld	s0,16(sp)
    800028a0:	00813483          	ld	s1,8(sp)
    800028a4:	00200513          	li	a0,2
    800028a8:	02010113          	addi	sp,sp,32
    800028ac:	00008067          	ret
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	254080e7          	jalr	596(ra) # 80002b04 <plic_claim>
    800028b8:	00a00793          	li	a5,10
    800028bc:	00050493          	mv	s1,a0
    800028c0:	06f50663          	beq	a0,a5,8000292c <devintr+0x100>
    800028c4:	00100513          	li	a0,1
    800028c8:	fa0482e3          	beqz	s1,8000286c <devintr+0x40>
    800028cc:	00048593          	mv	a1,s1
    800028d0:	00003517          	auipc	a0,0x3
    800028d4:	95850513          	addi	a0,a0,-1704 # 80005228 <_ZZ8printHexmE9hexDigits+0xe8>
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	670080e7          	jalr	1648(ra) # 80002f48 <__printf>
    800028e0:	00048513          	mv	a0,s1
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	258080e7          	jalr	600(ra) # 80002b3c <plic_complete>
    800028ec:	00100513          	li	a0,1
    800028f0:	f7dff06f          	j	8000286c <devintr+0x40>
    800028f4:	00004517          	auipc	a0,0x4
    800028f8:	24c50513          	addi	a0,a0,588 # 80006b40 <tickslock>
    800028fc:	00001097          	auipc	ra,0x1
    80002900:	320080e7          	jalr	800(ra) # 80003c1c <acquire>
    80002904:	00003717          	auipc	a4,0x3
    80002908:	14070713          	addi	a4,a4,320 # 80005a44 <ticks>
    8000290c:	00072783          	lw	a5,0(a4)
    80002910:	00004517          	auipc	a0,0x4
    80002914:	23050513          	addi	a0,a0,560 # 80006b40 <tickslock>
    80002918:	0017879b          	addiw	a5,a5,1
    8000291c:	00f72023          	sw	a5,0(a4)
    80002920:	00001097          	auipc	ra,0x1
    80002924:	3c8080e7          	jalr	968(ra) # 80003ce8 <release>
    80002928:	f65ff06f          	j	8000288c <devintr+0x60>
    8000292c:	00001097          	auipc	ra,0x1
    80002930:	f24080e7          	jalr	-220(ra) # 80003850 <uartintr>
    80002934:	fadff06f          	j	800028e0 <devintr+0xb4>
	...

0000000080002940 <kernelvec>:
    80002940:	f0010113          	addi	sp,sp,-256
    80002944:	00113023          	sd	ra,0(sp)
    80002948:	00213423          	sd	sp,8(sp)
    8000294c:	00313823          	sd	gp,16(sp)
    80002950:	00413c23          	sd	tp,24(sp)
    80002954:	02513023          	sd	t0,32(sp)
    80002958:	02613423          	sd	t1,40(sp)
    8000295c:	02713823          	sd	t2,48(sp)
    80002960:	02813c23          	sd	s0,56(sp)
    80002964:	04913023          	sd	s1,64(sp)
    80002968:	04a13423          	sd	a0,72(sp)
    8000296c:	04b13823          	sd	a1,80(sp)
    80002970:	04c13c23          	sd	a2,88(sp)
    80002974:	06d13023          	sd	a3,96(sp)
    80002978:	06e13423          	sd	a4,104(sp)
    8000297c:	06f13823          	sd	a5,112(sp)
    80002980:	07013c23          	sd	a6,120(sp)
    80002984:	09113023          	sd	a7,128(sp)
    80002988:	09213423          	sd	s2,136(sp)
    8000298c:	09313823          	sd	s3,144(sp)
    80002990:	09413c23          	sd	s4,152(sp)
    80002994:	0b513023          	sd	s5,160(sp)
    80002998:	0b613423          	sd	s6,168(sp)
    8000299c:	0b713823          	sd	s7,176(sp)
    800029a0:	0b813c23          	sd	s8,184(sp)
    800029a4:	0d913023          	sd	s9,192(sp)
    800029a8:	0da13423          	sd	s10,200(sp)
    800029ac:	0db13823          	sd	s11,208(sp)
    800029b0:	0dc13c23          	sd	t3,216(sp)
    800029b4:	0fd13023          	sd	t4,224(sp)
    800029b8:	0fe13423          	sd	t5,232(sp)
    800029bc:	0ff13823          	sd	t6,240(sp)
    800029c0:	ccdff0ef          	jal	ra,8000268c <kerneltrap>
    800029c4:	00013083          	ld	ra,0(sp)
    800029c8:	00813103          	ld	sp,8(sp)
    800029cc:	01013183          	ld	gp,16(sp)
    800029d0:	02013283          	ld	t0,32(sp)
    800029d4:	02813303          	ld	t1,40(sp)
    800029d8:	03013383          	ld	t2,48(sp)
    800029dc:	03813403          	ld	s0,56(sp)
    800029e0:	04013483          	ld	s1,64(sp)
    800029e4:	04813503          	ld	a0,72(sp)
    800029e8:	05013583          	ld	a1,80(sp)
    800029ec:	05813603          	ld	a2,88(sp)
    800029f0:	06013683          	ld	a3,96(sp)
    800029f4:	06813703          	ld	a4,104(sp)
    800029f8:	07013783          	ld	a5,112(sp)
    800029fc:	07813803          	ld	a6,120(sp)
    80002a00:	08013883          	ld	a7,128(sp)
    80002a04:	08813903          	ld	s2,136(sp)
    80002a08:	09013983          	ld	s3,144(sp)
    80002a0c:	09813a03          	ld	s4,152(sp)
    80002a10:	0a013a83          	ld	s5,160(sp)
    80002a14:	0a813b03          	ld	s6,168(sp)
    80002a18:	0b013b83          	ld	s7,176(sp)
    80002a1c:	0b813c03          	ld	s8,184(sp)
    80002a20:	0c013c83          	ld	s9,192(sp)
    80002a24:	0c813d03          	ld	s10,200(sp)
    80002a28:	0d013d83          	ld	s11,208(sp)
    80002a2c:	0d813e03          	ld	t3,216(sp)
    80002a30:	0e013e83          	ld	t4,224(sp)
    80002a34:	0e813f03          	ld	t5,232(sp)
    80002a38:	0f013f83          	ld	t6,240(sp)
    80002a3c:	10010113          	addi	sp,sp,256
    80002a40:	10200073          	sret
    80002a44:	00000013          	nop
    80002a48:	00000013          	nop
    80002a4c:	00000013          	nop

0000000080002a50 <timervec>:
    80002a50:	34051573          	csrrw	a0,mscratch,a0
    80002a54:	00b53023          	sd	a1,0(a0)
    80002a58:	00c53423          	sd	a2,8(a0)
    80002a5c:	00d53823          	sd	a3,16(a0)
    80002a60:	01853583          	ld	a1,24(a0)
    80002a64:	02053603          	ld	a2,32(a0)
    80002a68:	0005b683          	ld	a3,0(a1)
    80002a6c:	00c686b3          	add	a3,a3,a2
    80002a70:	00d5b023          	sd	a3,0(a1)
    80002a74:	00200593          	li	a1,2
    80002a78:	14459073          	csrw	sip,a1
    80002a7c:	01053683          	ld	a3,16(a0)
    80002a80:	00853603          	ld	a2,8(a0)
    80002a84:	00053583          	ld	a1,0(a0)
    80002a88:	34051573          	csrrw	a0,mscratch,a0
    80002a8c:	30200073          	mret

0000000080002a90 <plicinit>:
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00813423          	sd	s0,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    80002a9c:	00813403          	ld	s0,8(sp)
    80002aa0:	0c0007b7          	lui	a5,0xc000
    80002aa4:	00100713          	li	a4,1
    80002aa8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002aac:	00e7a223          	sw	a4,4(a5)
    80002ab0:	01010113          	addi	sp,sp,16
    80002ab4:	00008067          	ret

0000000080002ab8 <plicinithart>:
    80002ab8:	ff010113          	addi	sp,sp,-16
    80002abc:	00813023          	sd	s0,0(sp)
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	01010413          	addi	s0,sp,16
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	a44080e7          	jalr	-1468(ra) # 8000250c <cpuid>
    80002ad0:	0085171b          	slliw	a4,a0,0x8
    80002ad4:	0c0027b7          	lui	a5,0xc002
    80002ad8:	00e787b3          	add	a5,a5,a4
    80002adc:	40200713          	li	a4,1026
    80002ae0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002ae4:	00813083          	ld	ra,8(sp)
    80002ae8:	00013403          	ld	s0,0(sp)
    80002aec:	00d5151b          	slliw	a0,a0,0xd
    80002af0:	0c2017b7          	lui	a5,0xc201
    80002af4:	00a78533          	add	a0,a5,a0
    80002af8:	00052023          	sw	zero,0(a0)
    80002afc:	01010113          	addi	sp,sp,16
    80002b00:	00008067          	ret

0000000080002b04 <plic_claim>:
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00813023          	sd	s0,0(sp)
    80002b0c:	00113423          	sd	ra,8(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	9f8080e7          	jalr	-1544(ra) # 8000250c <cpuid>
    80002b1c:	00813083          	ld	ra,8(sp)
    80002b20:	00013403          	ld	s0,0(sp)
    80002b24:	00d5151b          	slliw	a0,a0,0xd
    80002b28:	0c2017b7          	lui	a5,0xc201
    80002b2c:	00a78533          	add	a0,a5,a0
    80002b30:	00452503          	lw	a0,4(a0)
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00008067          	ret

0000000080002b3c <plic_complete>:
    80002b3c:	fe010113          	addi	sp,sp,-32
    80002b40:	00813823          	sd	s0,16(sp)
    80002b44:	00913423          	sd	s1,8(sp)
    80002b48:	00113c23          	sd	ra,24(sp)
    80002b4c:	02010413          	addi	s0,sp,32
    80002b50:	00050493          	mv	s1,a0
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	9b8080e7          	jalr	-1608(ra) # 8000250c <cpuid>
    80002b5c:	01813083          	ld	ra,24(sp)
    80002b60:	01013403          	ld	s0,16(sp)
    80002b64:	00d5179b          	slliw	a5,a0,0xd
    80002b68:	0c201737          	lui	a4,0xc201
    80002b6c:	00f707b3          	add	a5,a4,a5
    80002b70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002b74:	00813483          	ld	s1,8(sp)
    80002b78:	02010113          	addi	sp,sp,32
    80002b7c:	00008067          	ret

0000000080002b80 <consolewrite>:
    80002b80:	fb010113          	addi	sp,sp,-80
    80002b84:	04813023          	sd	s0,64(sp)
    80002b88:	04113423          	sd	ra,72(sp)
    80002b8c:	02913c23          	sd	s1,56(sp)
    80002b90:	03213823          	sd	s2,48(sp)
    80002b94:	03313423          	sd	s3,40(sp)
    80002b98:	03413023          	sd	s4,32(sp)
    80002b9c:	01513c23          	sd	s5,24(sp)
    80002ba0:	05010413          	addi	s0,sp,80
    80002ba4:	06c05c63          	blez	a2,80002c1c <consolewrite+0x9c>
    80002ba8:	00060993          	mv	s3,a2
    80002bac:	00050a13          	mv	s4,a0
    80002bb0:	00058493          	mv	s1,a1
    80002bb4:	00000913          	li	s2,0
    80002bb8:	fff00a93          	li	s5,-1
    80002bbc:	01c0006f          	j	80002bd8 <consolewrite+0x58>
    80002bc0:	fbf44503          	lbu	a0,-65(s0)
    80002bc4:	0019091b          	addiw	s2,s2,1
    80002bc8:	00148493          	addi	s1,s1,1
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	a9c080e7          	jalr	-1380(ra) # 80003668 <uartputc>
    80002bd4:	03298063          	beq	s3,s2,80002bf4 <consolewrite+0x74>
    80002bd8:	00048613          	mv	a2,s1
    80002bdc:	00100693          	li	a3,1
    80002be0:	000a0593          	mv	a1,s4
    80002be4:	fbf40513          	addi	a0,s0,-65
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	9dc080e7          	jalr	-1572(ra) # 800025c4 <either_copyin>
    80002bf0:	fd5518e3          	bne	a0,s5,80002bc0 <consolewrite+0x40>
    80002bf4:	04813083          	ld	ra,72(sp)
    80002bf8:	04013403          	ld	s0,64(sp)
    80002bfc:	03813483          	ld	s1,56(sp)
    80002c00:	02813983          	ld	s3,40(sp)
    80002c04:	02013a03          	ld	s4,32(sp)
    80002c08:	01813a83          	ld	s5,24(sp)
    80002c0c:	00090513          	mv	a0,s2
    80002c10:	03013903          	ld	s2,48(sp)
    80002c14:	05010113          	addi	sp,sp,80
    80002c18:	00008067          	ret
    80002c1c:	00000913          	li	s2,0
    80002c20:	fd5ff06f          	j	80002bf4 <consolewrite+0x74>

0000000080002c24 <consoleread>:
    80002c24:	f9010113          	addi	sp,sp,-112
    80002c28:	06813023          	sd	s0,96(sp)
    80002c2c:	04913c23          	sd	s1,88(sp)
    80002c30:	05213823          	sd	s2,80(sp)
    80002c34:	05313423          	sd	s3,72(sp)
    80002c38:	05413023          	sd	s4,64(sp)
    80002c3c:	03513c23          	sd	s5,56(sp)
    80002c40:	03613823          	sd	s6,48(sp)
    80002c44:	03713423          	sd	s7,40(sp)
    80002c48:	03813023          	sd	s8,32(sp)
    80002c4c:	06113423          	sd	ra,104(sp)
    80002c50:	01913c23          	sd	s9,24(sp)
    80002c54:	07010413          	addi	s0,sp,112
    80002c58:	00060b93          	mv	s7,a2
    80002c5c:	00050913          	mv	s2,a0
    80002c60:	00058c13          	mv	s8,a1
    80002c64:	00060b1b          	sext.w	s6,a2
    80002c68:	00004497          	auipc	s1,0x4
    80002c6c:	f0048493          	addi	s1,s1,-256 # 80006b68 <cons>
    80002c70:	00400993          	li	s3,4
    80002c74:	fff00a13          	li	s4,-1
    80002c78:	00a00a93          	li	s5,10
    80002c7c:	05705e63          	blez	s7,80002cd8 <consoleread+0xb4>
    80002c80:	09c4a703          	lw	a4,156(s1)
    80002c84:	0984a783          	lw	a5,152(s1)
    80002c88:	0007071b          	sext.w	a4,a4
    80002c8c:	08e78463          	beq	a5,a4,80002d14 <consoleread+0xf0>
    80002c90:	07f7f713          	andi	a4,a5,127
    80002c94:	00e48733          	add	a4,s1,a4
    80002c98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002c9c:	0017869b          	addiw	a3,a5,1
    80002ca0:	08d4ac23          	sw	a3,152(s1)
    80002ca4:	00070c9b          	sext.w	s9,a4
    80002ca8:	0b370663          	beq	a4,s3,80002d54 <consoleread+0x130>
    80002cac:	00100693          	li	a3,1
    80002cb0:	f9f40613          	addi	a2,s0,-97
    80002cb4:	000c0593          	mv	a1,s8
    80002cb8:	00090513          	mv	a0,s2
    80002cbc:	f8e40fa3          	sb	a4,-97(s0)
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	8b8080e7          	jalr	-1864(ra) # 80002578 <either_copyout>
    80002cc8:	01450863          	beq	a0,s4,80002cd8 <consoleread+0xb4>
    80002ccc:	001c0c13          	addi	s8,s8,1
    80002cd0:	fffb8b9b          	addiw	s7,s7,-1
    80002cd4:	fb5c94e3          	bne	s9,s5,80002c7c <consoleread+0x58>
    80002cd8:	000b851b          	sext.w	a0,s7
    80002cdc:	06813083          	ld	ra,104(sp)
    80002ce0:	06013403          	ld	s0,96(sp)
    80002ce4:	05813483          	ld	s1,88(sp)
    80002ce8:	05013903          	ld	s2,80(sp)
    80002cec:	04813983          	ld	s3,72(sp)
    80002cf0:	04013a03          	ld	s4,64(sp)
    80002cf4:	03813a83          	ld	s5,56(sp)
    80002cf8:	02813b83          	ld	s7,40(sp)
    80002cfc:	02013c03          	ld	s8,32(sp)
    80002d00:	01813c83          	ld	s9,24(sp)
    80002d04:	40ab053b          	subw	a0,s6,a0
    80002d08:	03013b03          	ld	s6,48(sp)
    80002d0c:	07010113          	addi	sp,sp,112
    80002d10:	00008067          	ret
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	1d8080e7          	jalr	472(ra) # 80003eec <push_on>
    80002d1c:	0984a703          	lw	a4,152(s1)
    80002d20:	09c4a783          	lw	a5,156(s1)
    80002d24:	0007879b          	sext.w	a5,a5
    80002d28:	fef70ce3          	beq	a4,a5,80002d20 <consoleread+0xfc>
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	234080e7          	jalr	564(ra) # 80003f60 <pop_on>
    80002d34:	0984a783          	lw	a5,152(s1)
    80002d38:	07f7f713          	andi	a4,a5,127
    80002d3c:	00e48733          	add	a4,s1,a4
    80002d40:	01874703          	lbu	a4,24(a4)
    80002d44:	0017869b          	addiw	a3,a5,1
    80002d48:	08d4ac23          	sw	a3,152(s1)
    80002d4c:	00070c9b          	sext.w	s9,a4
    80002d50:	f5371ee3          	bne	a4,s3,80002cac <consoleread+0x88>
    80002d54:	000b851b          	sext.w	a0,s7
    80002d58:	f96bf2e3          	bgeu	s7,s6,80002cdc <consoleread+0xb8>
    80002d5c:	08f4ac23          	sw	a5,152(s1)
    80002d60:	f7dff06f          	j	80002cdc <consoleread+0xb8>

0000000080002d64 <consputc>:
    80002d64:	10000793          	li	a5,256
    80002d68:	00f50663          	beq	a0,a5,80002d74 <consputc+0x10>
    80002d6c:	00001317          	auipc	t1,0x1
    80002d70:	9f430067          	jr	-1548(t1) # 80003760 <uartputc_sync>
    80002d74:	ff010113          	addi	sp,sp,-16
    80002d78:	00113423          	sd	ra,8(sp)
    80002d7c:	00813023          	sd	s0,0(sp)
    80002d80:	01010413          	addi	s0,sp,16
    80002d84:	00800513          	li	a0,8
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	9d8080e7          	jalr	-1576(ra) # 80003760 <uartputc_sync>
    80002d90:	02000513          	li	a0,32
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	9cc080e7          	jalr	-1588(ra) # 80003760 <uartputc_sync>
    80002d9c:	00013403          	ld	s0,0(sp)
    80002da0:	00813083          	ld	ra,8(sp)
    80002da4:	00800513          	li	a0,8
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00001317          	auipc	t1,0x1
    80002db0:	9b430067          	jr	-1612(t1) # 80003760 <uartputc_sync>

0000000080002db4 <consoleintr>:
    80002db4:	fe010113          	addi	sp,sp,-32
    80002db8:	00813823          	sd	s0,16(sp)
    80002dbc:	00913423          	sd	s1,8(sp)
    80002dc0:	01213023          	sd	s2,0(sp)
    80002dc4:	00113c23          	sd	ra,24(sp)
    80002dc8:	02010413          	addi	s0,sp,32
    80002dcc:	00004917          	auipc	s2,0x4
    80002dd0:	d9c90913          	addi	s2,s2,-612 # 80006b68 <cons>
    80002dd4:	00050493          	mv	s1,a0
    80002dd8:	00090513          	mv	a0,s2
    80002ddc:	00001097          	auipc	ra,0x1
    80002de0:	e40080e7          	jalr	-448(ra) # 80003c1c <acquire>
    80002de4:	02048c63          	beqz	s1,80002e1c <consoleintr+0x68>
    80002de8:	0a092783          	lw	a5,160(s2)
    80002dec:	09892703          	lw	a4,152(s2)
    80002df0:	07f00693          	li	a3,127
    80002df4:	40e7873b          	subw	a4,a5,a4
    80002df8:	02e6e263          	bltu	a3,a4,80002e1c <consoleintr+0x68>
    80002dfc:	00d00713          	li	a4,13
    80002e00:	04e48063          	beq	s1,a4,80002e40 <consoleintr+0x8c>
    80002e04:	07f7f713          	andi	a4,a5,127
    80002e08:	00e90733          	add	a4,s2,a4
    80002e0c:	0017879b          	addiw	a5,a5,1
    80002e10:	0af92023          	sw	a5,160(s2)
    80002e14:	00970c23          	sb	s1,24(a4)
    80002e18:	08f92e23          	sw	a5,156(s2)
    80002e1c:	01013403          	ld	s0,16(sp)
    80002e20:	01813083          	ld	ra,24(sp)
    80002e24:	00813483          	ld	s1,8(sp)
    80002e28:	00013903          	ld	s2,0(sp)
    80002e2c:	00004517          	auipc	a0,0x4
    80002e30:	d3c50513          	addi	a0,a0,-708 # 80006b68 <cons>
    80002e34:	02010113          	addi	sp,sp,32
    80002e38:	00001317          	auipc	t1,0x1
    80002e3c:	eb030067          	jr	-336(t1) # 80003ce8 <release>
    80002e40:	00a00493          	li	s1,10
    80002e44:	fc1ff06f          	j	80002e04 <consoleintr+0x50>

0000000080002e48 <consoleinit>:
    80002e48:	fe010113          	addi	sp,sp,-32
    80002e4c:	00113c23          	sd	ra,24(sp)
    80002e50:	00813823          	sd	s0,16(sp)
    80002e54:	00913423          	sd	s1,8(sp)
    80002e58:	02010413          	addi	s0,sp,32
    80002e5c:	00004497          	auipc	s1,0x4
    80002e60:	d0c48493          	addi	s1,s1,-756 # 80006b68 <cons>
    80002e64:	00048513          	mv	a0,s1
    80002e68:	00002597          	auipc	a1,0x2
    80002e6c:	41858593          	addi	a1,a1,1048 # 80005280 <_ZZ8printHexmE9hexDigits+0x140>
    80002e70:	00001097          	auipc	ra,0x1
    80002e74:	d88080e7          	jalr	-632(ra) # 80003bf8 <initlock>
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	7ac080e7          	jalr	1964(ra) # 80003624 <uartinit>
    80002e80:	01813083          	ld	ra,24(sp)
    80002e84:	01013403          	ld	s0,16(sp)
    80002e88:	00000797          	auipc	a5,0x0
    80002e8c:	d9c78793          	addi	a5,a5,-612 # 80002c24 <consoleread>
    80002e90:	0af4bc23          	sd	a5,184(s1)
    80002e94:	00000797          	auipc	a5,0x0
    80002e98:	cec78793          	addi	a5,a5,-788 # 80002b80 <consolewrite>
    80002e9c:	0cf4b023          	sd	a5,192(s1)
    80002ea0:	00813483          	ld	s1,8(sp)
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00008067          	ret

0000000080002eac <console_read>:
    80002eac:	ff010113          	addi	sp,sp,-16
    80002eb0:	00813423          	sd	s0,8(sp)
    80002eb4:	01010413          	addi	s0,sp,16
    80002eb8:	00813403          	ld	s0,8(sp)
    80002ebc:	00004317          	auipc	t1,0x4
    80002ec0:	d6433303          	ld	t1,-668(t1) # 80006c20 <devsw+0x10>
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00030067          	jr	t1

0000000080002ecc <console_write>:
    80002ecc:	ff010113          	addi	sp,sp,-16
    80002ed0:	00813423          	sd	s0,8(sp)
    80002ed4:	01010413          	addi	s0,sp,16
    80002ed8:	00813403          	ld	s0,8(sp)
    80002edc:	00004317          	auipc	t1,0x4
    80002ee0:	d4c33303          	ld	t1,-692(t1) # 80006c28 <devsw+0x18>
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00030067          	jr	t1

0000000080002eec <panic>:
    80002eec:	fe010113          	addi	sp,sp,-32
    80002ef0:	00113c23          	sd	ra,24(sp)
    80002ef4:	00813823          	sd	s0,16(sp)
    80002ef8:	00913423          	sd	s1,8(sp)
    80002efc:	02010413          	addi	s0,sp,32
    80002f00:	00050493          	mv	s1,a0
    80002f04:	00002517          	auipc	a0,0x2
    80002f08:	38450513          	addi	a0,a0,900 # 80005288 <_ZZ8printHexmE9hexDigits+0x148>
    80002f0c:	00004797          	auipc	a5,0x4
    80002f10:	da07ae23          	sw	zero,-580(a5) # 80006cc8 <pr+0x18>
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	034080e7          	jalr	52(ra) # 80002f48 <__printf>
    80002f1c:	00048513          	mv	a0,s1
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	028080e7          	jalr	40(ra) # 80002f48 <__printf>
    80002f28:	00002517          	auipc	a0,0x2
    80002f2c:	1e050513          	addi	a0,a0,480 # 80005108 <kvmincrease+0xa58>
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	018080e7          	jalr	24(ra) # 80002f48 <__printf>
    80002f38:	00100793          	li	a5,1
    80002f3c:	00003717          	auipc	a4,0x3
    80002f40:	b0f72623          	sw	a5,-1268(a4) # 80005a48 <panicked>
    80002f44:	0000006f          	j	80002f44 <panic+0x58>

0000000080002f48 <__printf>:
    80002f48:	f3010113          	addi	sp,sp,-208
    80002f4c:	08813023          	sd	s0,128(sp)
    80002f50:	07313423          	sd	s3,104(sp)
    80002f54:	09010413          	addi	s0,sp,144
    80002f58:	05813023          	sd	s8,64(sp)
    80002f5c:	08113423          	sd	ra,136(sp)
    80002f60:	06913c23          	sd	s1,120(sp)
    80002f64:	07213823          	sd	s2,112(sp)
    80002f68:	07413023          	sd	s4,96(sp)
    80002f6c:	05513c23          	sd	s5,88(sp)
    80002f70:	05613823          	sd	s6,80(sp)
    80002f74:	05713423          	sd	s7,72(sp)
    80002f78:	03913c23          	sd	s9,56(sp)
    80002f7c:	03a13823          	sd	s10,48(sp)
    80002f80:	03b13423          	sd	s11,40(sp)
    80002f84:	00004317          	auipc	t1,0x4
    80002f88:	d2c30313          	addi	t1,t1,-724 # 80006cb0 <pr>
    80002f8c:	01832c03          	lw	s8,24(t1)
    80002f90:	00b43423          	sd	a1,8(s0)
    80002f94:	00c43823          	sd	a2,16(s0)
    80002f98:	00d43c23          	sd	a3,24(s0)
    80002f9c:	02e43023          	sd	a4,32(s0)
    80002fa0:	02f43423          	sd	a5,40(s0)
    80002fa4:	03043823          	sd	a6,48(s0)
    80002fa8:	03143c23          	sd	a7,56(s0)
    80002fac:	00050993          	mv	s3,a0
    80002fb0:	4a0c1663          	bnez	s8,8000345c <__printf+0x514>
    80002fb4:	60098c63          	beqz	s3,800035cc <__printf+0x684>
    80002fb8:	0009c503          	lbu	a0,0(s3)
    80002fbc:	00840793          	addi	a5,s0,8
    80002fc0:	f6f43c23          	sd	a5,-136(s0)
    80002fc4:	00000493          	li	s1,0
    80002fc8:	22050063          	beqz	a0,800031e8 <__printf+0x2a0>
    80002fcc:	00002a37          	lui	s4,0x2
    80002fd0:	00018ab7          	lui	s5,0x18
    80002fd4:	000f4b37          	lui	s6,0xf4
    80002fd8:	00989bb7          	lui	s7,0x989
    80002fdc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002fe0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002fe4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002fe8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002fec:	00148c9b          	addiw	s9,s1,1
    80002ff0:	02500793          	li	a5,37
    80002ff4:	01998933          	add	s2,s3,s9
    80002ff8:	38f51263          	bne	a0,a5,8000337c <__printf+0x434>
    80002ffc:	00094783          	lbu	a5,0(s2)
    80003000:	00078c9b          	sext.w	s9,a5
    80003004:	1e078263          	beqz	a5,800031e8 <__printf+0x2a0>
    80003008:	0024849b          	addiw	s1,s1,2
    8000300c:	07000713          	li	a4,112
    80003010:	00998933          	add	s2,s3,s1
    80003014:	38e78a63          	beq	a5,a4,800033a8 <__printf+0x460>
    80003018:	20f76863          	bltu	a4,a5,80003228 <__printf+0x2e0>
    8000301c:	42a78863          	beq	a5,a0,8000344c <__printf+0x504>
    80003020:	06400713          	li	a4,100
    80003024:	40e79663          	bne	a5,a4,80003430 <__printf+0x4e8>
    80003028:	f7843783          	ld	a5,-136(s0)
    8000302c:	0007a603          	lw	a2,0(a5)
    80003030:	00878793          	addi	a5,a5,8
    80003034:	f6f43c23          	sd	a5,-136(s0)
    80003038:	42064a63          	bltz	a2,8000346c <__printf+0x524>
    8000303c:	00a00713          	li	a4,10
    80003040:	02e677bb          	remuw	a5,a2,a4
    80003044:	00002d97          	auipc	s11,0x2
    80003048:	26cd8d93          	addi	s11,s11,620 # 800052b0 <digits>
    8000304c:	00900593          	li	a1,9
    80003050:	0006051b          	sext.w	a0,a2
    80003054:	00000c93          	li	s9,0
    80003058:	02079793          	slli	a5,a5,0x20
    8000305c:	0207d793          	srli	a5,a5,0x20
    80003060:	00fd87b3          	add	a5,s11,a5
    80003064:	0007c783          	lbu	a5,0(a5)
    80003068:	02e656bb          	divuw	a3,a2,a4
    8000306c:	f8f40023          	sb	a5,-128(s0)
    80003070:	14c5d863          	bge	a1,a2,800031c0 <__printf+0x278>
    80003074:	06300593          	li	a1,99
    80003078:	00100c93          	li	s9,1
    8000307c:	02e6f7bb          	remuw	a5,a3,a4
    80003080:	02079793          	slli	a5,a5,0x20
    80003084:	0207d793          	srli	a5,a5,0x20
    80003088:	00fd87b3          	add	a5,s11,a5
    8000308c:	0007c783          	lbu	a5,0(a5)
    80003090:	02e6d73b          	divuw	a4,a3,a4
    80003094:	f8f400a3          	sb	a5,-127(s0)
    80003098:	12a5f463          	bgeu	a1,a0,800031c0 <__printf+0x278>
    8000309c:	00a00693          	li	a3,10
    800030a0:	00900593          	li	a1,9
    800030a4:	02d777bb          	remuw	a5,a4,a3
    800030a8:	02079793          	slli	a5,a5,0x20
    800030ac:	0207d793          	srli	a5,a5,0x20
    800030b0:	00fd87b3          	add	a5,s11,a5
    800030b4:	0007c503          	lbu	a0,0(a5)
    800030b8:	02d757bb          	divuw	a5,a4,a3
    800030bc:	f8a40123          	sb	a0,-126(s0)
    800030c0:	48e5f263          	bgeu	a1,a4,80003544 <__printf+0x5fc>
    800030c4:	06300513          	li	a0,99
    800030c8:	02d7f5bb          	remuw	a1,a5,a3
    800030cc:	02059593          	slli	a1,a1,0x20
    800030d0:	0205d593          	srli	a1,a1,0x20
    800030d4:	00bd85b3          	add	a1,s11,a1
    800030d8:	0005c583          	lbu	a1,0(a1)
    800030dc:	02d7d7bb          	divuw	a5,a5,a3
    800030e0:	f8b401a3          	sb	a1,-125(s0)
    800030e4:	48e57263          	bgeu	a0,a4,80003568 <__printf+0x620>
    800030e8:	3e700513          	li	a0,999
    800030ec:	02d7f5bb          	remuw	a1,a5,a3
    800030f0:	02059593          	slli	a1,a1,0x20
    800030f4:	0205d593          	srli	a1,a1,0x20
    800030f8:	00bd85b3          	add	a1,s11,a1
    800030fc:	0005c583          	lbu	a1,0(a1)
    80003100:	02d7d7bb          	divuw	a5,a5,a3
    80003104:	f8b40223          	sb	a1,-124(s0)
    80003108:	46e57663          	bgeu	a0,a4,80003574 <__printf+0x62c>
    8000310c:	02d7f5bb          	remuw	a1,a5,a3
    80003110:	02059593          	slli	a1,a1,0x20
    80003114:	0205d593          	srli	a1,a1,0x20
    80003118:	00bd85b3          	add	a1,s11,a1
    8000311c:	0005c583          	lbu	a1,0(a1)
    80003120:	02d7d7bb          	divuw	a5,a5,a3
    80003124:	f8b402a3          	sb	a1,-123(s0)
    80003128:	46ea7863          	bgeu	s4,a4,80003598 <__printf+0x650>
    8000312c:	02d7f5bb          	remuw	a1,a5,a3
    80003130:	02059593          	slli	a1,a1,0x20
    80003134:	0205d593          	srli	a1,a1,0x20
    80003138:	00bd85b3          	add	a1,s11,a1
    8000313c:	0005c583          	lbu	a1,0(a1)
    80003140:	02d7d7bb          	divuw	a5,a5,a3
    80003144:	f8b40323          	sb	a1,-122(s0)
    80003148:	3eeaf863          	bgeu	s5,a4,80003538 <__printf+0x5f0>
    8000314c:	02d7f5bb          	remuw	a1,a5,a3
    80003150:	02059593          	slli	a1,a1,0x20
    80003154:	0205d593          	srli	a1,a1,0x20
    80003158:	00bd85b3          	add	a1,s11,a1
    8000315c:	0005c583          	lbu	a1,0(a1)
    80003160:	02d7d7bb          	divuw	a5,a5,a3
    80003164:	f8b403a3          	sb	a1,-121(s0)
    80003168:	42eb7e63          	bgeu	s6,a4,800035a4 <__printf+0x65c>
    8000316c:	02d7f5bb          	remuw	a1,a5,a3
    80003170:	02059593          	slli	a1,a1,0x20
    80003174:	0205d593          	srli	a1,a1,0x20
    80003178:	00bd85b3          	add	a1,s11,a1
    8000317c:	0005c583          	lbu	a1,0(a1)
    80003180:	02d7d7bb          	divuw	a5,a5,a3
    80003184:	f8b40423          	sb	a1,-120(s0)
    80003188:	42ebfc63          	bgeu	s7,a4,800035c0 <__printf+0x678>
    8000318c:	02079793          	slli	a5,a5,0x20
    80003190:	0207d793          	srli	a5,a5,0x20
    80003194:	00fd8db3          	add	s11,s11,a5
    80003198:	000dc703          	lbu	a4,0(s11)
    8000319c:	00a00793          	li	a5,10
    800031a0:	00900c93          	li	s9,9
    800031a4:	f8e404a3          	sb	a4,-119(s0)
    800031a8:	00065c63          	bgez	a2,800031c0 <__printf+0x278>
    800031ac:	f9040713          	addi	a4,s0,-112
    800031b0:	00f70733          	add	a4,a4,a5
    800031b4:	02d00693          	li	a3,45
    800031b8:	fed70823          	sb	a3,-16(a4)
    800031bc:	00078c93          	mv	s9,a5
    800031c0:	f8040793          	addi	a5,s0,-128
    800031c4:	01978cb3          	add	s9,a5,s9
    800031c8:	f7f40d13          	addi	s10,s0,-129
    800031cc:	000cc503          	lbu	a0,0(s9)
    800031d0:	fffc8c93          	addi	s9,s9,-1
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	b90080e7          	jalr	-1136(ra) # 80002d64 <consputc>
    800031dc:	ffac98e3          	bne	s9,s10,800031cc <__printf+0x284>
    800031e0:	00094503          	lbu	a0,0(s2)
    800031e4:	e00514e3          	bnez	a0,80002fec <__printf+0xa4>
    800031e8:	1a0c1663          	bnez	s8,80003394 <__printf+0x44c>
    800031ec:	08813083          	ld	ra,136(sp)
    800031f0:	08013403          	ld	s0,128(sp)
    800031f4:	07813483          	ld	s1,120(sp)
    800031f8:	07013903          	ld	s2,112(sp)
    800031fc:	06813983          	ld	s3,104(sp)
    80003200:	06013a03          	ld	s4,96(sp)
    80003204:	05813a83          	ld	s5,88(sp)
    80003208:	05013b03          	ld	s6,80(sp)
    8000320c:	04813b83          	ld	s7,72(sp)
    80003210:	04013c03          	ld	s8,64(sp)
    80003214:	03813c83          	ld	s9,56(sp)
    80003218:	03013d03          	ld	s10,48(sp)
    8000321c:	02813d83          	ld	s11,40(sp)
    80003220:	0d010113          	addi	sp,sp,208
    80003224:	00008067          	ret
    80003228:	07300713          	li	a4,115
    8000322c:	1ce78a63          	beq	a5,a4,80003400 <__printf+0x4b8>
    80003230:	07800713          	li	a4,120
    80003234:	1ee79e63          	bne	a5,a4,80003430 <__printf+0x4e8>
    80003238:	f7843783          	ld	a5,-136(s0)
    8000323c:	0007a703          	lw	a4,0(a5)
    80003240:	00878793          	addi	a5,a5,8
    80003244:	f6f43c23          	sd	a5,-136(s0)
    80003248:	28074263          	bltz	a4,800034cc <__printf+0x584>
    8000324c:	00002d97          	auipc	s11,0x2
    80003250:	064d8d93          	addi	s11,s11,100 # 800052b0 <digits>
    80003254:	00f77793          	andi	a5,a4,15
    80003258:	00fd87b3          	add	a5,s11,a5
    8000325c:	0007c683          	lbu	a3,0(a5)
    80003260:	00f00613          	li	a2,15
    80003264:	0007079b          	sext.w	a5,a4
    80003268:	f8d40023          	sb	a3,-128(s0)
    8000326c:	0047559b          	srliw	a1,a4,0x4
    80003270:	0047569b          	srliw	a3,a4,0x4
    80003274:	00000c93          	li	s9,0
    80003278:	0ee65063          	bge	a2,a4,80003358 <__printf+0x410>
    8000327c:	00f6f693          	andi	a3,a3,15
    80003280:	00dd86b3          	add	a3,s11,a3
    80003284:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003288:	0087d79b          	srliw	a5,a5,0x8
    8000328c:	00100c93          	li	s9,1
    80003290:	f8d400a3          	sb	a3,-127(s0)
    80003294:	0cb67263          	bgeu	a2,a1,80003358 <__printf+0x410>
    80003298:	00f7f693          	andi	a3,a5,15
    8000329c:	00dd86b3          	add	a3,s11,a3
    800032a0:	0006c583          	lbu	a1,0(a3)
    800032a4:	00f00613          	li	a2,15
    800032a8:	0047d69b          	srliw	a3,a5,0x4
    800032ac:	f8b40123          	sb	a1,-126(s0)
    800032b0:	0047d593          	srli	a1,a5,0x4
    800032b4:	28f67e63          	bgeu	a2,a5,80003550 <__printf+0x608>
    800032b8:	00f6f693          	andi	a3,a3,15
    800032bc:	00dd86b3          	add	a3,s11,a3
    800032c0:	0006c503          	lbu	a0,0(a3)
    800032c4:	0087d813          	srli	a6,a5,0x8
    800032c8:	0087d69b          	srliw	a3,a5,0x8
    800032cc:	f8a401a3          	sb	a0,-125(s0)
    800032d0:	28b67663          	bgeu	a2,a1,8000355c <__printf+0x614>
    800032d4:	00f6f693          	andi	a3,a3,15
    800032d8:	00dd86b3          	add	a3,s11,a3
    800032dc:	0006c583          	lbu	a1,0(a3)
    800032e0:	00c7d513          	srli	a0,a5,0xc
    800032e4:	00c7d69b          	srliw	a3,a5,0xc
    800032e8:	f8b40223          	sb	a1,-124(s0)
    800032ec:	29067a63          	bgeu	a2,a6,80003580 <__printf+0x638>
    800032f0:	00f6f693          	andi	a3,a3,15
    800032f4:	00dd86b3          	add	a3,s11,a3
    800032f8:	0006c583          	lbu	a1,0(a3)
    800032fc:	0107d813          	srli	a6,a5,0x10
    80003300:	0107d69b          	srliw	a3,a5,0x10
    80003304:	f8b402a3          	sb	a1,-123(s0)
    80003308:	28a67263          	bgeu	a2,a0,8000358c <__printf+0x644>
    8000330c:	00f6f693          	andi	a3,a3,15
    80003310:	00dd86b3          	add	a3,s11,a3
    80003314:	0006c683          	lbu	a3,0(a3)
    80003318:	0147d79b          	srliw	a5,a5,0x14
    8000331c:	f8d40323          	sb	a3,-122(s0)
    80003320:	21067663          	bgeu	a2,a6,8000352c <__printf+0x5e4>
    80003324:	02079793          	slli	a5,a5,0x20
    80003328:	0207d793          	srli	a5,a5,0x20
    8000332c:	00fd8db3          	add	s11,s11,a5
    80003330:	000dc683          	lbu	a3,0(s11)
    80003334:	00800793          	li	a5,8
    80003338:	00700c93          	li	s9,7
    8000333c:	f8d403a3          	sb	a3,-121(s0)
    80003340:	00075c63          	bgez	a4,80003358 <__printf+0x410>
    80003344:	f9040713          	addi	a4,s0,-112
    80003348:	00f70733          	add	a4,a4,a5
    8000334c:	02d00693          	li	a3,45
    80003350:	fed70823          	sb	a3,-16(a4)
    80003354:	00078c93          	mv	s9,a5
    80003358:	f8040793          	addi	a5,s0,-128
    8000335c:	01978cb3          	add	s9,a5,s9
    80003360:	f7f40d13          	addi	s10,s0,-129
    80003364:	000cc503          	lbu	a0,0(s9)
    80003368:	fffc8c93          	addi	s9,s9,-1
    8000336c:	00000097          	auipc	ra,0x0
    80003370:	9f8080e7          	jalr	-1544(ra) # 80002d64 <consputc>
    80003374:	ff9d18e3          	bne	s10,s9,80003364 <__printf+0x41c>
    80003378:	0100006f          	j	80003388 <__printf+0x440>
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	9e8080e7          	jalr	-1560(ra) # 80002d64 <consputc>
    80003384:	000c8493          	mv	s1,s9
    80003388:	00094503          	lbu	a0,0(s2)
    8000338c:	c60510e3          	bnez	a0,80002fec <__printf+0xa4>
    80003390:	e40c0ee3          	beqz	s8,800031ec <__printf+0x2a4>
    80003394:	00004517          	auipc	a0,0x4
    80003398:	91c50513          	addi	a0,a0,-1764 # 80006cb0 <pr>
    8000339c:	00001097          	auipc	ra,0x1
    800033a0:	94c080e7          	jalr	-1716(ra) # 80003ce8 <release>
    800033a4:	e49ff06f          	j	800031ec <__printf+0x2a4>
    800033a8:	f7843783          	ld	a5,-136(s0)
    800033ac:	03000513          	li	a0,48
    800033b0:	01000d13          	li	s10,16
    800033b4:	00878713          	addi	a4,a5,8
    800033b8:	0007bc83          	ld	s9,0(a5)
    800033bc:	f6e43c23          	sd	a4,-136(s0)
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	9a4080e7          	jalr	-1628(ra) # 80002d64 <consputc>
    800033c8:	07800513          	li	a0,120
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	998080e7          	jalr	-1640(ra) # 80002d64 <consputc>
    800033d4:	00002d97          	auipc	s11,0x2
    800033d8:	edcd8d93          	addi	s11,s11,-292 # 800052b0 <digits>
    800033dc:	03ccd793          	srli	a5,s9,0x3c
    800033e0:	00fd87b3          	add	a5,s11,a5
    800033e4:	0007c503          	lbu	a0,0(a5)
    800033e8:	fffd0d1b          	addiw	s10,s10,-1
    800033ec:	004c9c93          	slli	s9,s9,0x4
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	974080e7          	jalr	-1676(ra) # 80002d64 <consputc>
    800033f8:	fe0d12e3          	bnez	s10,800033dc <__printf+0x494>
    800033fc:	f8dff06f          	j	80003388 <__printf+0x440>
    80003400:	f7843783          	ld	a5,-136(s0)
    80003404:	0007bc83          	ld	s9,0(a5)
    80003408:	00878793          	addi	a5,a5,8
    8000340c:	f6f43c23          	sd	a5,-136(s0)
    80003410:	000c9a63          	bnez	s9,80003424 <__printf+0x4dc>
    80003414:	1080006f          	j	8000351c <__printf+0x5d4>
    80003418:	001c8c93          	addi	s9,s9,1
    8000341c:	00000097          	auipc	ra,0x0
    80003420:	948080e7          	jalr	-1720(ra) # 80002d64 <consputc>
    80003424:	000cc503          	lbu	a0,0(s9)
    80003428:	fe0518e3          	bnez	a0,80003418 <__printf+0x4d0>
    8000342c:	f5dff06f          	j	80003388 <__printf+0x440>
    80003430:	02500513          	li	a0,37
    80003434:	00000097          	auipc	ra,0x0
    80003438:	930080e7          	jalr	-1744(ra) # 80002d64 <consputc>
    8000343c:	000c8513          	mv	a0,s9
    80003440:	00000097          	auipc	ra,0x0
    80003444:	924080e7          	jalr	-1756(ra) # 80002d64 <consputc>
    80003448:	f41ff06f          	j	80003388 <__printf+0x440>
    8000344c:	02500513          	li	a0,37
    80003450:	00000097          	auipc	ra,0x0
    80003454:	914080e7          	jalr	-1772(ra) # 80002d64 <consputc>
    80003458:	f31ff06f          	j	80003388 <__printf+0x440>
    8000345c:	00030513          	mv	a0,t1
    80003460:	00000097          	auipc	ra,0x0
    80003464:	7bc080e7          	jalr	1980(ra) # 80003c1c <acquire>
    80003468:	b4dff06f          	j	80002fb4 <__printf+0x6c>
    8000346c:	40c0053b          	negw	a0,a2
    80003470:	00a00713          	li	a4,10
    80003474:	02e576bb          	remuw	a3,a0,a4
    80003478:	00002d97          	auipc	s11,0x2
    8000347c:	e38d8d93          	addi	s11,s11,-456 # 800052b0 <digits>
    80003480:	ff700593          	li	a1,-9
    80003484:	02069693          	slli	a3,a3,0x20
    80003488:	0206d693          	srli	a3,a3,0x20
    8000348c:	00dd86b3          	add	a3,s11,a3
    80003490:	0006c683          	lbu	a3,0(a3)
    80003494:	02e557bb          	divuw	a5,a0,a4
    80003498:	f8d40023          	sb	a3,-128(s0)
    8000349c:	10b65e63          	bge	a2,a1,800035b8 <__printf+0x670>
    800034a0:	06300593          	li	a1,99
    800034a4:	02e7f6bb          	remuw	a3,a5,a4
    800034a8:	02069693          	slli	a3,a3,0x20
    800034ac:	0206d693          	srli	a3,a3,0x20
    800034b0:	00dd86b3          	add	a3,s11,a3
    800034b4:	0006c683          	lbu	a3,0(a3)
    800034b8:	02e7d73b          	divuw	a4,a5,a4
    800034bc:	00200793          	li	a5,2
    800034c0:	f8d400a3          	sb	a3,-127(s0)
    800034c4:	bca5ece3          	bltu	a1,a0,8000309c <__printf+0x154>
    800034c8:	ce5ff06f          	j	800031ac <__printf+0x264>
    800034cc:	40e007bb          	negw	a5,a4
    800034d0:	00002d97          	auipc	s11,0x2
    800034d4:	de0d8d93          	addi	s11,s11,-544 # 800052b0 <digits>
    800034d8:	00f7f693          	andi	a3,a5,15
    800034dc:	00dd86b3          	add	a3,s11,a3
    800034e0:	0006c583          	lbu	a1,0(a3)
    800034e4:	ff100613          	li	a2,-15
    800034e8:	0047d69b          	srliw	a3,a5,0x4
    800034ec:	f8b40023          	sb	a1,-128(s0)
    800034f0:	0047d59b          	srliw	a1,a5,0x4
    800034f4:	0ac75e63          	bge	a4,a2,800035b0 <__printf+0x668>
    800034f8:	00f6f693          	andi	a3,a3,15
    800034fc:	00dd86b3          	add	a3,s11,a3
    80003500:	0006c603          	lbu	a2,0(a3)
    80003504:	00f00693          	li	a3,15
    80003508:	0087d79b          	srliw	a5,a5,0x8
    8000350c:	f8c400a3          	sb	a2,-127(s0)
    80003510:	d8b6e4e3          	bltu	a3,a1,80003298 <__printf+0x350>
    80003514:	00200793          	li	a5,2
    80003518:	e2dff06f          	j	80003344 <__printf+0x3fc>
    8000351c:	00002c97          	auipc	s9,0x2
    80003520:	d74c8c93          	addi	s9,s9,-652 # 80005290 <_ZZ8printHexmE9hexDigits+0x150>
    80003524:	02800513          	li	a0,40
    80003528:	ef1ff06f          	j	80003418 <__printf+0x4d0>
    8000352c:	00700793          	li	a5,7
    80003530:	00600c93          	li	s9,6
    80003534:	e0dff06f          	j	80003340 <__printf+0x3f8>
    80003538:	00700793          	li	a5,7
    8000353c:	00600c93          	li	s9,6
    80003540:	c69ff06f          	j	800031a8 <__printf+0x260>
    80003544:	00300793          	li	a5,3
    80003548:	00200c93          	li	s9,2
    8000354c:	c5dff06f          	j	800031a8 <__printf+0x260>
    80003550:	00300793          	li	a5,3
    80003554:	00200c93          	li	s9,2
    80003558:	de9ff06f          	j	80003340 <__printf+0x3f8>
    8000355c:	00400793          	li	a5,4
    80003560:	00300c93          	li	s9,3
    80003564:	dddff06f          	j	80003340 <__printf+0x3f8>
    80003568:	00400793          	li	a5,4
    8000356c:	00300c93          	li	s9,3
    80003570:	c39ff06f          	j	800031a8 <__printf+0x260>
    80003574:	00500793          	li	a5,5
    80003578:	00400c93          	li	s9,4
    8000357c:	c2dff06f          	j	800031a8 <__printf+0x260>
    80003580:	00500793          	li	a5,5
    80003584:	00400c93          	li	s9,4
    80003588:	db9ff06f          	j	80003340 <__printf+0x3f8>
    8000358c:	00600793          	li	a5,6
    80003590:	00500c93          	li	s9,5
    80003594:	dadff06f          	j	80003340 <__printf+0x3f8>
    80003598:	00600793          	li	a5,6
    8000359c:	00500c93          	li	s9,5
    800035a0:	c09ff06f          	j	800031a8 <__printf+0x260>
    800035a4:	00800793          	li	a5,8
    800035a8:	00700c93          	li	s9,7
    800035ac:	bfdff06f          	j	800031a8 <__printf+0x260>
    800035b0:	00100793          	li	a5,1
    800035b4:	d91ff06f          	j	80003344 <__printf+0x3fc>
    800035b8:	00100793          	li	a5,1
    800035bc:	bf1ff06f          	j	800031ac <__printf+0x264>
    800035c0:	00900793          	li	a5,9
    800035c4:	00800c93          	li	s9,8
    800035c8:	be1ff06f          	j	800031a8 <__printf+0x260>
    800035cc:	00002517          	auipc	a0,0x2
    800035d0:	ccc50513          	addi	a0,a0,-820 # 80005298 <_ZZ8printHexmE9hexDigits+0x158>
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	918080e7          	jalr	-1768(ra) # 80002eec <panic>

00000000800035dc <printfinit>:
    800035dc:	fe010113          	addi	sp,sp,-32
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00913423          	sd	s1,8(sp)
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	02010413          	addi	s0,sp,32
    800035f0:	00003497          	auipc	s1,0x3
    800035f4:	6c048493          	addi	s1,s1,1728 # 80006cb0 <pr>
    800035f8:	00048513          	mv	a0,s1
    800035fc:	00002597          	auipc	a1,0x2
    80003600:	cac58593          	addi	a1,a1,-852 # 800052a8 <_ZZ8printHexmE9hexDigits+0x168>
    80003604:	00000097          	auipc	ra,0x0
    80003608:	5f4080e7          	jalr	1524(ra) # 80003bf8 <initlock>
    8000360c:	01813083          	ld	ra,24(sp)
    80003610:	01013403          	ld	s0,16(sp)
    80003614:	0004ac23          	sw	zero,24(s1)
    80003618:	00813483          	ld	s1,8(sp)
    8000361c:	02010113          	addi	sp,sp,32
    80003620:	00008067          	ret

0000000080003624 <uartinit>:
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00813423          	sd	s0,8(sp)
    8000362c:	01010413          	addi	s0,sp,16
    80003630:	100007b7          	lui	a5,0x10000
    80003634:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003638:	f8000713          	li	a4,-128
    8000363c:	00e781a3          	sb	a4,3(a5)
    80003640:	00300713          	li	a4,3
    80003644:	00e78023          	sb	a4,0(a5)
    80003648:	000780a3          	sb	zero,1(a5)
    8000364c:	00e781a3          	sb	a4,3(a5)
    80003650:	00700693          	li	a3,7
    80003654:	00d78123          	sb	a3,2(a5)
    80003658:	00e780a3          	sb	a4,1(a5)
    8000365c:	00813403          	ld	s0,8(sp)
    80003660:	01010113          	addi	sp,sp,16
    80003664:	00008067          	ret

0000000080003668 <uartputc>:
    80003668:	00002797          	auipc	a5,0x2
    8000366c:	3e07a783          	lw	a5,992(a5) # 80005a48 <panicked>
    80003670:	00078463          	beqz	a5,80003678 <uartputc+0x10>
    80003674:	0000006f          	j	80003674 <uartputc+0xc>
    80003678:	fd010113          	addi	sp,sp,-48
    8000367c:	02813023          	sd	s0,32(sp)
    80003680:	00913c23          	sd	s1,24(sp)
    80003684:	01213823          	sd	s2,16(sp)
    80003688:	01313423          	sd	s3,8(sp)
    8000368c:	02113423          	sd	ra,40(sp)
    80003690:	03010413          	addi	s0,sp,48
    80003694:	00002917          	auipc	s2,0x2
    80003698:	3bc90913          	addi	s2,s2,956 # 80005a50 <uart_tx_r>
    8000369c:	00093783          	ld	a5,0(s2)
    800036a0:	00002497          	auipc	s1,0x2
    800036a4:	3b848493          	addi	s1,s1,952 # 80005a58 <uart_tx_w>
    800036a8:	0004b703          	ld	a4,0(s1)
    800036ac:	02078693          	addi	a3,a5,32
    800036b0:	00050993          	mv	s3,a0
    800036b4:	02e69c63          	bne	a3,a4,800036ec <uartputc+0x84>
    800036b8:	00001097          	auipc	ra,0x1
    800036bc:	834080e7          	jalr	-1996(ra) # 80003eec <push_on>
    800036c0:	00093783          	ld	a5,0(s2)
    800036c4:	0004b703          	ld	a4,0(s1)
    800036c8:	02078793          	addi	a5,a5,32
    800036cc:	00e79463          	bne	a5,a4,800036d4 <uartputc+0x6c>
    800036d0:	0000006f          	j	800036d0 <uartputc+0x68>
    800036d4:	00001097          	auipc	ra,0x1
    800036d8:	88c080e7          	jalr	-1908(ra) # 80003f60 <pop_on>
    800036dc:	00093783          	ld	a5,0(s2)
    800036e0:	0004b703          	ld	a4,0(s1)
    800036e4:	02078693          	addi	a3,a5,32
    800036e8:	fce688e3          	beq	a3,a4,800036b8 <uartputc+0x50>
    800036ec:	01f77693          	andi	a3,a4,31
    800036f0:	00003597          	auipc	a1,0x3
    800036f4:	5e058593          	addi	a1,a1,1504 # 80006cd0 <uart_tx_buf>
    800036f8:	00d586b3          	add	a3,a1,a3
    800036fc:	00170713          	addi	a4,a4,1
    80003700:	01368023          	sb	s3,0(a3)
    80003704:	00e4b023          	sd	a4,0(s1)
    80003708:	10000637          	lui	a2,0x10000
    8000370c:	02f71063          	bne	a4,a5,8000372c <uartputc+0xc4>
    80003710:	0340006f          	j	80003744 <uartputc+0xdc>
    80003714:	00074703          	lbu	a4,0(a4)
    80003718:	00f93023          	sd	a5,0(s2)
    8000371c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003720:	00093783          	ld	a5,0(s2)
    80003724:	0004b703          	ld	a4,0(s1)
    80003728:	00f70e63          	beq	a4,a5,80003744 <uartputc+0xdc>
    8000372c:	00564683          	lbu	a3,5(a2)
    80003730:	01f7f713          	andi	a4,a5,31
    80003734:	00e58733          	add	a4,a1,a4
    80003738:	0206f693          	andi	a3,a3,32
    8000373c:	00178793          	addi	a5,a5,1
    80003740:	fc069ae3          	bnez	a3,80003714 <uartputc+0xac>
    80003744:	02813083          	ld	ra,40(sp)
    80003748:	02013403          	ld	s0,32(sp)
    8000374c:	01813483          	ld	s1,24(sp)
    80003750:	01013903          	ld	s2,16(sp)
    80003754:	00813983          	ld	s3,8(sp)
    80003758:	03010113          	addi	sp,sp,48
    8000375c:	00008067          	ret

0000000080003760 <uartputc_sync>:
    80003760:	ff010113          	addi	sp,sp,-16
    80003764:	00813423          	sd	s0,8(sp)
    80003768:	01010413          	addi	s0,sp,16
    8000376c:	00002717          	auipc	a4,0x2
    80003770:	2dc72703          	lw	a4,732(a4) # 80005a48 <panicked>
    80003774:	02071663          	bnez	a4,800037a0 <uartputc_sync+0x40>
    80003778:	00050793          	mv	a5,a0
    8000377c:	100006b7          	lui	a3,0x10000
    80003780:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003784:	02077713          	andi	a4,a4,32
    80003788:	fe070ce3          	beqz	a4,80003780 <uartputc_sync+0x20>
    8000378c:	0ff7f793          	andi	a5,a5,255
    80003790:	00f68023          	sb	a5,0(a3)
    80003794:	00813403          	ld	s0,8(sp)
    80003798:	01010113          	addi	sp,sp,16
    8000379c:	00008067          	ret
    800037a0:	0000006f          	j	800037a0 <uartputc_sync+0x40>

00000000800037a4 <uartstart>:
    800037a4:	ff010113          	addi	sp,sp,-16
    800037a8:	00813423          	sd	s0,8(sp)
    800037ac:	01010413          	addi	s0,sp,16
    800037b0:	00002617          	auipc	a2,0x2
    800037b4:	2a060613          	addi	a2,a2,672 # 80005a50 <uart_tx_r>
    800037b8:	00002517          	auipc	a0,0x2
    800037bc:	2a050513          	addi	a0,a0,672 # 80005a58 <uart_tx_w>
    800037c0:	00063783          	ld	a5,0(a2)
    800037c4:	00053703          	ld	a4,0(a0)
    800037c8:	04f70263          	beq	a4,a5,8000380c <uartstart+0x68>
    800037cc:	100005b7          	lui	a1,0x10000
    800037d0:	00003817          	auipc	a6,0x3
    800037d4:	50080813          	addi	a6,a6,1280 # 80006cd0 <uart_tx_buf>
    800037d8:	01c0006f          	j	800037f4 <uartstart+0x50>
    800037dc:	0006c703          	lbu	a4,0(a3)
    800037e0:	00f63023          	sd	a5,0(a2)
    800037e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800037e8:	00063783          	ld	a5,0(a2)
    800037ec:	00053703          	ld	a4,0(a0)
    800037f0:	00f70e63          	beq	a4,a5,8000380c <uartstart+0x68>
    800037f4:	01f7f713          	andi	a4,a5,31
    800037f8:	00e806b3          	add	a3,a6,a4
    800037fc:	0055c703          	lbu	a4,5(a1)
    80003800:	00178793          	addi	a5,a5,1
    80003804:	02077713          	andi	a4,a4,32
    80003808:	fc071ae3          	bnez	a4,800037dc <uartstart+0x38>
    8000380c:	00813403          	ld	s0,8(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret

0000000080003818 <uartgetc>:
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00813423          	sd	s0,8(sp)
    80003820:	01010413          	addi	s0,sp,16
    80003824:	10000737          	lui	a4,0x10000
    80003828:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000382c:	0017f793          	andi	a5,a5,1
    80003830:	00078c63          	beqz	a5,80003848 <uartgetc+0x30>
    80003834:	00074503          	lbu	a0,0(a4)
    80003838:	0ff57513          	andi	a0,a0,255
    8000383c:	00813403          	ld	s0,8(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret
    80003848:	fff00513          	li	a0,-1
    8000384c:	ff1ff06f          	j	8000383c <uartgetc+0x24>

0000000080003850 <uartintr>:
    80003850:	100007b7          	lui	a5,0x10000
    80003854:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003858:	0017f793          	andi	a5,a5,1
    8000385c:	0a078463          	beqz	a5,80003904 <uartintr+0xb4>
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	00113c23          	sd	ra,24(sp)
    80003870:	02010413          	addi	s0,sp,32
    80003874:	100004b7          	lui	s1,0x10000
    80003878:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000387c:	0ff57513          	andi	a0,a0,255
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	534080e7          	jalr	1332(ra) # 80002db4 <consoleintr>
    80003888:	0054c783          	lbu	a5,5(s1)
    8000388c:	0017f793          	andi	a5,a5,1
    80003890:	fe0794e3          	bnez	a5,80003878 <uartintr+0x28>
    80003894:	00002617          	auipc	a2,0x2
    80003898:	1bc60613          	addi	a2,a2,444 # 80005a50 <uart_tx_r>
    8000389c:	00002517          	auipc	a0,0x2
    800038a0:	1bc50513          	addi	a0,a0,444 # 80005a58 <uart_tx_w>
    800038a4:	00063783          	ld	a5,0(a2)
    800038a8:	00053703          	ld	a4,0(a0)
    800038ac:	04f70263          	beq	a4,a5,800038f0 <uartintr+0xa0>
    800038b0:	100005b7          	lui	a1,0x10000
    800038b4:	00003817          	auipc	a6,0x3
    800038b8:	41c80813          	addi	a6,a6,1052 # 80006cd0 <uart_tx_buf>
    800038bc:	01c0006f          	j	800038d8 <uartintr+0x88>
    800038c0:	0006c703          	lbu	a4,0(a3)
    800038c4:	00f63023          	sd	a5,0(a2)
    800038c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038cc:	00063783          	ld	a5,0(a2)
    800038d0:	00053703          	ld	a4,0(a0)
    800038d4:	00f70e63          	beq	a4,a5,800038f0 <uartintr+0xa0>
    800038d8:	01f7f713          	andi	a4,a5,31
    800038dc:	00e806b3          	add	a3,a6,a4
    800038e0:	0055c703          	lbu	a4,5(a1)
    800038e4:	00178793          	addi	a5,a5,1
    800038e8:	02077713          	andi	a4,a4,32
    800038ec:	fc071ae3          	bnez	a4,800038c0 <uartintr+0x70>
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	00813483          	ld	s1,8(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret
    80003904:	00002617          	auipc	a2,0x2
    80003908:	14c60613          	addi	a2,a2,332 # 80005a50 <uart_tx_r>
    8000390c:	00002517          	auipc	a0,0x2
    80003910:	14c50513          	addi	a0,a0,332 # 80005a58 <uart_tx_w>
    80003914:	00063783          	ld	a5,0(a2)
    80003918:	00053703          	ld	a4,0(a0)
    8000391c:	04f70263          	beq	a4,a5,80003960 <uartintr+0x110>
    80003920:	100005b7          	lui	a1,0x10000
    80003924:	00003817          	auipc	a6,0x3
    80003928:	3ac80813          	addi	a6,a6,940 # 80006cd0 <uart_tx_buf>
    8000392c:	01c0006f          	j	80003948 <uartintr+0xf8>
    80003930:	0006c703          	lbu	a4,0(a3)
    80003934:	00f63023          	sd	a5,0(a2)
    80003938:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000393c:	00063783          	ld	a5,0(a2)
    80003940:	00053703          	ld	a4,0(a0)
    80003944:	02f70063          	beq	a4,a5,80003964 <uartintr+0x114>
    80003948:	01f7f713          	andi	a4,a5,31
    8000394c:	00e806b3          	add	a3,a6,a4
    80003950:	0055c703          	lbu	a4,5(a1)
    80003954:	00178793          	addi	a5,a5,1
    80003958:	02077713          	andi	a4,a4,32
    8000395c:	fc071ae3          	bnez	a4,80003930 <uartintr+0xe0>
    80003960:	00008067          	ret
    80003964:	00008067          	ret

0000000080003968 <kinit>:
    80003968:	fc010113          	addi	sp,sp,-64
    8000396c:	02913423          	sd	s1,40(sp)
    80003970:	fffff7b7          	lui	a5,0xfffff
    80003974:	00004497          	auipc	s1,0x4
    80003978:	38b48493          	addi	s1,s1,907 # 80007cff <end+0xfff>
    8000397c:	02813823          	sd	s0,48(sp)
    80003980:	01313c23          	sd	s3,24(sp)
    80003984:	00f4f4b3          	and	s1,s1,a5
    80003988:	02113c23          	sd	ra,56(sp)
    8000398c:	03213023          	sd	s2,32(sp)
    80003990:	01413823          	sd	s4,16(sp)
    80003994:	01513423          	sd	s5,8(sp)
    80003998:	04010413          	addi	s0,sp,64
    8000399c:	000017b7          	lui	a5,0x1
    800039a0:	01100993          	li	s3,17
    800039a4:	00f487b3          	add	a5,s1,a5
    800039a8:	01b99993          	slli	s3,s3,0x1b
    800039ac:	06f9e063          	bltu	s3,a5,80003a0c <kinit+0xa4>
    800039b0:	00003a97          	auipc	s5,0x3
    800039b4:	350a8a93          	addi	s5,s5,848 # 80006d00 <end>
    800039b8:	0754ec63          	bltu	s1,s5,80003a30 <kinit+0xc8>
    800039bc:	0734fa63          	bgeu	s1,s3,80003a30 <kinit+0xc8>
    800039c0:	00088a37          	lui	s4,0x88
    800039c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800039c8:	00002917          	auipc	s2,0x2
    800039cc:	09890913          	addi	s2,s2,152 # 80005a60 <kmem>
    800039d0:	00ca1a13          	slli	s4,s4,0xc
    800039d4:	0140006f          	j	800039e8 <kinit+0x80>
    800039d8:	000017b7          	lui	a5,0x1
    800039dc:	00f484b3          	add	s1,s1,a5
    800039e0:	0554e863          	bltu	s1,s5,80003a30 <kinit+0xc8>
    800039e4:	0534f663          	bgeu	s1,s3,80003a30 <kinit+0xc8>
    800039e8:	00001637          	lui	a2,0x1
    800039ec:	00100593          	li	a1,1
    800039f0:	00048513          	mv	a0,s1
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	5e4080e7          	jalr	1508(ra) # 80003fd8 <__memset>
    800039fc:	00093783          	ld	a5,0(s2)
    80003a00:	00f4b023          	sd	a5,0(s1)
    80003a04:	00993023          	sd	s1,0(s2)
    80003a08:	fd4498e3          	bne	s1,s4,800039d8 <kinit+0x70>
    80003a0c:	03813083          	ld	ra,56(sp)
    80003a10:	03013403          	ld	s0,48(sp)
    80003a14:	02813483          	ld	s1,40(sp)
    80003a18:	02013903          	ld	s2,32(sp)
    80003a1c:	01813983          	ld	s3,24(sp)
    80003a20:	01013a03          	ld	s4,16(sp)
    80003a24:	00813a83          	ld	s5,8(sp)
    80003a28:	04010113          	addi	sp,sp,64
    80003a2c:	00008067          	ret
    80003a30:	00002517          	auipc	a0,0x2
    80003a34:	89850513          	addi	a0,a0,-1896 # 800052c8 <digits+0x18>
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	4b4080e7          	jalr	1204(ra) # 80002eec <panic>

0000000080003a40 <freerange>:
    80003a40:	fc010113          	addi	sp,sp,-64
    80003a44:	000017b7          	lui	a5,0x1
    80003a48:	02913423          	sd	s1,40(sp)
    80003a4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003a50:	009504b3          	add	s1,a0,s1
    80003a54:	fffff537          	lui	a0,0xfffff
    80003a58:	02813823          	sd	s0,48(sp)
    80003a5c:	02113c23          	sd	ra,56(sp)
    80003a60:	03213023          	sd	s2,32(sp)
    80003a64:	01313c23          	sd	s3,24(sp)
    80003a68:	01413823          	sd	s4,16(sp)
    80003a6c:	01513423          	sd	s5,8(sp)
    80003a70:	01613023          	sd	s6,0(sp)
    80003a74:	04010413          	addi	s0,sp,64
    80003a78:	00a4f4b3          	and	s1,s1,a0
    80003a7c:	00f487b3          	add	a5,s1,a5
    80003a80:	06f5e463          	bltu	a1,a5,80003ae8 <freerange+0xa8>
    80003a84:	00003a97          	auipc	s5,0x3
    80003a88:	27ca8a93          	addi	s5,s5,636 # 80006d00 <end>
    80003a8c:	0954e263          	bltu	s1,s5,80003b10 <freerange+0xd0>
    80003a90:	01100993          	li	s3,17
    80003a94:	01b99993          	slli	s3,s3,0x1b
    80003a98:	0734fc63          	bgeu	s1,s3,80003b10 <freerange+0xd0>
    80003a9c:	00058a13          	mv	s4,a1
    80003aa0:	00002917          	auipc	s2,0x2
    80003aa4:	fc090913          	addi	s2,s2,-64 # 80005a60 <kmem>
    80003aa8:	00002b37          	lui	s6,0x2
    80003aac:	0140006f          	j	80003ac0 <freerange+0x80>
    80003ab0:	000017b7          	lui	a5,0x1
    80003ab4:	00f484b3          	add	s1,s1,a5
    80003ab8:	0554ec63          	bltu	s1,s5,80003b10 <freerange+0xd0>
    80003abc:	0534fa63          	bgeu	s1,s3,80003b10 <freerange+0xd0>
    80003ac0:	00001637          	lui	a2,0x1
    80003ac4:	00100593          	li	a1,1
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	50c080e7          	jalr	1292(ra) # 80003fd8 <__memset>
    80003ad4:	00093703          	ld	a4,0(s2)
    80003ad8:	016487b3          	add	a5,s1,s6
    80003adc:	00e4b023          	sd	a4,0(s1)
    80003ae0:	00993023          	sd	s1,0(s2)
    80003ae4:	fcfa76e3          	bgeu	s4,a5,80003ab0 <freerange+0x70>
    80003ae8:	03813083          	ld	ra,56(sp)
    80003aec:	03013403          	ld	s0,48(sp)
    80003af0:	02813483          	ld	s1,40(sp)
    80003af4:	02013903          	ld	s2,32(sp)
    80003af8:	01813983          	ld	s3,24(sp)
    80003afc:	01013a03          	ld	s4,16(sp)
    80003b00:	00813a83          	ld	s5,8(sp)
    80003b04:	00013b03          	ld	s6,0(sp)
    80003b08:	04010113          	addi	sp,sp,64
    80003b0c:	00008067          	ret
    80003b10:	00001517          	auipc	a0,0x1
    80003b14:	7b850513          	addi	a0,a0,1976 # 800052c8 <digits+0x18>
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	3d4080e7          	jalr	980(ra) # 80002eec <panic>

0000000080003b20 <kfree>:
    80003b20:	fe010113          	addi	sp,sp,-32
    80003b24:	00813823          	sd	s0,16(sp)
    80003b28:	00113c23          	sd	ra,24(sp)
    80003b2c:	00913423          	sd	s1,8(sp)
    80003b30:	02010413          	addi	s0,sp,32
    80003b34:	03451793          	slli	a5,a0,0x34
    80003b38:	04079c63          	bnez	a5,80003b90 <kfree+0x70>
    80003b3c:	00003797          	auipc	a5,0x3
    80003b40:	1c478793          	addi	a5,a5,452 # 80006d00 <end>
    80003b44:	00050493          	mv	s1,a0
    80003b48:	04f56463          	bltu	a0,a5,80003b90 <kfree+0x70>
    80003b4c:	01100793          	li	a5,17
    80003b50:	01b79793          	slli	a5,a5,0x1b
    80003b54:	02f57e63          	bgeu	a0,a5,80003b90 <kfree+0x70>
    80003b58:	00001637          	lui	a2,0x1
    80003b5c:	00100593          	li	a1,1
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	478080e7          	jalr	1144(ra) # 80003fd8 <__memset>
    80003b68:	00002797          	auipc	a5,0x2
    80003b6c:	ef878793          	addi	a5,a5,-264 # 80005a60 <kmem>
    80003b70:	0007b703          	ld	a4,0(a5)
    80003b74:	01813083          	ld	ra,24(sp)
    80003b78:	01013403          	ld	s0,16(sp)
    80003b7c:	00e4b023          	sd	a4,0(s1)
    80003b80:	0097b023          	sd	s1,0(a5)
    80003b84:	00813483          	ld	s1,8(sp)
    80003b88:	02010113          	addi	sp,sp,32
    80003b8c:	00008067          	ret
    80003b90:	00001517          	auipc	a0,0x1
    80003b94:	73850513          	addi	a0,a0,1848 # 800052c8 <digits+0x18>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	354080e7          	jalr	852(ra) # 80002eec <panic>

0000000080003ba0 <kalloc>:
    80003ba0:	fe010113          	addi	sp,sp,-32
    80003ba4:	00813823          	sd	s0,16(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	02010413          	addi	s0,sp,32
    80003bb4:	00002797          	auipc	a5,0x2
    80003bb8:	eac78793          	addi	a5,a5,-340 # 80005a60 <kmem>
    80003bbc:	0007b483          	ld	s1,0(a5)
    80003bc0:	02048063          	beqz	s1,80003be0 <kalloc+0x40>
    80003bc4:	0004b703          	ld	a4,0(s1)
    80003bc8:	00001637          	lui	a2,0x1
    80003bcc:	00500593          	li	a1,5
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	00e7b023          	sd	a4,0(a5)
    80003bd8:	00000097          	auipc	ra,0x0
    80003bdc:	400080e7          	jalr	1024(ra) # 80003fd8 <__memset>
    80003be0:	01813083          	ld	ra,24(sp)
    80003be4:	01013403          	ld	s0,16(sp)
    80003be8:	00048513          	mv	a0,s1
    80003bec:	00813483          	ld	s1,8(sp)
    80003bf0:	02010113          	addi	sp,sp,32
    80003bf4:	00008067          	ret

0000000080003bf8 <initlock>:
    80003bf8:	ff010113          	addi	sp,sp,-16
    80003bfc:	00813423          	sd	s0,8(sp)
    80003c00:	01010413          	addi	s0,sp,16
    80003c04:	00813403          	ld	s0,8(sp)
    80003c08:	00b53423          	sd	a1,8(a0)
    80003c0c:	00052023          	sw	zero,0(a0)
    80003c10:	00053823          	sd	zero,16(a0)
    80003c14:	01010113          	addi	sp,sp,16
    80003c18:	00008067          	ret

0000000080003c1c <acquire>:
    80003c1c:	fe010113          	addi	sp,sp,-32
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00913423          	sd	s1,8(sp)
    80003c28:	00113c23          	sd	ra,24(sp)
    80003c2c:	01213023          	sd	s2,0(sp)
    80003c30:	02010413          	addi	s0,sp,32
    80003c34:	00050493          	mv	s1,a0
    80003c38:	10002973          	csrr	s2,sstatus
    80003c3c:	100027f3          	csrr	a5,sstatus
    80003c40:	ffd7f793          	andi	a5,a5,-3
    80003c44:	10079073          	csrw	sstatus,a5
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	8e4080e7          	jalr	-1820(ra) # 8000252c <mycpu>
    80003c50:	07852783          	lw	a5,120(a0)
    80003c54:	06078e63          	beqz	a5,80003cd0 <acquire+0xb4>
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	8d4080e7          	jalr	-1836(ra) # 8000252c <mycpu>
    80003c60:	07852783          	lw	a5,120(a0)
    80003c64:	0004a703          	lw	a4,0(s1)
    80003c68:	0017879b          	addiw	a5,a5,1
    80003c6c:	06f52c23          	sw	a5,120(a0)
    80003c70:	04071063          	bnez	a4,80003cb0 <acquire+0x94>
    80003c74:	00100713          	li	a4,1
    80003c78:	00070793          	mv	a5,a4
    80003c7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003c80:	0007879b          	sext.w	a5,a5
    80003c84:	fe079ae3          	bnez	a5,80003c78 <acquire+0x5c>
    80003c88:	0ff0000f          	fence
    80003c8c:	fffff097          	auipc	ra,0xfffff
    80003c90:	8a0080e7          	jalr	-1888(ra) # 8000252c <mycpu>
    80003c94:	01813083          	ld	ra,24(sp)
    80003c98:	01013403          	ld	s0,16(sp)
    80003c9c:	00a4b823          	sd	a0,16(s1)
    80003ca0:	00013903          	ld	s2,0(sp)
    80003ca4:	00813483          	ld	s1,8(sp)
    80003ca8:	02010113          	addi	sp,sp,32
    80003cac:	00008067          	ret
    80003cb0:	0104b903          	ld	s2,16(s1)
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	878080e7          	jalr	-1928(ra) # 8000252c <mycpu>
    80003cbc:	faa91ce3          	bne	s2,a0,80003c74 <acquire+0x58>
    80003cc0:	00001517          	auipc	a0,0x1
    80003cc4:	61050513          	addi	a0,a0,1552 # 800052d0 <digits+0x20>
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	224080e7          	jalr	548(ra) # 80002eec <panic>
    80003cd0:	00195913          	srli	s2,s2,0x1
    80003cd4:	fffff097          	auipc	ra,0xfffff
    80003cd8:	858080e7          	jalr	-1960(ra) # 8000252c <mycpu>
    80003cdc:	00197913          	andi	s2,s2,1
    80003ce0:	07252e23          	sw	s2,124(a0)
    80003ce4:	f75ff06f          	j	80003c58 <acquire+0x3c>

0000000080003ce8 <release>:
    80003ce8:	fe010113          	addi	sp,sp,-32
    80003cec:	00813823          	sd	s0,16(sp)
    80003cf0:	00113c23          	sd	ra,24(sp)
    80003cf4:	00913423          	sd	s1,8(sp)
    80003cf8:	01213023          	sd	s2,0(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    80003d00:	00052783          	lw	a5,0(a0)
    80003d04:	00079a63          	bnez	a5,80003d18 <release+0x30>
    80003d08:	00001517          	auipc	a0,0x1
    80003d0c:	5d050513          	addi	a0,a0,1488 # 800052d8 <digits+0x28>
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	1dc080e7          	jalr	476(ra) # 80002eec <panic>
    80003d18:	01053903          	ld	s2,16(a0)
    80003d1c:	00050493          	mv	s1,a0
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	80c080e7          	jalr	-2036(ra) # 8000252c <mycpu>
    80003d28:	fea910e3          	bne	s2,a0,80003d08 <release+0x20>
    80003d2c:	0004b823          	sd	zero,16(s1)
    80003d30:	0ff0000f          	fence
    80003d34:	0f50000f          	fence	iorw,ow
    80003d38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003d3c:	ffffe097          	auipc	ra,0xffffe
    80003d40:	7f0080e7          	jalr	2032(ra) # 8000252c <mycpu>
    80003d44:	100027f3          	csrr	a5,sstatus
    80003d48:	0027f793          	andi	a5,a5,2
    80003d4c:	04079a63          	bnez	a5,80003da0 <release+0xb8>
    80003d50:	07852783          	lw	a5,120(a0)
    80003d54:	02f05e63          	blez	a5,80003d90 <release+0xa8>
    80003d58:	fff7871b          	addiw	a4,a5,-1
    80003d5c:	06e52c23          	sw	a4,120(a0)
    80003d60:	00071c63          	bnez	a4,80003d78 <release+0x90>
    80003d64:	07c52783          	lw	a5,124(a0)
    80003d68:	00078863          	beqz	a5,80003d78 <release+0x90>
    80003d6c:	100027f3          	csrr	a5,sstatus
    80003d70:	0027e793          	ori	a5,a5,2
    80003d74:	10079073          	csrw	sstatus,a5
    80003d78:	01813083          	ld	ra,24(sp)
    80003d7c:	01013403          	ld	s0,16(sp)
    80003d80:	00813483          	ld	s1,8(sp)
    80003d84:	00013903          	ld	s2,0(sp)
    80003d88:	02010113          	addi	sp,sp,32
    80003d8c:	00008067          	ret
    80003d90:	00001517          	auipc	a0,0x1
    80003d94:	56850513          	addi	a0,a0,1384 # 800052f8 <digits+0x48>
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	154080e7          	jalr	340(ra) # 80002eec <panic>
    80003da0:	00001517          	auipc	a0,0x1
    80003da4:	54050513          	addi	a0,a0,1344 # 800052e0 <digits+0x30>
    80003da8:	fffff097          	auipc	ra,0xfffff
    80003dac:	144080e7          	jalr	324(ra) # 80002eec <panic>

0000000080003db0 <holding>:
    80003db0:	00052783          	lw	a5,0(a0)
    80003db4:	00079663          	bnez	a5,80003dc0 <holding+0x10>
    80003db8:	00000513          	li	a0,0
    80003dbc:	00008067          	ret
    80003dc0:	fe010113          	addi	sp,sp,-32
    80003dc4:	00813823          	sd	s0,16(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	00113c23          	sd	ra,24(sp)
    80003dd0:	02010413          	addi	s0,sp,32
    80003dd4:	01053483          	ld	s1,16(a0)
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	754080e7          	jalr	1876(ra) # 8000252c <mycpu>
    80003de0:	01813083          	ld	ra,24(sp)
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	40a48533          	sub	a0,s1,a0
    80003dec:	00153513          	seqz	a0,a0
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	00008067          	ret

0000000080003dfc <push_off>:
    80003dfc:	fe010113          	addi	sp,sp,-32
    80003e00:	00813823          	sd	s0,16(sp)
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	00913423          	sd	s1,8(sp)
    80003e0c:	02010413          	addi	s0,sp,32
    80003e10:	100024f3          	csrr	s1,sstatus
    80003e14:	100027f3          	csrr	a5,sstatus
    80003e18:	ffd7f793          	andi	a5,a5,-3
    80003e1c:	10079073          	csrw	sstatus,a5
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	70c080e7          	jalr	1804(ra) # 8000252c <mycpu>
    80003e28:	07852783          	lw	a5,120(a0)
    80003e2c:	02078663          	beqz	a5,80003e58 <push_off+0x5c>
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	6fc080e7          	jalr	1788(ra) # 8000252c <mycpu>
    80003e38:	07852783          	lw	a5,120(a0)
    80003e3c:	01813083          	ld	ra,24(sp)
    80003e40:	01013403          	ld	s0,16(sp)
    80003e44:	0017879b          	addiw	a5,a5,1
    80003e48:	06f52c23          	sw	a5,120(a0)
    80003e4c:	00813483          	ld	s1,8(sp)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00008067          	ret
    80003e58:	0014d493          	srli	s1,s1,0x1
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	6d0080e7          	jalr	1744(ra) # 8000252c <mycpu>
    80003e64:	0014f493          	andi	s1,s1,1
    80003e68:	06952e23          	sw	s1,124(a0)
    80003e6c:	fc5ff06f          	j	80003e30 <push_off+0x34>

0000000080003e70 <pop_off>:
    80003e70:	ff010113          	addi	sp,sp,-16
    80003e74:	00813023          	sd	s0,0(sp)
    80003e78:	00113423          	sd	ra,8(sp)
    80003e7c:	01010413          	addi	s0,sp,16
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	6ac080e7          	jalr	1708(ra) # 8000252c <mycpu>
    80003e88:	100027f3          	csrr	a5,sstatus
    80003e8c:	0027f793          	andi	a5,a5,2
    80003e90:	04079663          	bnez	a5,80003edc <pop_off+0x6c>
    80003e94:	07852783          	lw	a5,120(a0)
    80003e98:	02f05a63          	blez	a5,80003ecc <pop_off+0x5c>
    80003e9c:	fff7871b          	addiw	a4,a5,-1
    80003ea0:	06e52c23          	sw	a4,120(a0)
    80003ea4:	00071c63          	bnez	a4,80003ebc <pop_off+0x4c>
    80003ea8:	07c52783          	lw	a5,124(a0)
    80003eac:	00078863          	beqz	a5,80003ebc <pop_off+0x4c>
    80003eb0:	100027f3          	csrr	a5,sstatus
    80003eb4:	0027e793          	ori	a5,a5,2
    80003eb8:	10079073          	csrw	sstatus,a5
    80003ebc:	00813083          	ld	ra,8(sp)
    80003ec0:	00013403          	ld	s0,0(sp)
    80003ec4:	01010113          	addi	sp,sp,16
    80003ec8:	00008067          	ret
    80003ecc:	00001517          	auipc	a0,0x1
    80003ed0:	42c50513          	addi	a0,a0,1068 # 800052f8 <digits+0x48>
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	018080e7          	jalr	24(ra) # 80002eec <panic>
    80003edc:	00001517          	auipc	a0,0x1
    80003ee0:	40450513          	addi	a0,a0,1028 # 800052e0 <digits+0x30>
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	008080e7          	jalr	8(ra) # 80002eec <panic>

0000000080003eec <push_on>:
    80003eec:	fe010113          	addi	sp,sp,-32
    80003ef0:	00813823          	sd	s0,16(sp)
    80003ef4:	00113c23          	sd	ra,24(sp)
    80003ef8:	00913423          	sd	s1,8(sp)
    80003efc:	02010413          	addi	s0,sp,32
    80003f00:	100024f3          	csrr	s1,sstatus
    80003f04:	100027f3          	csrr	a5,sstatus
    80003f08:	0027e793          	ori	a5,a5,2
    80003f0c:	10079073          	csrw	sstatus,a5
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	61c080e7          	jalr	1564(ra) # 8000252c <mycpu>
    80003f18:	07852783          	lw	a5,120(a0)
    80003f1c:	02078663          	beqz	a5,80003f48 <push_on+0x5c>
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	60c080e7          	jalr	1548(ra) # 8000252c <mycpu>
    80003f28:	07852783          	lw	a5,120(a0)
    80003f2c:	01813083          	ld	ra,24(sp)
    80003f30:	01013403          	ld	s0,16(sp)
    80003f34:	0017879b          	addiw	a5,a5,1
    80003f38:	06f52c23          	sw	a5,120(a0)
    80003f3c:	00813483          	ld	s1,8(sp)
    80003f40:	02010113          	addi	sp,sp,32
    80003f44:	00008067          	ret
    80003f48:	0014d493          	srli	s1,s1,0x1
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	5e0080e7          	jalr	1504(ra) # 8000252c <mycpu>
    80003f54:	0014f493          	andi	s1,s1,1
    80003f58:	06952e23          	sw	s1,124(a0)
    80003f5c:	fc5ff06f          	j	80003f20 <push_on+0x34>

0000000080003f60 <pop_on>:
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00813023          	sd	s0,0(sp)
    80003f68:	00113423          	sd	ra,8(sp)
    80003f6c:	01010413          	addi	s0,sp,16
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	5bc080e7          	jalr	1468(ra) # 8000252c <mycpu>
    80003f78:	100027f3          	csrr	a5,sstatus
    80003f7c:	0027f793          	andi	a5,a5,2
    80003f80:	04078463          	beqz	a5,80003fc8 <pop_on+0x68>
    80003f84:	07852783          	lw	a5,120(a0)
    80003f88:	02f05863          	blez	a5,80003fb8 <pop_on+0x58>
    80003f8c:	fff7879b          	addiw	a5,a5,-1
    80003f90:	06f52c23          	sw	a5,120(a0)
    80003f94:	07853783          	ld	a5,120(a0)
    80003f98:	00079863          	bnez	a5,80003fa8 <pop_on+0x48>
    80003f9c:	100027f3          	csrr	a5,sstatus
    80003fa0:	ffd7f793          	andi	a5,a5,-3
    80003fa4:	10079073          	csrw	sstatus,a5
    80003fa8:	00813083          	ld	ra,8(sp)
    80003fac:	00013403          	ld	s0,0(sp)
    80003fb0:	01010113          	addi	sp,sp,16
    80003fb4:	00008067          	ret
    80003fb8:	00001517          	auipc	a0,0x1
    80003fbc:	36850513          	addi	a0,a0,872 # 80005320 <digits+0x70>
    80003fc0:	fffff097          	auipc	ra,0xfffff
    80003fc4:	f2c080e7          	jalr	-212(ra) # 80002eec <panic>
    80003fc8:	00001517          	auipc	a0,0x1
    80003fcc:	33850513          	addi	a0,a0,824 # 80005300 <digits+0x50>
    80003fd0:	fffff097          	auipc	ra,0xfffff
    80003fd4:	f1c080e7          	jalr	-228(ra) # 80002eec <panic>

0000000080003fd8 <__memset>:
    80003fd8:	ff010113          	addi	sp,sp,-16
    80003fdc:	00813423          	sd	s0,8(sp)
    80003fe0:	01010413          	addi	s0,sp,16
    80003fe4:	1a060e63          	beqz	a2,800041a0 <__memset+0x1c8>
    80003fe8:	40a007b3          	neg	a5,a0
    80003fec:	0077f793          	andi	a5,a5,7
    80003ff0:	00778693          	addi	a3,a5,7
    80003ff4:	00b00813          	li	a6,11
    80003ff8:	0ff5f593          	andi	a1,a1,255
    80003ffc:	fff6071b          	addiw	a4,a2,-1
    80004000:	1b06e663          	bltu	a3,a6,800041ac <__memset+0x1d4>
    80004004:	1cd76463          	bltu	a4,a3,800041cc <__memset+0x1f4>
    80004008:	1a078e63          	beqz	a5,800041c4 <__memset+0x1ec>
    8000400c:	00b50023          	sb	a1,0(a0)
    80004010:	00100713          	li	a4,1
    80004014:	1ae78463          	beq	a5,a4,800041bc <__memset+0x1e4>
    80004018:	00b500a3          	sb	a1,1(a0)
    8000401c:	00200713          	li	a4,2
    80004020:	1ae78a63          	beq	a5,a4,800041d4 <__memset+0x1fc>
    80004024:	00b50123          	sb	a1,2(a0)
    80004028:	00300713          	li	a4,3
    8000402c:	18e78463          	beq	a5,a4,800041b4 <__memset+0x1dc>
    80004030:	00b501a3          	sb	a1,3(a0)
    80004034:	00400713          	li	a4,4
    80004038:	1ae78263          	beq	a5,a4,800041dc <__memset+0x204>
    8000403c:	00b50223          	sb	a1,4(a0)
    80004040:	00500713          	li	a4,5
    80004044:	1ae78063          	beq	a5,a4,800041e4 <__memset+0x20c>
    80004048:	00b502a3          	sb	a1,5(a0)
    8000404c:	00700713          	li	a4,7
    80004050:	18e79e63          	bne	a5,a4,800041ec <__memset+0x214>
    80004054:	00b50323          	sb	a1,6(a0)
    80004058:	00700e93          	li	t4,7
    8000405c:	00859713          	slli	a4,a1,0x8
    80004060:	00e5e733          	or	a4,a1,a4
    80004064:	01059e13          	slli	t3,a1,0x10
    80004068:	01c76e33          	or	t3,a4,t3
    8000406c:	01859313          	slli	t1,a1,0x18
    80004070:	006e6333          	or	t1,t3,t1
    80004074:	02059893          	slli	a7,a1,0x20
    80004078:	40f60e3b          	subw	t3,a2,a5
    8000407c:	011368b3          	or	a7,t1,a7
    80004080:	02859813          	slli	a6,a1,0x28
    80004084:	0108e833          	or	a6,a7,a6
    80004088:	03059693          	slli	a3,a1,0x30
    8000408c:	003e589b          	srliw	a7,t3,0x3
    80004090:	00d866b3          	or	a3,a6,a3
    80004094:	03859713          	slli	a4,a1,0x38
    80004098:	00389813          	slli	a6,a7,0x3
    8000409c:	00f507b3          	add	a5,a0,a5
    800040a0:	00e6e733          	or	a4,a3,a4
    800040a4:	000e089b          	sext.w	a7,t3
    800040a8:	00f806b3          	add	a3,a6,a5
    800040ac:	00e7b023          	sd	a4,0(a5)
    800040b0:	00878793          	addi	a5,a5,8
    800040b4:	fed79ce3          	bne	a5,a3,800040ac <__memset+0xd4>
    800040b8:	ff8e7793          	andi	a5,t3,-8
    800040bc:	0007871b          	sext.w	a4,a5
    800040c0:	01d787bb          	addw	a5,a5,t4
    800040c4:	0ce88e63          	beq	a7,a4,800041a0 <__memset+0x1c8>
    800040c8:	00f50733          	add	a4,a0,a5
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	0017871b          	addiw	a4,a5,1
    800040d4:	0cc77663          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00b70023          	sb	a1,0(a4)
    800040e0:	0027871b          	addiw	a4,a5,2
    800040e4:	0ac77e63          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00b70023          	sb	a1,0(a4)
    800040f0:	0037871b          	addiw	a4,a5,3
    800040f4:	0ac77663          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	0047871b          	addiw	a4,a5,4
    80004104:	08c77e63          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004108:	00e50733          	add	a4,a0,a4
    8000410c:	00b70023          	sb	a1,0(a4)
    80004110:	0057871b          	addiw	a4,a5,5
    80004114:	08c77663          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004118:	00e50733          	add	a4,a0,a4
    8000411c:	00b70023          	sb	a1,0(a4)
    80004120:	0067871b          	addiw	a4,a5,6
    80004124:	06c77e63          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004128:	00e50733          	add	a4,a0,a4
    8000412c:	00b70023          	sb	a1,0(a4)
    80004130:	0077871b          	addiw	a4,a5,7
    80004134:	06c77663          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004138:	00e50733          	add	a4,a0,a4
    8000413c:	00b70023          	sb	a1,0(a4)
    80004140:	0087871b          	addiw	a4,a5,8
    80004144:	04c77e63          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004148:	00e50733          	add	a4,a0,a4
    8000414c:	00b70023          	sb	a1,0(a4)
    80004150:	0097871b          	addiw	a4,a5,9
    80004154:	04c77663          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004158:	00e50733          	add	a4,a0,a4
    8000415c:	00b70023          	sb	a1,0(a4)
    80004160:	00a7871b          	addiw	a4,a5,10
    80004164:	02c77e63          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004168:	00e50733          	add	a4,a0,a4
    8000416c:	00b70023          	sb	a1,0(a4)
    80004170:	00b7871b          	addiw	a4,a5,11
    80004174:	02c77663          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004178:	00e50733          	add	a4,a0,a4
    8000417c:	00b70023          	sb	a1,0(a4)
    80004180:	00c7871b          	addiw	a4,a5,12
    80004184:	00c77e63          	bgeu	a4,a2,800041a0 <__memset+0x1c8>
    80004188:	00e50733          	add	a4,a0,a4
    8000418c:	00b70023          	sb	a1,0(a4)
    80004190:	00d7879b          	addiw	a5,a5,13
    80004194:	00c7f663          	bgeu	a5,a2,800041a0 <__memset+0x1c8>
    80004198:	00f507b3          	add	a5,a0,a5
    8000419c:	00b78023          	sb	a1,0(a5)
    800041a0:	00813403          	ld	s0,8(sp)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret
    800041ac:	00b00693          	li	a3,11
    800041b0:	e55ff06f          	j	80004004 <__memset+0x2c>
    800041b4:	00300e93          	li	t4,3
    800041b8:	ea5ff06f          	j	8000405c <__memset+0x84>
    800041bc:	00100e93          	li	t4,1
    800041c0:	e9dff06f          	j	8000405c <__memset+0x84>
    800041c4:	00000e93          	li	t4,0
    800041c8:	e95ff06f          	j	8000405c <__memset+0x84>
    800041cc:	00000793          	li	a5,0
    800041d0:	ef9ff06f          	j	800040c8 <__memset+0xf0>
    800041d4:	00200e93          	li	t4,2
    800041d8:	e85ff06f          	j	8000405c <__memset+0x84>
    800041dc:	00400e93          	li	t4,4
    800041e0:	e7dff06f          	j	8000405c <__memset+0x84>
    800041e4:	00500e93          	li	t4,5
    800041e8:	e75ff06f          	j	8000405c <__memset+0x84>
    800041ec:	00600e93          	li	t4,6
    800041f0:	e6dff06f          	j	8000405c <__memset+0x84>

00000000800041f4 <__memmove>:
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00813423          	sd	s0,8(sp)
    800041fc:	01010413          	addi	s0,sp,16
    80004200:	0e060863          	beqz	a2,800042f0 <__memmove+0xfc>
    80004204:	fff6069b          	addiw	a3,a2,-1
    80004208:	0006881b          	sext.w	a6,a3
    8000420c:	0ea5e863          	bltu	a1,a0,800042fc <__memmove+0x108>
    80004210:	00758713          	addi	a4,a1,7
    80004214:	00a5e7b3          	or	a5,a1,a0
    80004218:	40a70733          	sub	a4,a4,a0
    8000421c:	0077f793          	andi	a5,a5,7
    80004220:	00f73713          	sltiu	a4,a4,15
    80004224:	00174713          	xori	a4,a4,1
    80004228:	0017b793          	seqz	a5,a5
    8000422c:	00e7f7b3          	and	a5,a5,a4
    80004230:	10078863          	beqz	a5,80004340 <__memmove+0x14c>
    80004234:	00900793          	li	a5,9
    80004238:	1107f463          	bgeu	a5,a6,80004340 <__memmove+0x14c>
    8000423c:	0036581b          	srliw	a6,a2,0x3
    80004240:	fff8081b          	addiw	a6,a6,-1
    80004244:	02081813          	slli	a6,a6,0x20
    80004248:	01d85893          	srli	a7,a6,0x1d
    8000424c:	00858813          	addi	a6,a1,8
    80004250:	00058793          	mv	a5,a1
    80004254:	00050713          	mv	a4,a0
    80004258:	01088833          	add	a6,a7,a6
    8000425c:	0007b883          	ld	a7,0(a5)
    80004260:	00878793          	addi	a5,a5,8
    80004264:	00870713          	addi	a4,a4,8
    80004268:	ff173c23          	sd	a7,-8(a4)
    8000426c:	ff0798e3          	bne	a5,a6,8000425c <__memmove+0x68>
    80004270:	ff867713          	andi	a4,a2,-8
    80004274:	02071793          	slli	a5,a4,0x20
    80004278:	0207d793          	srli	a5,a5,0x20
    8000427c:	00f585b3          	add	a1,a1,a5
    80004280:	40e686bb          	subw	a3,a3,a4
    80004284:	00f507b3          	add	a5,a0,a5
    80004288:	06e60463          	beq	a2,a4,800042f0 <__memmove+0xfc>
    8000428c:	0005c703          	lbu	a4,0(a1)
    80004290:	00e78023          	sb	a4,0(a5)
    80004294:	04068e63          	beqz	a3,800042f0 <__memmove+0xfc>
    80004298:	0015c603          	lbu	a2,1(a1)
    8000429c:	00100713          	li	a4,1
    800042a0:	00c780a3          	sb	a2,1(a5)
    800042a4:	04e68663          	beq	a3,a4,800042f0 <__memmove+0xfc>
    800042a8:	0025c603          	lbu	a2,2(a1)
    800042ac:	00200713          	li	a4,2
    800042b0:	00c78123          	sb	a2,2(a5)
    800042b4:	02e68e63          	beq	a3,a4,800042f0 <__memmove+0xfc>
    800042b8:	0035c603          	lbu	a2,3(a1)
    800042bc:	00300713          	li	a4,3
    800042c0:	00c781a3          	sb	a2,3(a5)
    800042c4:	02e68663          	beq	a3,a4,800042f0 <__memmove+0xfc>
    800042c8:	0045c603          	lbu	a2,4(a1)
    800042cc:	00400713          	li	a4,4
    800042d0:	00c78223          	sb	a2,4(a5)
    800042d4:	00e68e63          	beq	a3,a4,800042f0 <__memmove+0xfc>
    800042d8:	0055c603          	lbu	a2,5(a1)
    800042dc:	00500713          	li	a4,5
    800042e0:	00c782a3          	sb	a2,5(a5)
    800042e4:	00e68663          	beq	a3,a4,800042f0 <__memmove+0xfc>
    800042e8:	0065c703          	lbu	a4,6(a1)
    800042ec:	00e78323          	sb	a4,6(a5)
    800042f0:	00813403          	ld	s0,8(sp)
    800042f4:	01010113          	addi	sp,sp,16
    800042f8:	00008067          	ret
    800042fc:	02061713          	slli	a4,a2,0x20
    80004300:	02075713          	srli	a4,a4,0x20
    80004304:	00e587b3          	add	a5,a1,a4
    80004308:	f0f574e3          	bgeu	a0,a5,80004210 <__memmove+0x1c>
    8000430c:	02069613          	slli	a2,a3,0x20
    80004310:	02065613          	srli	a2,a2,0x20
    80004314:	fff64613          	not	a2,a2
    80004318:	00e50733          	add	a4,a0,a4
    8000431c:	00c78633          	add	a2,a5,a2
    80004320:	fff7c683          	lbu	a3,-1(a5)
    80004324:	fff78793          	addi	a5,a5,-1
    80004328:	fff70713          	addi	a4,a4,-1
    8000432c:	00d70023          	sb	a3,0(a4)
    80004330:	fec798e3          	bne	a5,a2,80004320 <__memmove+0x12c>
    80004334:	00813403          	ld	s0,8(sp)
    80004338:	01010113          	addi	sp,sp,16
    8000433c:	00008067          	ret
    80004340:	02069713          	slli	a4,a3,0x20
    80004344:	02075713          	srli	a4,a4,0x20
    80004348:	00170713          	addi	a4,a4,1
    8000434c:	00e50733          	add	a4,a0,a4
    80004350:	00050793          	mv	a5,a0
    80004354:	0005c683          	lbu	a3,0(a1)
    80004358:	00178793          	addi	a5,a5,1
    8000435c:	00158593          	addi	a1,a1,1
    80004360:	fed78fa3          	sb	a3,-1(a5)
    80004364:	fee798e3          	bne	a5,a4,80004354 <__memmove+0x160>
    80004368:	f89ff06f          	j	800042f0 <__memmove+0xfc>

000000008000436c <__mem_free>:
    8000436c:	ff010113          	addi	sp,sp,-16
    80004370:	00813423          	sd	s0,8(sp)
    80004374:	01010413          	addi	s0,sp,16
    80004378:	00001597          	auipc	a1,0x1
    8000437c:	6f058593          	addi	a1,a1,1776 # 80005a68 <freep>
    80004380:	0005b783          	ld	a5,0(a1)
    80004384:	ff050693          	addi	a3,a0,-16
    80004388:	0007b703          	ld	a4,0(a5)
    8000438c:	00d7fc63          	bgeu	a5,a3,800043a4 <__mem_free+0x38>
    80004390:	00e6ee63          	bltu	a3,a4,800043ac <__mem_free+0x40>
    80004394:	00e7fc63          	bgeu	a5,a4,800043ac <__mem_free+0x40>
    80004398:	00070793          	mv	a5,a4
    8000439c:	0007b703          	ld	a4,0(a5)
    800043a0:	fed7e8e3          	bltu	a5,a3,80004390 <__mem_free+0x24>
    800043a4:	fee7eae3          	bltu	a5,a4,80004398 <__mem_free+0x2c>
    800043a8:	fee6f8e3          	bgeu	a3,a4,80004398 <__mem_free+0x2c>
    800043ac:	ff852803          	lw	a6,-8(a0)
    800043b0:	02081613          	slli	a2,a6,0x20
    800043b4:	01c65613          	srli	a2,a2,0x1c
    800043b8:	00c68633          	add	a2,a3,a2
    800043bc:	02c70a63          	beq	a4,a2,800043f0 <__mem_free+0x84>
    800043c0:	fee53823          	sd	a4,-16(a0)
    800043c4:	0087a503          	lw	a0,8(a5)
    800043c8:	02051613          	slli	a2,a0,0x20
    800043cc:	01c65613          	srli	a2,a2,0x1c
    800043d0:	00c78633          	add	a2,a5,a2
    800043d4:	04c68263          	beq	a3,a2,80004418 <__mem_free+0xac>
    800043d8:	00813403          	ld	s0,8(sp)
    800043dc:	00d7b023          	sd	a3,0(a5)
    800043e0:	00f5b023          	sd	a5,0(a1)
    800043e4:	00000513          	li	a0,0
    800043e8:	01010113          	addi	sp,sp,16
    800043ec:	00008067          	ret
    800043f0:	00872603          	lw	a2,8(a4)
    800043f4:	00073703          	ld	a4,0(a4)
    800043f8:	0106083b          	addw	a6,a2,a6
    800043fc:	ff052c23          	sw	a6,-8(a0)
    80004400:	fee53823          	sd	a4,-16(a0)
    80004404:	0087a503          	lw	a0,8(a5)
    80004408:	02051613          	slli	a2,a0,0x20
    8000440c:	01c65613          	srli	a2,a2,0x1c
    80004410:	00c78633          	add	a2,a5,a2
    80004414:	fcc692e3          	bne	a3,a2,800043d8 <__mem_free+0x6c>
    80004418:	00813403          	ld	s0,8(sp)
    8000441c:	0105053b          	addw	a0,a0,a6
    80004420:	00a7a423          	sw	a0,8(a5)
    80004424:	00e7b023          	sd	a4,0(a5)
    80004428:	00f5b023          	sd	a5,0(a1)
    8000442c:	00000513          	li	a0,0
    80004430:	01010113          	addi	sp,sp,16
    80004434:	00008067          	ret

0000000080004438 <__mem_alloc>:
    80004438:	fc010113          	addi	sp,sp,-64
    8000443c:	02813823          	sd	s0,48(sp)
    80004440:	02913423          	sd	s1,40(sp)
    80004444:	03213023          	sd	s2,32(sp)
    80004448:	01513423          	sd	s5,8(sp)
    8000444c:	02113c23          	sd	ra,56(sp)
    80004450:	01313c23          	sd	s3,24(sp)
    80004454:	01413823          	sd	s4,16(sp)
    80004458:	01613023          	sd	s6,0(sp)
    8000445c:	04010413          	addi	s0,sp,64
    80004460:	00001a97          	auipc	s5,0x1
    80004464:	608a8a93          	addi	s5,s5,1544 # 80005a68 <freep>
    80004468:	00f50913          	addi	s2,a0,15
    8000446c:	000ab683          	ld	a3,0(s5)
    80004470:	00495913          	srli	s2,s2,0x4
    80004474:	0019049b          	addiw	s1,s2,1
    80004478:	00048913          	mv	s2,s1
    8000447c:	0c068c63          	beqz	a3,80004554 <__mem_alloc+0x11c>
    80004480:	0006b503          	ld	a0,0(a3)
    80004484:	00852703          	lw	a4,8(a0)
    80004488:	10977063          	bgeu	a4,s1,80004588 <__mem_alloc+0x150>
    8000448c:	000017b7          	lui	a5,0x1
    80004490:	0009099b          	sext.w	s3,s2
    80004494:	0af4e863          	bltu	s1,a5,80004544 <__mem_alloc+0x10c>
    80004498:	02099a13          	slli	s4,s3,0x20
    8000449c:	01ca5a13          	srli	s4,s4,0x1c
    800044a0:	fff00b13          	li	s6,-1
    800044a4:	0100006f          	j	800044b4 <__mem_alloc+0x7c>
    800044a8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800044ac:	00852703          	lw	a4,8(a0)
    800044b0:	04977463          	bgeu	a4,s1,800044f8 <__mem_alloc+0xc0>
    800044b4:	00050793          	mv	a5,a0
    800044b8:	fea698e3          	bne	a3,a0,800044a8 <__mem_alloc+0x70>
    800044bc:	000a0513          	mv	a0,s4
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	1f0080e7          	jalr	496(ra) # 800046b0 <kvmincrease>
    800044c8:	00050793          	mv	a5,a0
    800044cc:	01050513          	addi	a0,a0,16
    800044d0:	07678e63          	beq	a5,s6,8000454c <__mem_alloc+0x114>
    800044d4:	0137a423          	sw	s3,8(a5)
    800044d8:	00000097          	auipc	ra,0x0
    800044dc:	e94080e7          	jalr	-364(ra) # 8000436c <__mem_free>
    800044e0:	000ab783          	ld	a5,0(s5)
    800044e4:	06078463          	beqz	a5,8000454c <__mem_alloc+0x114>
    800044e8:	0007b503          	ld	a0,0(a5)
    800044ec:	00078693          	mv	a3,a5
    800044f0:	00852703          	lw	a4,8(a0)
    800044f4:	fc9760e3          	bltu	a4,s1,800044b4 <__mem_alloc+0x7c>
    800044f8:	08e48263          	beq	s1,a4,8000457c <__mem_alloc+0x144>
    800044fc:	4127073b          	subw	a4,a4,s2
    80004500:	02071693          	slli	a3,a4,0x20
    80004504:	01c6d693          	srli	a3,a3,0x1c
    80004508:	00e52423          	sw	a4,8(a0)
    8000450c:	00d50533          	add	a0,a0,a3
    80004510:	01252423          	sw	s2,8(a0)
    80004514:	00fab023          	sd	a5,0(s5)
    80004518:	01050513          	addi	a0,a0,16
    8000451c:	03813083          	ld	ra,56(sp)
    80004520:	03013403          	ld	s0,48(sp)
    80004524:	02813483          	ld	s1,40(sp)
    80004528:	02013903          	ld	s2,32(sp)
    8000452c:	01813983          	ld	s3,24(sp)
    80004530:	01013a03          	ld	s4,16(sp)
    80004534:	00813a83          	ld	s5,8(sp)
    80004538:	00013b03          	ld	s6,0(sp)
    8000453c:	04010113          	addi	sp,sp,64
    80004540:	00008067          	ret
    80004544:	000019b7          	lui	s3,0x1
    80004548:	f51ff06f          	j	80004498 <__mem_alloc+0x60>
    8000454c:	00000513          	li	a0,0
    80004550:	fcdff06f          	j	8000451c <__mem_alloc+0xe4>
    80004554:	00002797          	auipc	a5,0x2
    80004558:	79c78793          	addi	a5,a5,1948 # 80006cf0 <base>
    8000455c:	00078513          	mv	a0,a5
    80004560:	00fab023          	sd	a5,0(s5)
    80004564:	00f7b023          	sd	a5,0(a5)
    80004568:	00000713          	li	a4,0
    8000456c:	00002797          	auipc	a5,0x2
    80004570:	7807a623          	sw	zero,1932(a5) # 80006cf8 <base+0x8>
    80004574:	00050693          	mv	a3,a0
    80004578:	f11ff06f          	j	80004488 <__mem_alloc+0x50>
    8000457c:	00053703          	ld	a4,0(a0)
    80004580:	00e7b023          	sd	a4,0(a5)
    80004584:	f91ff06f          	j	80004514 <__mem_alloc+0xdc>
    80004588:	00068793          	mv	a5,a3
    8000458c:	f6dff06f          	j	800044f8 <__mem_alloc+0xc0>

0000000080004590 <__putc>:
    80004590:	fe010113          	addi	sp,sp,-32
    80004594:	00813823          	sd	s0,16(sp)
    80004598:	00113c23          	sd	ra,24(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	00050793          	mv	a5,a0
    800045a4:	fef40593          	addi	a1,s0,-17
    800045a8:	00100613          	li	a2,1
    800045ac:	00000513          	li	a0,0
    800045b0:	fef407a3          	sb	a5,-17(s0)
    800045b4:	fffff097          	auipc	ra,0xfffff
    800045b8:	918080e7          	jalr	-1768(ra) # 80002ecc <console_write>
    800045bc:	01813083          	ld	ra,24(sp)
    800045c0:	01013403          	ld	s0,16(sp)
    800045c4:	02010113          	addi	sp,sp,32
    800045c8:	00008067          	ret

00000000800045cc <__getc>:
    800045cc:	fe010113          	addi	sp,sp,-32
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00113c23          	sd	ra,24(sp)
    800045d8:	02010413          	addi	s0,sp,32
    800045dc:	fe840593          	addi	a1,s0,-24
    800045e0:	00100613          	li	a2,1
    800045e4:	00000513          	li	a0,0
    800045e8:	fffff097          	auipc	ra,0xfffff
    800045ec:	8c4080e7          	jalr	-1852(ra) # 80002eac <console_read>
    800045f0:	fe844503          	lbu	a0,-24(s0)
    800045f4:	01813083          	ld	ra,24(sp)
    800045f8:	01013403          	ld	s0,16(sp)
    800045fc:	02010113          	addi	sp,sp,32
    80004600:	00008067          	ret

0000000080004604 <console_handler>:
    80004604:	fe010113          	addi	sp,sp,-32
    80004608:	00813823          	sd	s0,16(sp)
    8000460c:	00113c23          	sd	ra,24(sp)
    80004610:	00913423          	sd	s1,8(sp)
    80004614:	02010413          	addi	s0,sp,32
    80004618:	14202773          	csrr	a4,scause
    8000461c:	100027f3          	csrr	a5,sstatus
    80004620:	0027f793          	andi	a5,a5,2
    80004624:	06079e63          	bnez	a5,800046a0 <console_handler+0x9c>
    80004628:	00074c63          	bltz	a4,80004640 <console_handler+0x3c>
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	02010113          	addi	sp,sp,32
    8000463c:	00008067          	ret
    80004640:	0ff77713          	andi	a4,a4,255
    80004644:	00900793          	li	a5,9
    80004648:	fef712e3          	bne	a4,a5,8000462c <console_handler+0x28>
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	4b8080e7          	jalr	1208(ra) # 80002b04 <plic_claim>
    80004654:	00a00793          	li	a5,10
    80004658:	00050493          	mv	s1,a0
    8000465c:	02f50c63          	beq	a0,a5,80004694 <console_handler+0x90>
    80004660:	fc0506e3          	beqz	a0,8000462c <console_handler+0x28>
    80004664:	00050593          	mv	a1,a0
    80004668:	00001517          	auipc	a0,0x1
    8000466c:	bc050513          	addi	a0,a0,-1088 # 80005228 <_ZZ8printHexmE9hexDigits+0xe8>
    80004670:	fffff097          	auipc	ra,0xfffff
    80004674:	8d8080e7          	jalr	-1832(ra) # 80002f48 <__printf>
    80004678:	01013403          	ld	s0,16(sp)
    8000467c:	01813083          	ld	ra,24(sp)
    80004680:	00048513          	mv	a0,s1
    80004684:	00813483          	ld	s1,8(sp)
    80004688:	02010113          	addi	sp,sp,32
    8000468c:	ffffe317          	auipc	t1,0xffffe
    80004690:	4b030067          	jr	1200(t1) # 80002b3c <plic_complete>
    80004694:	fffff097          	auipc	ra,0xfffff
    80004698:	1bc080e7          	jalr	444(ra) # 80003850 <uartintr>
    8000469c:	fddff06f          	j	80004678 <console_handler+0x74>
    800046a0:	00001517          	auipc	a0,0x1
    800046a4:	c8850513          	addi	a0,a0,-888 # 80005328 <digits+0x78>
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	844080e7          	jalr	-1980(ra) # 80002eec <panic>

00000000800046b0 <kvmincrease>:
    800046b0:	fe010113          	addi	sp,sp,-32
    800046b4:	01213023          	sd	s2,0(sp)
    800046b8:	00001937          	lui	s2,0x1
    800046bc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800046c0:	00813823          	sd	s0,16(sp)
    800046c4:	00113c23          	sd	ra,24(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	02010413          	addi	s0,sp,32
    800046d0:	01250933          	add	s2,a0,s2
    800046d4:	00c95913          	srli	s2,s2,0xc
    800046d8:	02090863          	beqz	s2,80004708 <kvmincrease+0x58>
    800046dc:	00000493          	li	s1,0
    800046e0:	00148493          	addi	s1,s1,1
    800046e4:	fffff097          	auipc	ra,0xfffff
    800046e8:	4bc080e7          	jalr	1212(ra) # 80003ba0 <kalloc>
    800046ec:	fe991ae3          	bne	s2,s1,800046e0 <kvmincrease+0x30>
    800046f0:	01813083          	ld	ra,24(sp)
    800046f4:	01013403          	ld	s0,16(sp)
    800046f8:	00813483          	ld	s1,8(sp)
    800046fc:	00013903          	ld	s2,0(sp)
    80004700:	02010113          	addi	sp,sp,32
    80004704:	00008067          	ret
    80004708:	01813083          	ld	ra,24(sp)
    8000470c:	01013403          	ld	s0,16(sp)
    80004710:	00813483          	ld	s1,8(sp)
    80004714:	00013903          	ld	s2,0(sp)
    80004718:	00000513          	li	a0,0
    8000471c:	02010113          	addi	sp,sp,32
    80004720:	00008067          	ret
	...
