	.file	"Fibonacci.cpp"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0_zcd1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.srodata,"a"
	.align	2
	.type	_ZL12GLOBAL_CONST, @object
	.size	_ZL12GLOBAL_CONST, 4
_ZL12GLOBAL_CONST:
	.word	5
	.globl	global_var
	.section	.sdata,"aw"
	.align	2
	.type	global_var, @object
	.size	global_var, 4
global_var:
	.word	10
	.section	.rodata
	.align	3
.LC0:
	.base64	"6K+36L6T5YWl5paQ5rOi6YKj5aWR6aG55pWw77yIMS0A"
	.align	3
.LC1:
	.base64	"77yJ77yaAA=="
	.align	3
.LC2:
	.base64	"56ysAA=="
	.align	3
.LC3:
	.base64	"6aG577yaAA=="
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1957:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	li	a5,1
	sw	a5,-28(s0)
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a5,a0
	li	a1,20
	mv	a0,a5
	call	_ZNSolsEi
	mv	a4,a0
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addi	a5,s0,-40
	mv	a1,a5
	lui	a5,%hi(_ZSt3cin)
	addi	a0,a5,%lo(_ZSt3cin)
	call	_ZNSirsERi
	lw	a5,-40(s0)
	bgt	a5,zero,.L2
	li	a5,5
	sw	a5,-40(s0)
	j	.L3
.L2:
	lw	a4,-40(s0)
	li	a5,20
	ble	a4,a5,.L3
	li	a5,20
	sw	a5,-40(s0)
.L3:
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lw	a5,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a4,a0
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lw	a5,-20(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	lui	a5,%hi(global_var)
	lw	a5,%lo(global_var)(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lui	a5,%hi(global_var)
	sw	a4,%lo(global_var)(a5)
	lw	a4,-40(s0)
	li	a5,1
	ble	a4,a5,.L5
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lw	a5,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a4,a0
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lw	a5,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	j	.L5
.L6:
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lw	a5,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a4,a0
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lw	a5,-24(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	lui	a5,%hi(global_var)
	lw	a5,%lo(global_var)(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lui	a5,%hi(global_var)
	sw	a4,%lo(global_var)(a5)
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sw	a5,-36(s0)
.L5:
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	sext.w	a4,a4
	blt	a4,a5,.L6
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1957:
	.size	main, .-main
	.ident	"GCC: (g1b306039ac4) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
