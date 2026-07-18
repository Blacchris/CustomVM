	.file	"VM.cpp"
	.text
	.section	.text$_ZN2VM9executionEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2VM9executionEv
	.def	_ZN2VM9executionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2VM9executionEv
_ZN2VM9executionEv:
.LFB2584:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L11:
	movq	16(%rbp), %rcx
	movq	16(%rbp), %rax
	movl	48(%rax), %eax
	leal	1(%rax), %r8d
	movq	16(%rbp), %rdx
	movl	%r8d, 48(%rdx)
	movl	%eax, %edx
	call	_ZN6VectorIhEixEi
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	cmpl	$6, %eax
	je	.L12
	cmpl	$6, %eax
	jg	.L11
	cmpl	$5, %eax
	je	.L4
	cmpl	$5, %eax
	jg	.L11
	cmpl	$4, %eax
	je	.L5
	cmpl	$4, %eax
	jg	.L11
	cmpl	$3, %eax
	je	.L6
	cmpl	$3, %eax
	jg	.L11
	cmpl	$2, %eax
	je	.L7
	cmpl	$2, %eax
	jg	.L11
	testl	%eax, %eax
	je	.L8
	cmpl	$1, %eax
	je	.L9
	jmp	.L3
.L8:
	movq	16(%rbp), %rcx
	movq	16(%rbp), %rax
	movl	48(%rax), %eax
	leal	1(%rax), %r8d
	movq	16(%rbp), %rdx
	movl	%r8d, 48(%rdx)
	movl	%eax, %edx
	call	_ZN6VectorIhEixEi
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	movq	16(%rbp), %rax
	leaq	24(%rax), %rcx
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	call	_ZN5StackIiE4pushEi
	jmp	.L3
.L6:
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -24(%rbp)
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -28(%rbp)
	movq	16(%rbp), %rax
	leaq	24(%rax), %rcx
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	call	_ZN5StackIiE4pushEi
	jmp	.L3
.L9:
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -32(%rbp)
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -36(%rbp)
	movq	16(%rbp), %rax
	addq	$24, %rax
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	addl	%ecx, %edx
	movq	%rax, %rcx
	call	_ZN5StackIiE4pushEi
	jmp	.L3
