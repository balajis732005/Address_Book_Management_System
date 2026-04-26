	.file	"createContact.c"
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
	.string	"------------------------------"
	.align 8
.LC6:
	.string	"Contact Created Successfully!!"
	.text
	.globl	createContact
	.type	createContact, @function
createContact:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	getUserName
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	getUserName
.L2:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	validateUserName
	testl	%eax, %eax
	je	.L3
	leaq	-123(%rbp), %rax
	movq	%rax, %rdi
	call	getUserPhoneNumber
	movq	-248(%rbp), %rdx
	leaq	-123(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserPhoneNumber
	movl	%eax, -232(%rbp)
	jmp	.L4
.L7:
	cmpl	$-1, -232(%rbp)
	jne	.L5
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-123(%rbp), %rax
	movq	%rax, %rdi
	call	getUserPhoneNumber
.L5:
	cmpl	$0, -232(%rbp)
	jne	.L6
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-123(%rbp), %rax
	movq	%rax, %rdi
	call	getUserPhoneNumber
.L6:
	movq	-248(%rbp), %rdx
	leaq	-123(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserPhoneNumber
	movl	%eax, -232(%rbp)
.L4:
	cmpl	$-1, -232(%rbp)
	je	.L7
	cmpl	$0, -232(%rbp)
	je	.L7
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	getUserEmailId
	movq	-248(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserEmailId
	movl	%eax, -228(%rbp)
	jmp	.L8
.L11:
	cmpl	$-1, -228(%rbp)
	jne	.L9
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	getUserEmailId
.L9:
	cmpl	$0, -228(%rbp)
	jne	.L10
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	getUserEmailId
.L10:
	movq	-248(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserEmailId
	movl	%eax, -228(%rbp)
.L8:
	cmpl	$-1, -228(%rbp)
	je	.L11
	cmpl	$0, -228(%rbp)
	je	.L11
	leaq	-112(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-123(%rbp), %rax
	leaq	-224(%rbp), %rdx
	addq	$31, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	leaq	-80(%rbp), %rax
	leaq	-224(%rbp), %rdx
	addq	$42, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movq	-248(%rbp), %rax
	movl	9300(%rax), %eax
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	-147(%rbp), %rcx
	movq	-139(%rbp), %rbx
	movq	%rcx, 77(%rax)
	movq	%rbx, 85(%rax)
	movq	-248(%rbp), %rax
	movl	9300(%rax), %eax
	leal	1(%rax), %edx
	movq	-248(%rbp), %rax
	movl	%edx, 9300(%rax)
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	createContact, .-createContact
	.section	.rodata
	.align 8
.LC7:
	.string	"\nEnter the user name of the contact: "
.LC8:
	.string	"%30[^\n]"
	.text
	.globl	getUserName
	.type	getUserName, @function
getUserName:
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
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
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
.LFE1:
	.size	getUserName, .-getUserName
	.globl	validateUserName
	.type	validateUserName, @function
validateUserName:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L15
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	jle	.L16
.L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L17
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$122, %al
	jg	.L17
.L16:
	movl	$1, %eax
	jmp	.L19
.L17:
	movl	$0, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	validateUserName, .-validateUserName
	.section	.rodata
	.align 8
.LC9:
	.string	"\nEnter the user phone number of the contact: "
.LC10:
	.string	"%10[^\n]"
	.text
	.globl	getUserPhoneNumber
	.type	getUserPhoneNumber, @function
getUserPhoneNumber:
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
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
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
	.size	getUserPhoneNumber, .-getUserPhoneNumber
	.globl	validateUserPhoneNumber
	.type	validateUserPhoneNumber, @function
validateUserPhoneNumber:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -144(%rbp)
	jmp	.L22
.L25:
	movq	-160(%rbp), %rcx
	movl	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	85(%rax), %rdx
	movq	77(%rax), %rax
	movq	%rax, -51(%rbp)
	movq	%rdx, -43(%rbp)
	leaq	-128(%rbp), %rax
	leaq	31(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	jne	.L23
	movl	$-1, %eax
	jmp	.L24
.L23:
	addl	$1, -144(%rbp)
.L22:
	movq	-160(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -144(%rbp)
	jl	.L25
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$9, %rax
	ja	.L26
	movl	$0, %eax
	jmp	.L24
.L26:
	movq	-152(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.L27
.L30:
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L28
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L29
.L28:
	movl	$0, %eax
	jmp	.L24
.L29:
	addq	$1, -136(%rbp)
.L27:
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L30
	movl	$1, %eax
.L24:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	validateUserPhoneNumber, .-validateUserPhoneNumber
	.section	.rodata
	.align 8
.LC11:
	.string	"\nEnter the user email id of the contact: "
.LC12:
	.string	"%50[^\n]"
	.text
	.globl	getUserEmailId
	.type	getUserEmailId, @function
getUserEmailId:
.LFB5:
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
.LFE5:
	.size	getUserEmailId, .-getUserEmailId
	.globl	validateUserEmailId
	.type	validateUserEmailId, @function
validateUserEmailId:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -196(%rbp)
	jmp	.L34
.L37:
	movq	-224(%rbp), %rcx
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -176(%rbp)
	movq	%rbx, -168(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -160(%rbp)
	movq	%rbx, -152(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	85(%rax), %rdx
	movq	77(%rax), %rax
	movq	%rax, -99(%rbp)
	movq	%rdx, -91(%rbp)
	leaq	-176(%rbp), %rax
	leaq	42(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -188(%rbp)
	cmpl	$0, -188(%rbp)
	jne	.L35
	movl	$-1, %eax
	jmp	.L41
.L35:
	addl	$1, -196(%rbp)
.L34:
	movq	-224(%rbp), %rax
	movl	9300(%rax), %eax
	cmpl	%eax, -196(%rbp)
	jl	.L37
	movq	-216(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movw	$11840, -83(%rbp)
	movb	$0, -81(%rbp)
	movl	$0, -192(%rbp)
	leaq	-83(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -184(%rbp)
	jmp	.L38
.L39:
	addl	$1, -192(%rbp)
	leaq	-83(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -184(%rbp)
.L38:
	cmpq	$0, -184(%rbp)
	jne	.L39
	cmpl	$2, -192(%rbp)
	jg	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movl	$1, %eax
.L41:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	validateUserEmailId, .-validateUserEmailId
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
