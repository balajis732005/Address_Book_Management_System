	.file	"deleteContact.c"
	.text
	.section	.rodata
.LC0:
	.string	"-----------------------------"
.LC1:
	.string	"Contact Deleted Successfully!"
	.text
	.globl	deleteContact
	.type	deleteContact, @function
deleteContact:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	leal	1(%rax), %edi
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	-40(%rbp), %rsi
	movslq	%edi, %rcx
	movq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	subq	%rdx, %rcx
	leaq	(%rsi,%rcx), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	77(%rdx), %rcx
	movq	85(%rdx), %rbx
	movq	%rcx, 77(%rax)
	movq	%rbx, 85(%rax)
	addl	$1, -20(%rbp)
.L2:
	movq	-40(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L3
	movq	-40(%rbp), %rax
	movl	9300(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 9300(%rax)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	deleteContact, .-deleteContact
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
