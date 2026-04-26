	.file	"searchContact.c"
	.text
	.section	.rodata
.LC0:
	.string	"------------------------"
.LC1:
	.string	"Selected Search By Name:"
	.align 8
.LC2:
	.string	"\nEnter the user name to search: "
.LC3:
	.string	"%30[^\n]"
	.align 8
.LC4:
	.string	"--------------------------------"
	.align 8
.LC5:
	.string	"Selected Search By Phone Number:"
	.align 8
.LC6:
	.string	"\nEnter the phone number to search: "
.LC7:
	.string	"%10[^\n]"
.LC8:
	.string	"----------------------------"
.LC9:
	.string	"Selected Search By Email ID:"
	.align 8
.LC10:
	.string	"\nEnter the email id to search: "
.LC11:
	.string	"%50[^\n]"
	.text
	.globl	searchContact
	.type	searchContact, @function
searchContact:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$-1, -68(%rbp)
	cmpl	$3, -92(%rbp)
	je	.L2
	cmpl	$3, -92(%rbp)
	jg	.L3
	cmpl	$1, -92(%rbp)
	je	.L4
	cmpl	$2, -92(%rbp)
	je	.L5
	jmp	.L3
.L4:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	searchByName
	movl	%eax, -68(%rbp)
	cmpl	$-2, -68(%rbp)
	jne	.L11
	leaq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L11
.L5:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	searchByPhoneNumber
	movl	%eax, -68(%rbp)
	jmp	.L8
.L2:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	searchByEmailId
	movl	%eax, -68(%rbp)
	jmp	.L8
.L3:
	movl	$-3, -68(%rbp)
	jmp	.L8
.L11:
	nop
.L8:
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	searchContact, .-searchContact
	.section	.rodata
.LC12:
	.string	"-----------------------------"
	.align 8
.LC13:
	.string	"Result of Serached by name as \"%s\":\n"
.LC14:
	.string	"\nContact %d:\n"
.LC15:
	.string	"Name: %s\n"
.LC16:
	.string	"PhoneNumber: %s\n"
.LC17:
	.string	"EmailId: %s\n"
	.align 8
.LC18:
	.string	"\n[Result] No Match Found with this name"
	.text
	.globl	searchByName
	.type	searchByName, @function
searchByName:
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
	movq	%rsi, -32(%rbp)
	movl	$0, -16(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -12(%rbp)
	movl	$-1, -8(%rbp)
	jmp	.L13
.L15:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L14
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
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
	addq	$15, %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
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
	addq	$10, %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
.L14:
	addl	$1, -16(%rbp)
.L13:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L15
	cmpl	$0, -12(%rbp)
	jne	.L16
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L17
.L16:
	cmpl	$1, -12(%rbp)
	jne	.L18
	movl	-8(%rbp), %eax
	jmp	.L17
.L18:
	movl	$-2, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	searchByName, .-searchByName
	.section	.rodata
	.align 8
.LC19:
	.string	"-------------------------------------"
	.align 8
.LC20:
	.string	"Result of Serached by phone number as \"%s\":\n"
	.align 8
.LC21:
	.string	"\n[Result] No Match Found with this phone number"
	.text
	.globl	searchByPhoneNumber
	.type	searchByPhoneNumber, @function
searchByPhoneNumber:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L20
.L23:
	movl	-8(%rbp), %eax
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
	leaq	15(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L21
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
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
	addq	$15, %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
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
	addq	$10, %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L22
.L21:
	addl	$1, -8(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L23
.L22:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L24
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L25
.L24:
	movl	-8(%rbp), %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	searchByPhoneNumber, .-searchByPhoneNumber
	.section	.rodata
	.align 8
.LC22:
	.string	"---------------------------------"
	.align 8
.LC23:
	.string	"Result of Seaached by email id as \"%s\":\n"
	.align 8
.LC24:
	.string	"\n[Result] No Match Found with this email"
	.text
	.globl	searchByEmailId
	.type	searchByEmailId, @function
searchByEmailId:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L27
.L30:
	movl	-8(%rbp), %eax
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
	leaq	10(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L28
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
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
	addq	$15, %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
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
	addq	$10, %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L29
.L28:
	addl	$1, -8(%rbp)
.L27:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L30
.L29:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L31
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L32
.L31:
	movl	-8(%rbp), %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	searchByEmailId, .-searchByEmailId
	.globl	findNthIndexOfName
	.type	findNthIndexOfName, @function
findNthIndexOfName:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L34
.L38:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L35
	addl	$1, -12(%rbp)
.L35:
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L36
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L37
.L36:
	addl	$1, -16(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L38
.L37:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	findNthIndexOfName, .-findNthIndexOfName
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
