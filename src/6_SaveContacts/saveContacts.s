	.file	"saveContacts.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"contacts/contacts.csv"
	.align 8
.LC2:
	.string	"\n----Error opening contacts.csv file----\n"
.LC3:
	.string	"Total Contacts,%d\n"
.LC4:
	.string	"Name,PhoneNumber,EmailID\n"
.LC5:
	.string	"%[^,],%[^,],%s\n"
	.text
	.globl	loadContacts
	.type	loadContacts, @function
loadContacts:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	jmp	.L1
.L2:
	movq	-24(%rbp), %rax
	leaq	9300(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$32, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	10(%rax), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$16, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	15(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	addl	$1, -12(%rbp)
.L4:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	loadContacts, .-loadContacts
	.section	.rodata
.LC6:
	.string	"w"
.LC7:
	.string	"%s,%s,%s\n"
	.text
	.globl	saveContacts
	.type	saveContacts, @function
saveContacts:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	9300(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$32, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	10(%rax), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$16, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	15(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	saveContacts, .-saveContacts
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