.L5:
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -16(%rbp)
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -20(%rbp)
	movq	16(%rbp), %rax
	leaq	24(%rax), %rcx
	movl	-20(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%eax, %edx
	call	_ZN5StackIiE4pushEi
	jmp	.L3
.L4:
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -8(%rbp)
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, -12(%rbp)
	movq	16(%rbp), %rax
	leaq	24(%rax), %rcx
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	call	_ZN5StackIiE4pushEi
	jmp	.L3
.L7:
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiE3popEv
	movl	%eax, %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	nop
.L3:
	jmp	.L11
.L12:
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5StackIiED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5StackIiED1Ev
	.def	_ZN5StackIiED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5StackIiED1Ev
_ZN5StackIiED1Ev:
.LFB2588:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN2VMC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2VMC1Ev
	.def	_ZN2VMC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2VMC1Ev
_ZN2VMC1Ev:
.LFB2590:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhEC1Ev
	movq	32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZN5StackIiEC1Ev
.LEHE0:
	movq	32(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L17
.L16:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
.L17:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2590:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2590-.LLSDACSB2590
.LLSDACSB2590:
	.uleb128 .LEHB0-.LFB2590
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L16-.LFB2590
	.uleb128 0
	.uleb128 .LEHB1-.LFB2590
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2590:
	.section	.text$_ZN2VMC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2VM4loadE6VectorIhE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2VM4loadE6VectorIhE
	.def	_ZN2VM4loadE6VectorIhE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2VM4loadE6VectorIhE
_ZN2VM4loadE6VectorIhE:
.LFB2591:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L19
.L20:
	movq	32(%rbp), %rbx
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhEixEi
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZN6VectorIhE9push_backEh
	addq	$1, -8(%rbp)
.L19:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhE4sizeEv
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L20
	movq	32(%rbp), %rax
	movl	$0, 48(%rax)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN2VM3runEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2VM3runEv
	.def	_ZN2VM3runEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2VM3runEv
_ZN2VM3runEv:
.LFB2592:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2VM9executionEv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN2VMD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2VMD1Ev
	.def	_ZN2VMD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2VMD1Ev
_ZN2VMD1Ev:
.LFB2596:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZN5StackIiED1Ev
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii " bytes\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2593:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	leaq	160(%rsp), %rbp
	.seh_setframe	%rbp, 160
	.seh_endprologue
	call	__main
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB2:
	call	_ZN2VMC1Ev
.LEHE2:
	movq	.refptr._ZSt4cout(%rip), %rax
	movl	$56, %edx
	movq	%rax, %rcx
.LEHB3:
	call	_ZNSolsEy
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
.LEHE3:
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhEC1Ev
	leaq	-128(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
.LEHB4:
	call	_ZN6VectorIhE9push_backEh
	leaq	-128(%rbp), %rax
	movl	$25, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIhE9push_backEh
	leaq	-128(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIhE9push_backEh
	leaq	-128(%rbp), %rax
	movl	$25, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIhE9push_backEh
	leaq	-128(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIhE9push_backEh
	leaq	-128(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIhE9push_backEh
	leaq	-128(%rbp), %rax
	movl	$6, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIhE9push_backEh
.LEHE4:
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB5:
	call	_ZN2VM4loadE6VectorIhE
.LEHE5:
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhED1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
.LEHB6:
	call	_ZN2VM3runEv
.LEHE6:
	movl	$0, %ebx
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhED1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2VMD1Ev
	movl	%ebx, %eax
	jmp	.L31
.L30:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhED1Ev
	jmp	.L26
.L29:
	movq	%rax, %rbx
.L26:
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhED1Ev
	jmp	.L27
.L28:
	movq	%rax, %rbx
.L27:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2VMD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L31:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2593:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2593-.LLSDACSB2593
.LLSDACSB2593:
	.uleb128 .LEHB2-.LFB2593
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2593
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L28-.LFB2593
	.uleb128 0
	.uleb128 .LEHB4-.LFB2593
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L29-.LFB2593
	.uleb128 0
	.uleb128 .LEHB5-.LFB2593
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L30-.LFB2593
	.uleb128 0
	.uleb128 .LEHB6-.LFB2593
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L29-.LFB2593
	.uleb128 0
	.uleb128 .LEHB7-.LFB2593
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2593:
	.text
	.seh_endproc
	.section	.text$_ZN6VectorIhEixEi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIhEixEi
	.def	_ZN6VectorIhEixEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIhEixEi
_ZN6VectorIhEixEi:
.LFB2898:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movl	24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5StackIiE4pushEi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5StackIiE4pushEi
	.def	_ZN5StackIiE4pushEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5StackIiE4pushEi
_ZN5StackIiE4pushEi:
.LFB2899:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiE9push_backEi
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "stack underflow\0"
	.section	.text$_ZN5StackIiE3popEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5StackIiE3popEv
	.def	_ZN5StackIiE3popEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5StackIiE3popEv
_ZN5StackIiE3popEv:
.LFB2900:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB8:
	call	_ZN5StackIiE7isEmptyEv
.LEHE8:
	testb	%al, %al
	je	.L36
	movl	$16, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rbx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB9:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE9:
	movq	.refptr._ZNSt13runtime_errorD1Ev(%rip), %rdx
	leaq	_ZTISt13runtime_error(%rip), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB10:
	call	__cxa_throw
.L36:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiE8pop_backEv
	jmp	.L40
.L39:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	call	__cxa_free_exception
	movq	%rsi, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE10:
.L40:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2900:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2900-.LLSDACSB2900
.LLSDACSB2900:
	.uleb128 .LEHB8-.LFB2900
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2900
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L39-.LFB2900
	.uleb128 0
	.uleb128 .LEHB10-.LFB2900
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2900:
	.section	.text$_ZN5StackIiE3popEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN6VectorIhEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIhEC1Ev
	.def	_ZN6VectorIhEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIhEC1Ev
_ZN6VectorIhEC1Ev:
.LFB2905:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIhED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIhED1Ev
	.def	_ZN6VectorIhED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIhED1Ev
_ZN6VectorIhED1Ev:
.LFB2908:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L44:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5StackIiEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5StackIiEC1Ev
	.def	_ZN5StackIiEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5StackIiEC1Ev
_ZN5StackIiEC1Ev:
.LFB2911:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIiED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiED1Ev
	.def	_ZN6VectorIiED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiED1Ev
_ZN6VectorIiED1Ev:
.LFB2914:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L48:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIhE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIhE4sizeEv
	.def	_ZN6VectorIhE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIhE4sizeEv
_ZN6VectorIhE4sizeEv:
.LFB2915:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIhE9push_backEh,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIhE9push_backEh
	.def	_ZN6VectorIhE9push_backEh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIhE9push_backEh
_ZN6VectorIhE9push_backEh:
.LFB2916:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L52
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIhE6resizeEv
.L52:
	movzbl	24(%rbp), %edx
	movq	16(%rbp), %rax
	movq	(%rax), %r9
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %r8
	movq	16(%rbp), %rcx
	movq	%r8, 8(%rcx)
	addq	%r9, %rax
	movb	%dl, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIiE9push_backEi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE9push_backEi
	.def	_ZN6VectorIiE9push_backEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE9push_backEi
_ZN6VectorIiE9push_backEi:
.LFB3038:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L54
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiE6resizeEv
.L54:
	movl	24(%rbp), %edx
	movq	16(%rbp), %rax
	movq	(%rax), %r9
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %r8
	movq	16(%rbp), %rcx
	movq	%r8, 8(%rcx)
	salq	$2, %rax
	addq	%r9, %rax
	movl	%edx, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5StackIiE7isEmptyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5StackIiE7isEmptyEv
	.def	_ZN5StackIiE7isEmptyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5StackIiE7isEmptyEv
_ZN5StackIiE7isEmptyEv:
.LFB3039:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiE4sizeEv
	testq	%rax, %rax
	sete	%al
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "pop_back on empty Vector\0"
	.section	.text$_ZN6VectorIiE8pop_backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE8pop_backEv
	.def	_ZN6VectorIiE8pop_backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE8pop_backEv
_ZN6VectorIiE8pop_backEv:
.LFB3040:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movl	$16, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rbx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB11:
	call	_ZNSt12out_of_rangeC1EPKc
.LEHE11:
	movq	.refptr._ZNSt12out_of_rangeD1Ev(%rip), %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB12:
	call	__cxa_throw
.L58:
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-4(%rbp), %eax
	jmp	.L62
.L61:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	call	__cxa_free_exception
	movq	%rsi, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE12:
.L62:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3040:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3040-.LLSDACSB3040
.LLSDACSB3040:
	.uleb128 .LEHB11-.LFB3040
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L61-.LFB3040
	.uleb128 0
	.uleb128 .LEHB12-.LFB3040
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE3040:
	.section	.text$_ZN6VectorIiE8pop_backEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN6VectorIiEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiEC1Ev
	.def	_ZN6VectorIiEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiEC1Ev
_ZN6VectorIiEC1Ev:
.LFB3045:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIhE6resizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIhE6resizeEv
	.def	_ZN6VectorIhE6resizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIhE6resizeEv
_ZN6VectorIhE6resizeEv:
.LFB3046:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	jmp	.L66
.L65:
	movq	$1, -8(%rbp)
.L66:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L67
.L68:
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -16(%rbp)
.L67:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L68
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L69:
	movq	16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIiE6resizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE6resizeEv
	.def	_ZN6VectorIiE6resizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE6resizeEv
_ZN6VectorIiE6resizeEv:
.LFB3126:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	jmp	.L72
.L71:
	movq	$1, -8(%rbp)
.L72:
	movq	-8(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L73
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L75
.L73:
	call	__cxa_throw_bad_array_new_length
.L76:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -16(%rbp)
.L75:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L76
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L77:
	movq	16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN6VectorIiE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE4sizeEv
	.def	_ZN6VectorIiE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE4sizeEv
_ZN6VectorIiE4sizeEv:
.LFB3127:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZTISt13runtime_error
	.section	.rdata$_ZTISt13runtime_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt13runtime_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt13runtime_error
	.quad	_ZTISt9exception
	.globl	_ZTSSt13runtime_error
	.section	.rdata$_ZTSSt13runtime_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt13runtime_error:
	.ascii "St13runtime_error\0"
	.globl	_ZTISt12out_of_range
	.section	.rdata$_ZTISt12out_of_range,"dr"
	.linkonce same_size
	.align 8
_ZTISt12out_of_range:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12out_of_range
	.quad	_ZTISt11logic_error
	.globl	_ZTSSt12out_of_range
	.section	.rdata$_ZTSSt12out_of_range,"dr"
	.linkonce same_size
	.align 16
_ZTSSt12out_of_range:
	.ascii "St12out_of_range\0"
	.globl	_ZTISt11logic_error
	.section	.rdata$_ZTISt11logic_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception
	.globl	_ZTSSt11logic_error
	.section	.rdata$_ZTSSt11logic_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt11logic_error:
	.ascii "St11logic_error\0"
	.globl	_ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception
	.globl	_ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9exception:
	.ascii "St9exception\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r2) 15.2.0"
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEy;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt12out_of_rangeC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt12out_of_rangeD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt12out_of_rangeD1Ev
	.linkonce	discard
.refptr._ZNSt12out_of_rangeD1Ev:
	.quad	_ZNSt12out_of_rangeD1Ev
	.section	.rdata$.refptr._ZNSt13runtime_errorD1Ev, "dr"
	.p2align	3, 0
	.globl	.refptr._ZNSt13runtime_errorD1Ev
	.linkonce	discard
.refptr._ZNSt13runtime_errorD1Ev:
	.quad	_ZNSt13runtime_errorD1Ev
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
