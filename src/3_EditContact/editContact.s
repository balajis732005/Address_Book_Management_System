	.file	"editContact.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\n[Error] Invalid user name! Please give the valid name again."
	.align 8
.LC1:
	.string	"\n[Error] Phone Number Alreday Exists!"
	.align 8
.LC2:
	.string	"\n[Error] Invalid phone number! Please give the phone number again."
	.align 8
.LC3:
	.string	"\n[Error] Email Id Alreday Exists!"
	.align 8
.LC4:
	.string	"\n[Error] Invalid email id! Please give the email id again."
	.align 8
.LC5:
	.string	"\nContact Updated Successfully!"
	.text
	.globl	editContact
	.type	editContact, @function
editContact:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$3, -80(%rbp)
	je	.L2
	cmpl	$3, -80(%rbp)
	jg	.L3
	cmpl	$1, -80(%rbp)
	je	.L4
	cmpl	$2, -80(%rbp)
	je	.L5
	jmp	.L3
.L4:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserName
	jmp	.L6
.L7:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserName
.L6:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	validateUserName@PLT
	testl	%eax, %eax
	je	.L7
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	jmp	.L3
.L5:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserPhoneNumber
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserPhoneNumber@PLT
	movl	%eax, -56(%rbp)
	jmp	.L9
.L12:
	cmpl	$-1, -56(%rbp)
	jne	.L10
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserPhoneNumber
.L10:
	cmpl	$0, -56(%rbp)
	jne	.L11
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserPhoneNumber
.L11:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserPhoneNumber@PLT
	movl	%eax, -56(%rbp)
.L9:
	cmpl	$-1, -56(%rbp)
	je	.L12
	cmpl	$0, -56(%rbp)
	je	.L12
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$16, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	leaq	15(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	jmp	.L3
.L2:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserEmailId
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserEmailId@PLT
	movl	%eax, -52(%rbp)
	jmp	.L13
.L16:
	cmpl	$-1, -52(%rbp)
	jne	.L14
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserEmailId
.L14:
	cmpl	$0, -52(%rbp)
	jne	.L15
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getUpdatedUserEmailId
.L15:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserEmailId@PLT
	movl	%eax, -52(%rbp)
.L13:
	cmpl	$-1, -52(%rbp)
	je	.L16
	cmpl	$0, -52(%rbp)
	je	.L16
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$32, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	leaq	10(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	nop
.L3:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	displayUpdatedData
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	editContact, .-editContact
	.section	.rodata
.LC6:
	.string	"----------------"
.LC7:
	.string	"Updated Contact:"
.LC8:
	.string	"Name: %s\n"
.LC9:
	.string	"PhoneNumber: %s\n"
.LC10:
	.string	"EmailId: %s\n"
	.text
	.globl	displayUpdatedData
	.type	displayUpdatedData, @function
displayUpdatedData:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$16, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$15, %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	addq	$32, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$10, %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	displayUpdatedData, .-displayUpdatedData
	.section	.rodata
	.align 8
.LC11:
	.string	"\nEnter the new name to update: "
.LC12:
	.string	"%30[^\n]"
	.text
	.globl	getUpdatedUserName
	.type	getUpdatedUserName, @function
getUpdatedUserName:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	getUpdatedUserName, .-getUpdatedUserName
	.section	.rodata
	.align 8
.LC13:
	.string	"\nEnter the new phone number to update: "
.LC14:
	.string	"%10[^\n]"
	.text
	.globl	getUpdatedUserPhoneNumber
	.type	getUpdatedUserPhoneNumber, @function
getUpdatedUserPhoneNumber:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getUpdatedUserPhoneNumber, .-getUpdatedUserPhoneNumber
	.section	.rodata
	.align 8
.LC15:
	.string	"\nEnter the new email id to update: "
.LC16:
	.string	"%50[^\n]"
	.text
	.globl	getUpdatedUserEmailId
	.type	getUpdatedUserEmailId, @function
getUpdatedUserEmailId:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	getUpdatedUserEmailId, .-getUpdatedUserEmailId
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
