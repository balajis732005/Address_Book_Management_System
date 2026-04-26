	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Entered Main"
	.align 8
.LC1:
	.string	"---------------------------------------------------------------"
	.align 8
.LC2:
	.string	"Welcome to Address Book! Choice an option to perform operation:"
.LC3:
	.string	"%d"
.LC4:
	.string	"------------------------"
.LC5:
	.string	"Create Contact Selected:"
.LC6:
	.string	"Search Contact Selected:"
.LC7:
	.string	"----------------------"
.LC8:
	.string	"Edit Contact Selected:"
.LC9:
	.string	"Delete Contact Selected:"
.LC10:
	.string	"Address Book Contacts:"
	.align 8
.LC11:
	.string	"-------------------------------------------------"
	.align 8
.LC12:
	.string	"Contacts Exported Successfully!\nExported Contacts: export_import/exportedContacts.csv"
.LC13:
	.string	"---------------"
.LC14:
	.string	"Contacts Saved!"
	.align 8
.LC15:
	.string	"\nAre you sure exit without saving [Y/N] : "
.LC16:
	.string	"%c"
	.align 8
.LC17:
	.string	"\n[Error] Invalid Choice! Please choose again."
	.align 8
.LC18:
	.string	"Thank You for using Address Book Management Tool!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1184, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -60(%rbp)
	leaq	-9360(%rbp), %rax
	movq	%rax, %rdi
	call	loadContacts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L17:
	movl	$0, %eax
	call	displayChoice
	movl	$-1, -9368(%rbp)
	leaq	-9368(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	movl	-9368(%rbp), %eax
	cmpl	$9, %eax
	ja	.L2
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L4(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L2-.L4
	.long	.L12-.L4
	.long	.L11-.L4
	.long	.L10-.L4
	.long	.L9-.L4
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
.L12:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-9360(%rbp), %rax
	movq	%rax, %rdi
	call	createContact@PLT
	jmp	.L15
.L11:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rdx
	leaq	-9364(%rbp), %rcx
	leaq	-9360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	performSearch
	jmp	.L15
.L10:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rdx
	leaq	-9364(%rbp), %rcx
	leaq	-9360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	performEdit
	jmp	.L15
.L9:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rdx
	leaq	-9364(%rbp), %rcx
	leaq	-9360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	performDelete
	jmp	.L15
.L8:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-9360(%rbp), %rax
	movq	%rax, %rdi
	call	listContacts@PLT
	jmp	.L15
.L7:
	movl	$0, %eax
	call	exportContacts@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L15
.L6:
	leaq	-9360(%rbp), %rax
	movq	%rax, %rdi
	call	performImportContact
	jmp	.L15
.L5:
	leaq	-9360(%rbp), %rax
	movq	%rax, %rdi
	call	saveContacts@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L15
.L3:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-9369(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-9369(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	cmpl	$110, %eax
	jne	.L20
	leaq	-9360(%rbp), %rax
	movq	%rax, %rdi
	call	saveContacts@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L20
.L2:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L15
.L20:
	nop
.L15:
	movl	-9368(%rbp), %eax
	cmpl	$8, %eax
	je	.L16
	movl	-9368(%rbp), %eax
	cmpl	$9, %eax
	jne	.L17
.L16:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC19:
	.string	"---------------------------"
.LC20:
	.string	"Operations on Address Book:"
.LC21:
	.string	"1 - Create contact"
.LC22:
	.string	"2 - Search contact"
.LC23:
	.string	"3 - Edit contact"
.LC24:
	.string	"4 - Delete contact"
.LC25:
	.string	"5 - List all contacts"
.LC26:
	.string	"6 - Export Contacts"
.LC27:
	.string	"7 - Import Contacts"
.LC28:
	.string	"8 - Save & Exit"
.LC29:
	.string	"9 - Exit"
.LC30:
	.string	"Enter your choice: "
	.text
	.globl	displayChoice
	.type	displayChoice, @function
displayChoice:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	displayChoice, .-displayChoice
	.section	.rodata
.LC31:
	.string	"------------------"
.LC32:
	.string	"Options to Search:"
.LC33:
	.string	"1 - Search by name"
.LC34:
	.string	"2 - Search by phone number"
.LC35:
	.string	"3 - Search by email id"
	.align 8
.LC36:
	.string	"Enter your choice for search: "
	.text
	.globl	displaySearchChoice
	.type	displaySearchChoice, @function
displaySearchChoice:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	displaySearchChoice, .-displaySearchChoice
	.globl	getSearchChoice
	.type	getSearchChoice, @function
getSearchChoice:
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
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
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
	.size	getSearchChoice, .-getSearchChoice
	.section	.rodata
	.align 8
.LC37:
	.string	"\n[Error] Invalid Search Choice! Please choose the search choice again."
	.text
	.globl	performSearch
	.type	performSearch, @function
performSearch:
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
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	displaySearchChoice
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	getSearchChoice
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	searchContact@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L25
.L26:
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	displaySearchChoice
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	getSearchChoice
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	searchContact@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
.L25:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-3, %eax
	je	.L26
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	performSearch, .-performSearch
	.section	.rodata
.LC38:
	.string	"----------------"
.LC39:
	.string	"Options to Edit:"
.LC40:
	.string	"1 - Edit the Name"
.LC41:
	.string	"2 - Edit the Phone Number"
.LC42:
	.string	"3 - Edit the Email Id"
.LC43:
	.string	"Enter your choice for edit: "
	.text
	.globl	displayEditChoice
	.type	displayEditChoice, @function
displayEditChoice:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	displayEditChoice, .-displayEditChoice
	.section	.rodata
.LC44:
	.string	"\nFind the Contact to Edit:"
	.align 8
.LC45:
	.string	"\n[INFO] Multiple Matches found, Please Enter the number of which contact to edit: "
	.align 8
.LC46:
	.string	"\n[Error] Invalid Edit Option, please choose edit option again"
	.text
	.globl	performEdit
	.type	performEdit, @function
performEdit:
.LFB6:
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
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	performSearch
	jmp	.L30
.L31:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	performSearch
.L30:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L31
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-2, %eax
	jne	.L32
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	findNthIndexOfName@PLT
	movl	%eax, -12(%rbp)
	jmp	.L33
.L32:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L33:
	movl	$-1, -16(%rbp)
	movl	$0, %eax
	call	displayEditChoice
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	jmp	.L34
.L36:
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	displayEditChoice
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
.L34:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jg	.L35
	movl	-16(%rbp), %eax
	cmpl	$3, %eax
	jg	.L36
.L35:
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	editContact@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	performEdit, .-performEdit
	.section	.rodata
.LC47:
	.string	"Options to Delete:"
.LC48:
	.string	"1 - Delete by Name"
.LC49:
	.string	"2 - Delete by Phone Number"
.LC50:
	.string	"3 - Delete by Email Id"
	.align 8
.LC51:
	.string	"Enter your choice for delete: "
	.text
	.globl	displayDeleteChoice
	.type	displayDeleteChoice, @function
displayDeleteChoice:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC50(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	displayDeleteChoice, .-displayDeleteChoice
	.section	.rodata
.LC52:
	.string	"\nFind the Contact to Delete:"
	.align 8
.LC53:
	.string	"\n[INFO] Multiple Matches found, Please Enter the number of which contact to delete: "
	.align 8
.LC54:
	.string	"\nAre you sure to Delete the Selected Contact[Y/N]: "
.LC55:
	.string	"--------------------"
.LC56:
	.string	"Contact not deleted!"
	.text
	.globl	performDelete
	.type	performDelete, @function
performDelete:
.LFB8:
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
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	performSearch
	jmp	.L40
.L41:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	performSearch
.L40:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L41
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-2, %eax
	jne	.L42
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	__fpurge@PLT
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	findNthIndexOfName@PLT
	movl	%eax, -12(%rbp)
	jmp	.L43
.L42:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L43:
	leaq	.LC54(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-16(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	cmpl	$121, %eax
	jne	.L44
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	deleteContact@PLT
	jmp	.L47
.L44:
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L47:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	performDelete, .-performDelete
	.section	.rodata
	.align 8
.LC57:
	.string	"\nEnter the File Path of Contacts to be Imported: "
.LC58:
	.string	"%150[^\n]"
	.text
	.globl	performImportContact
	.type	performImportContact, @function
performImportContact:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC57(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-168(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	importContacts@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	performImportContact, .-performImportContact
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
