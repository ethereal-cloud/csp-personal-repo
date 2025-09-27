	.file	"Fibonacci.cpp"
	.option pic
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	2
	.type	_ZL12GLOBAL_CONST, @object
	.size	_ZL12GLOBAL_CONST, 4
_ZL12GLOBAL_CONST:
	.word	5
	.globl	global_var
	.data
	.align	2
	.type	global_var, @object
	.size	global_var, 4
global_var:
	.word	10
	.section	.rodata
	.align	3
.LC0:
	.string	"\350\257\267\350\276\223\345\205\245\346\226\220\346\263\242\351\202\243\345\245\221\351\241\271\346\225\260\357\274\2101-"
	.align	3
.LC1:
	.string	"\357\274\211\357\274\232"
	.align	3
.LC2:
	.string	"\347\254\254"
	.align	3
.LC3:
	.string	"\351\241\271\357\274\232"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1727:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-44(s0)
	li	a5,1
	sw	a5,-40(s0)
	li	a5,1
	sw	a5,-36(s0)
	lla	a1,.LC0
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a5,a0
	li	a1,20
	mv	a0,a5
	call	_ZNSolsEi@plt
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	addi	a5,s0,-48
	mv	a1,a5
	la	a0,_ZSt3cin
	call	_ZNSirsERi@plt
	lw	a5,-48(s0)
	bgt	a5,zero,.L2
	li	a5,5
	sw	a5,-48(s0)
	j	.L3
.L2:
	lw	a5,-48(s0)
	mv	a4,a5
	li	a5,20
	ble	a4,a5,.L3
	li	a5,20
	sw	a5,-48(s0)
.L3:
	lla	a1,.LC2
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a4,a0
	lw	a5,-36(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi@plt
	mv	a5,a0
	lla	a1,.LC3
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a4,a0
	lw	a5,-44(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	lla	a5,global_var
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,global_var
	sw	a4,0(a5)
	lw	a5,-48(s0)
	mv	a4,a5
	li	a5,1
	ble	a4,a5,.L5
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	lla	a1,.LC2
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a4,a0
	lw	a5,-36(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi@plt
	mv	a5,a0
	lla	a1,.LC3
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a4,a0
	lw	a5,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	j	.L5
.L6:
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-32(s0)
	sw	a5,-44(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	lla	a1,.LC2
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a4,a0
	lw	a5,-36(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi@plt
	mv	a5,a0
	lla	a1,.LC3
	mv	a0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a4,a0
	lw	a5,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEi@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	lla	a5,global_var
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,global_var
	sw	a4,0(a5)
	lw	a5,-40(s0)
	mulw	a5,a5,a5
	sw	a5,-28(s0)
.L5:
	lw	a4,-48(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L6
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	mv	a0,a4
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1727:
	.size	main, .-main
	.align	1
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2230:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L11
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,65536
	addi	a5,a5,-1
	bne	a4,a5,.L11
	lla	a0,_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev@plt
	lla	a2,__dso_handle
	lla	a1,_ZStL8__ioinit
	la	a0,_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit@plt
.L11:
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2230:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	1
	.type	_GLOBAL__sub_I_global_var, @function
_GLOBAL__sub_I_global_var:
.LFB2231:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,65536
	addi	a1,a5,-1
	li	a0,1
	call	_Z41__static_initialization_and_destruction_0ii
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2231:
	.size	_GLOBAL__sub_I_global_var, .-_GLOBAL__sub_I_global_var
	.section	.init_array,"aw"
	.align	3
	.dword	_GLOBAL__sub_I_global_var
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
