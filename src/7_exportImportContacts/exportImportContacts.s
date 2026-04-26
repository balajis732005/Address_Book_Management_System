	.file	"exportImportContacts.c"
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
	.string	"w"
	.align 8
.LC4:
	.string	"export_import/exportedContacts.csv"
	.text
	.globl	exportContacts
	.type	exportContacts, @function
exportContacts:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	jmp	.L1
.L2:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L4
.L5:
	movsbl	-17(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc@PLT
.L4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	getc@PLT
	movb	%al, -17(%rbp)
	cmpb	$-1, -17(%rbp)
	jne	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	exportContacts, .-exportContacts
	.section	.rodata
	.align 8
.LC5:
	.string	"Error opening importContacts.csv file"
.LC6:
	.string	"r+"
	.align 8
.LC7:
	.string	"Error opening contacts.csv file"
	.align 8
.LC8:
	.string	"\nStarted Importing Contacts........"
.LC9:
	.string	"Total Contacts,%d\n"
	.align 8
.LC10:
	.string	"[NOT IMPORTED] Invalid Name : %s\n"
	.align 8
.LC11:
	.string	"[NOT IMPORTED] Phone Number Already Exists : %s\n"
	.align 8
.LC12:
	.string	"[NOT IMPORTED] Invalid Phone Number : %s\n"
	.align 8
.LC13:
	.string	"[NOT IMPORTED] EmailID Already Exists : %s\n"
	.align 8
.LC14:
	.string	"[NOT IMPORTED] Invalid EmailID : %s\n"
.LC15:
	.string	"%s,%s,%s\n"
.LC16:
	.string	"%[^,],%[^,],%s\n"
.LC17:
	.string	"\nImported %d Contacts!\n\n"
	.text
	.globl	importContacts
	.type	importContacts, @function
importContacts:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L7
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	jmp	.L6
.L7:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L9
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	jmp	.L6
.L9:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -148(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	leaq	-148(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	movq	-120(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movl	$0, -144(%rbp)
	jmp	.L10
.L17:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	validateUserName@PLT
	testl	%eax, %eax
	jne	.L11
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L11:
	movq	-176(%rbp), %rdx
	leaq	-107(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserPhoneNumber@PLT
	movl	%eax, -136(%rbp)
	cmpl	$-1, -136(%rbp)
	jne	.L13
	leaq	-107(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L13:
	cmpl	$0, -136(%rbp)
	jne	.L14
	leaq	-107(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L14:
	movq	-176(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validateUserEmailId@PLT
	movl	%eax, -132(%rbp)
	cmpl	$-1, -132(%rbp)
	jne	.L15
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L15:
	cmpl	$0, -132(%rbp)
	jne	.L16
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L16:
	leaq	-64(%rbp), %rsi
	leaq	-107(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -144(%rbp)
.L10:
	leaq	-64(%rbp), %rsi
	leaq	-107(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	cmpl	$3, %eax
	je	.L17
	movl	-148(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	-140(%rbp), %edx
	movq	-120(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-144(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	loadContacts@PLT
.L6:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	importContacts, .-importContacts
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
