	.text
	.file	"Fibonacci.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -8(%rbp)
	movl	$1, -4(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movl	$20, %esi
	callq	_ZNSolsEi@PLT
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	leaq	-12(%rbp), %rsi
	callq	_ZNSirsERi@PLT
	cmpl	$0, -12(%rbp)
	jg	.LBB1_2
# %bb.1:
	movl	$5, -12(%rbp)
	jmp	.LBB1_5
.LBB1_2:
	cmpl	$20, -12(%rbp)
	jle	.LBB1_4
# %bb.3:
	movl	$20, -12(%rbp)
.LBB1_4:
	jmp	.LBB1_5
.LBB1_5:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.2, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	global_var, %eax
	addl	$1, %eax
	movl	%eax, global_var
	cmpl	$1, -12(%rbp)
	jle	.LBB1_7
# %bb.6:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.2, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-8(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
.LBB1_7:
	jmp	.LBB1_8
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movabsq	$.L.str.2, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-8(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E@PLT
	movl	global_var, %eax
	addl	$1, %eax
	movl	%eax, global_var
	movl	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_8
.LBB1_10:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_Fibonacci.cpp
	.type	_GLOBAL__sub_I_Fibonacci.cpp,@function
_GLOBAL__sub_I_Fibonacci.cpp:           # @_GLOBAL__sub_I_Fibonacci.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_GLOBAL__sub_I_Fibonacci.cpp, .Lfunc_end2-_GLOBAL__sub_I_Fibonacci.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	global_var,@object              # @global_var
	.data
	.globl	global_var
	.p2align	2
global_var:
	.long	10                              # 0xa
	.size	global_var, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\350\257\267\350\276\223\345\205\245\346\226\220\346\263\242\351\202\243\345\245\221\351\241\271\346\225\260\357\274\2101-"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\357\274\211\357\274\232"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\347\254\254"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\351\241\271\357\274\232"
	.size	.L.str.3, 7

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_Fibonacci.cpp
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
