.text
.globl	sha1_block_data_order
.type	sha1_block_data_order,@function
.align	16
sha1_block_data_order:
	pushq	%rbx
	pushq	%rbp
	pushq	%r12
	movq	%rsp,%rax
	movq	%rdi,%r8
	subq	$72,%rsp
	movq	%rsi,%r9
	andq	$-64,%rsp
	movq	%rdx,%r10
	movq	%rax,64(%rsp)

	movl	0(%r8),%edx
	movl	4(%r8),%esi
	movl	8(%r8),%edi
	movl	12(%r8),%ebp
	movl	16(%r8),%r11d
.align	4
.Lloop:
	movl	0(%r9),%eax
	bswapl	%eax
	movl	%eax,0(%rsp)
	leal	1518500249(%rax,%r11,1),%r12d
	movl	%edi,%ebx
	movl	4(%r9),%eax
	movl	%edx,%r11d
	xorl	%ebp,%ebx
	bswapl	%eax
	roll	$5,%r11d
	andl	%esi,%ebx
	movl	%eax,4(%rsp)
	addl	%r11d,%r12d
	xorl	%ebp,%ebx
	roll	$30,%esi
	addl	%ebx,%r12d
	leal	1518500249(%rax,%rbp,1),%r11d
	movl	%esi,%ebx
	movl	8(%r9),%eax
	movl	%r12d,%ebp
	xorl	%edi,%ebx
	bswapl	%eax
	roll	$5,%ebp
	andl	%edx,%ebx
	movl	%eax,8(%rsp)
	addl	%ebp,%r11d
	xorl	%edi,%ebx
	roll	$30,%edx
	addl	%ebx,%r11d
	leal	1518500249(%rax,%rdi,1),%ebp
	movl	%edx,%ebx
	movl	12(%r9),%eax
	movl	%r11d,%edi
	xorl	%esi,%ebx
	bswapl	%eax
	roll	$5,%edi
	andl	%r12d,%ebx
	movl	%eax,12(%rsp)
	addl	%edi,%ebp
	xorl	%esi,%ebx
	roll	$30,%r12d
	addl	%ebx,%ebp
	leal	1518500249(%rax,%rsi,1),%edi
	movl	%r12d,%ebx
	movl	16(%r9),%eax
	movl	%ebp,%esi
	xorl	%edx,%ebx
	bswapl	%eax
	roll	$5,%esi
	andl	%r11d,%ebx
	movl	%eax,16(%rsp)
	addl	%esi,%edi
	xorl	%edx,%ebx
	roll	$30,%r11d
	addl	%ebx,%edi
	leal	1518500249(%rax,%rdx,1),%esi
	movl	%r11d,%ebx
	movl	20(%r9),%eax
	movl	%edi,%edx
	xorl	%r12d,%ebx
	bswapl	%eax
	roll	$5,%edx
	andl	%ebp,%ebx
	movl	%eax,20(%rsp)
	addl	%edx,%esi
	xorl	%r12d,%ebx
	roll	$30,%ebp
	addl	%ebx,%esi
	leal	1518500249(%rax,%r12,1),%edx
	movl	%ebp,%ebx
	movl	24(%r9),%eax
	movl	%esi,%r12d
	xorl	%r11d,%ebx
	bswapl	%eax
	roll	$5,%r12d
	andl	%edi,%ebx
	movl	%eax,24(%rsp)
	addl	%r12d,%edx
	xorl	%r11d,%ebx
	roll	$30,%edi
	addl	%ebx,%edx
	leal	1518500249(%rax,%r11,1),%r12d
	movl	%edi,%ebx
	movl	28(%r9),%eax
	movl	%edx,%r11d
	xorl	%ebp,%ebx
	bswapl	%eax
	roll	$5,%r11d
	andl	%esi,%ebx
	movl	%eax,28(%rsp)
	addl	%r11d,%r12d
	xorl	%ebp,%ebx
	roll	$30,%esi
	addl	%ebx,%r12d
	leal	1518500249(%rax,%rbp,1),%r11d
	movl	%esi,%ebx
	movl	32(%r9),%eax
	movl	%r12d,%ebp
	xorl	%edi,%ebx
	bswapl	%eax
	roll	$5,%ebp
	andl	%edx,%ebx
	movl	%eax,32(%rsp)
	addl	%ebp,%r11d
	xorl	%edi,%ebx
	roll	$30,%edx
	addl	%ebx,%r11d
	leal	1518500249(%rax,%rdi,1),%ebp
	movl	%edx,%ebx
	movl	36(%r9),%eax
	movl	%r11d,%edi
	xorl	%esi,%ebx
	bswapl	%eax
	roll	$5,%edi
	andl	%r12d,%ebx
	movl	%eax,36(%rsp)
	addl	%edi,%ebp
	xorl	%esi,%ebx
	roll	$30,%r12d
	addl	%ebx,%ebp
	leal	1518500249(%rax,%rsi,1),%edi
	movl	%r12d,%ebx
	movl	40(%r9),%eax
	movl	%ebp,%esi
	xorl	%edx,%ebx
	bswapl	%eax
	roll	$5,%esi
	andl	%r11d,%ebx
	movl	%eax,40(%rsp)
	addl	%esi,%edi
	xorl	%edx,%ebx
	roll	$30,%r11d
	addl	%ebx,%edi
	leal	1518500249(%rax,%rdx,1),%esi
	movl	%r11d,%ebx
	movl	44(%r9),%eax
	movl	%edi,%edx
	xorl	%r12d,%ebx
	bswapl	%eax
	roll	$5,%edx
	andl	%ebp,%ebx
	movl	%eax,44(%rsp)
	addl	%edx,%esi
	xorl	%r12d,%ebx
	roll	$30,%ebp
	addl	%ebx,%esi
	leal	1518500249(%rax,%r12,1),%edx
	movl	%ebp,%ebx
	movl	48(%r9),%eax
	movl	%esi,%r12d
	xorl	%r11d,%ebx
	bswapl	%eax
	roll	$5,%r12d
	andl	%edi,%ebx
	movl	%eax,48(%rsp)
	addl	%r12d,%edx
	xorl	%r11d,%ebx
	roll	$30,%edi
	addl	%ebx,%edx
	leal	1518500249(%rax,%r11,1),%r12d
	movl	%edi,%ebx
	movl	52(%r9),%eax
	movl	%edx,%r11d
	xorl	%ebp,%ebx
	bswapl	%eax
	roll	$5,%r11d
	andl	%esi,%ebx
	movl	%eax,52(%rsp)
	addl	%r11d,%r12d
	xorl	%ebp,%ebx
	roll	$30,%esi
	addl	%ebx,%r12d
	leal	1518500249(%rax,%rbp,1),%r11d
	movl	%esi,%ebx
	movl	56(%r9),%eax
	movl	%r12d,%ebp
	xorl	%edi,%ebx
	bswapl	%eax
	roll	$5,%ebp
	andl	%edx,%ebx
	movl	%eax,56(%rsp)
	addl	%ebp,%r11d
	xorl	%edi,%ebx
	roll	$30,%edx
	addl	%ebx,%r11d
	leal	1518500249(%rax,%rdi,1),%ebp
	movl	%edx,%ebx
	movl	60(%r9),%eax
	movl	%r11d,%edi
	xorl	%esi,%ebx
	bswapl	%eax
	roll	$5,%edi
	andl	%r12d,%ebx
	movl	%eax,60(%rsp)
	addl	%edi,%ebp
	xorl	%esi,%ebx
	roll	$30,%r12d
	addl	%ebx,%ebp
	leal	1518500249(%rax,%rsi,1),%edi
	movl	0(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	8(%rsp),%eax
	xorl	%edx,%ebx
	roll	$5,%esi
	xorl	32(%rsp),%eax
	andl	%r11d,%ebx
	addl	%esi,%edi
	xorl	52(%rsp),%eax
	xorl	%edx,%ebx
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,0(%rsp)
	leal	1518500249(%rax,%rdx,1),%esi
	movl	4(%rsp),%eax
	movl	%r11d,%ebx
	movl	%edi,%edx
	xorl	12(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edx
	xorl	36(%rsp),%eax
	andl	%ebp,%ebx
	addl	%edx,%esi
	xorl	56(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$30,%ebp
	addl	%ebx,%esi
	roll	$1,%eax
	movl	%eax,4(%rsp)
	leal	1518500249(%rax,%r12,1),%edx
	movl	8(%rsp),%eax
	movl	%ebp,%ebx
	movl	%esi,%r12d
	xorl	16(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%r12d
	xorl	40(%rsp),%eax
	andl	%edi,%ebx
	addl	%r12d,%edx
	xorl	60(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$30,%edi
	addl	%ebx,%edx
	roll	$1,%eax
	movl	%eax,8(%rsp)
	leal	1518500249(%rax,%r11,1),%r12d
	movl	12(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	20(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$5,%r11d
	xorl	44(%rsp),%eax
	andl	%esi,%ebx
	addl	%r11d,%r12d
	xorl	0(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	movl	%eax,12(%rsp)
	leal	1518500249(%rax,%rbp,1),%r11d
	movl	16(%rsp),%eax
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	24(%rsp),%eax
	xorl	%edi,%ebx
	roll	$5,%ebp
	xorl	48(%rsp),%eax
	andl	%edx,%ebx
	addl	%ebp,%r11d
	xorl	4(%rsp),%eax
	xorl	%edi,%ebx
	roll	$30,%edx
	addl	%ebx,%r11d
	roll	$1,%eax
	movl	%eax,16(%rsp)
	leal	1859775393(%rax,%rdi,1),%ebp
	movl	20(%rsp),%eax
	movl	%edx,%ebx
	movl	%r11d,%edi
	xorl	28(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edi
	xorl	52(%rsp),%eax
	xorl	%esi,%ebx
	addl	%edi,%ebp
	xorl	8(%rsp),%eax
	roll	$30,%r12d
	addl	%ebx,%ebp
	roll	$1,%eax
	movl	%eax,20(%rsp)
	leal	1859775393(%rax,%rsi,1),%edi
	movl	24(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	32(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%esi
	xorl	56(%rsp),%eax
	xorl	%edx,%ebx
	addl	%esi,%edi
	xorl	12(%rsp),%eax
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,24(%rsp)
	leal	1859775393(%rax,%rdx,1),%esi
	movl	28(%rsp),%eax
	movl	%r11d,%ebx
	movl	%edi,%edx
	xorl	36(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$5,%edx
	xorl	60(%rsp),%eax
	xorl	%r12d,%ebx
	addl	%edx,%esi
	xorl	16(%rsp),%eax
	roll	$30,%ebp
	addl	%ebx,%esi
	roll	$1,%eax
	movl	%eax,28(%rsp)
	leal	1859775393(%rax,%r12,1),%edx
	movl	32(%rsp),%eax
	movl	%ebp,%ebx
	movl	%esi,%r12d
	xorl	40(%rsp),%eax
	xorl	%edi,%ebx
	roll	$5,%r12d
	xorl	0(%rsp),%eax
	xorl	%r11d,%ebx
	addl	%r12d,%edx
	xorl	20(%rsp),%eax
	roll	$30,%edi
	addl	%ebx,%edx
	roll	$1,%eax
	movl	%eax,32(%rsp)
	leal	1859775393(%rax,%r11,1),%r12d
	movl	36(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	44(%rsp),%eax
	xorl	%esi,%ebx
	roll	$5,%r11d
	xorl	4(%rsp),%eax
	xorl	%ebp,%ebx
	addl	%r11d,%r12d
	xorl	24(%rsp),%eax
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	movl	%eax,36(%rsp)
	leal	1859775393(%rax,%rbp,1),%r11d
	movl	40(%rsp),%eax
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	48(%rsp),%eax
	xorl	%edx,%ebx
	roll	$5,%ebp
	xorl	8(%rsp),%eax
	xorl	%edi,%ebx
	addl	%ebp,%r11d
	xorl	28(%rsp),%eax
	roll	$30,%edx
	addl	%ebx,%r11d
	roll	$1,%eax
	movl	%eax,40(%rsp)
	leal	1859775393(%rax,%rdi,1),%ebp
	movl	44(%rsp),%eax
	movl	%edx,%ebx
	movl	%r11d,%edi
	xorl	52(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edi
	xorl	12(%rsp),%eax
	xorl	%esi,%ebx
	addl	%edi,%ebp
	xorl	32(%rsp),%eax
	roll	$30,%r12d
	addl	%ebx,%ebp
	roll	$1,%eax
	movl	%eax,44(%rsp)
	leal	1859775393(%rax,%rsi,1),%edi
	movl	48(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	56(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%esi
	xorl	16(%rsp),%eax
	xorl	%edx,%ebx
	addl	%esi,%edi
	xorl	36(%rsp),%eax
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,48(%rsp)
	leal	1859775393(%rax,%rdx,1),%esi
	movl	52(%rsp),%eax
	movl	%r11d,%ebx
	movl	%edi,%edx
	xorl	60(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$5,%edx
	xorl	20(%rsp),%eax
	xorl	%r12d,%ebx
	addl	%edx,%esi
	xorl	40(%rsp),%eax
	roll	$30,%ebp
	addl	%ebx,%esi
	roll	$1,%eax
	movl	%eax,52(%rsp)
	leal	1859775393(%rax,%r12,1),%edx
	movl	56(%rsp),%eax
	movl	%ebp,%ebx
	movl	%esi,%r12d
	xorl	0(%rsp),%eax
	xorl	%edi,%ebx
	roll	$5,%r12d
	xorl	24(%rsp),%eax
	xorl	%r11d,%ebx
	addl	%r12d,%edx
	xorl	44(%rsp),%eax
	roll	$30,%edi
	addl	%ebx,%edx
	roll	$1,%eax
	movl	%eax,56(%rsp)
	leal	1859775393(%rax,%r11,1),%r12d
	movl	60(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	4(%rsp),%eax
	xorl	%esi,%ebx
	roll	$5,%r11d
	xorl	28(%rsp),%eax
	xorl	%ebp,%ebx
	addl	%r11d,%r12d
	xorl	48(%rsp),%eax
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	movl	%eax,60(%rsp)
	leal	1859775393(%rax,%rbp,1),%r11d
	movl	0(%rsp),%eax
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	8(%rsp),%eax
	xorl	%edx,%ebx
	roll	$5,%ebp
	xorl	32(%rsp),%eax
	xorl	%edi,%ebx
	addl	%ebp,%r11d
	xorl	52(%rsp),%eax
	roll	$30,%edx
	addl	%ebx,%r11d
	roll	$1,%eax
	movl	%eax,0(%rsp)
	leal	1859775393(%rax,%rdi,1),%ebp
	movl	4(%rsp),%eax
	movl	%edx,%ebx
	movl	%r11d,%edi
	xorl	12(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edi
	xorl	36(%rsp),%eax
	xorl	%esi,%ebx
	addl	%edi,%ebp
	xorl	56(%rsp),%eax
	roll	$30,%r12d
	addl	%ebx,%ebp
	roll	$1,%eax
	movl	%eax,4(%rsp)
	leal	1859775393(%rax,%rsi,1),%edi
	movl	8(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	16(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%esi
	xorl	40(%rsp),%eax
	xorl	%edx,%ebx
	addl	%esi,%edi
	xorl	60(%rsp),%eax
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,8(%rsp)
	leal	1859775393(%rax,%rdx,1),%esi
	movl	12(%rsp),%eax
	movl	%r11d,%ebx
	movl	%edi,%edx
	xorl	20(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$5,%edx
	xorl	44(%rsp),%eax
	xorl	%r12d,%ebx
	addl	%edx,%esi
	xorl	0(%rsp),%eax
	roll	$30,%ebp
	addl	%ebx,%esi
	roll	$1,%eax
	movl	%eax,12(%rsp)
	leal	1859775393(%rax,%r12,1),%edx
	movl	16(%rsp),%eax
	movl	%ebp,%ebx
	movl	%esi,%r12d
	xorl	24(%rsp),%eax
	xorl	%edi,%ebx
	roll	$5,%r12d
	xorl	48(%rsp),%eax
	xorl	%r11d,%ebx
	addl	%r12d,%edx
	xorl	4(%rsp),%eax
	roll	$30,%edi
	addl	%ebx,%edx
	roll	$1,%eax
	movl	%eax,16(%rsp)
	leal	1859775393(%rax,%r11,1),%r12d
	movl	20(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	28(%rsp),%eax
	xorl	%esi,%ebx
	roll	$5,%r11d
	xorl	52(%rsp),%eax
	xorl	%ebp,%ebx
	addl	%r11d,%r12d
	xorl	8(%rsp),%eax
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	movl	%eax,20(%rsp)
	leal	1859775393(%rax,%rbp,1),%r11d
	movl	24(%rsp),%eax
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	32(%rsp),%eax
	xorl	%edx,%ebx
	roll	$5,%ebp
	xorl	56(%rsp),%eax
	xorl	%edi,%ebx
	addl	%ebp,%r11d
	xorl	12(%rsp),%eax
	roll	$30,%edx
	addl	%ebx,%r11d
	roll	$1,%eax
	movl	%eax,24(%rsp)
	leal	1859775393(%rax,%rdi,1),%ebp
	movl	28(%rsp),%eax
	movl	%edx,%ebx
	movl	%r11d,%edi
	xorl	36(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edi
	xorl	60(%rsp),%eax
	xorl	%esi,%ebx
	addl	%edi,%ebp
	xorl	16(%rsp),%eax
	roll	$30,%r12d
	addl	%ebx,%ebp
	roll	$1,%eax
	movl	%eax,28(%rsp)
	leal	1859775393(%rax,%rsi,1),%edi
	movl	32(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	40(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%esi
	xorl	0(%rsp),%eax
	xorl	%edx,%ebx
	addl	%esi,%edi
	xorl	20(%rsp),%eax
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,32(%rsp)
	leal	-1894007588(%rax,%rdx,1),%esi
	movl	36(%rsp),%eax
	movl	%ebp,%ebx
	movl	%ebp,%ecx
	xorl	44(%rsp),%eax
	movl	%edi,%edx
	andl	%r11d,%ebx
	xorl	4(%rsp),%eax
	orl	%r11d,%ecx
	roll	$5,%edx
	xorl	24(%rsp),%eax
	andl	%r12d,%ecx
	addl	%edx,%esi
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%ebp
	movl	%eax,36(%rsp)
	addl	%ebx,%esi
	leal	-1894007588(%rax,%r12,1),%edx
	movl	40(%rsp),%eax
	movl	%edi,%ebx
	movl	%edi,%ecx
	xorl	48(%rsp),%eax
	movl	%esi,%r12d
	andl	%ebp,%ebx
	xorl	8(%rsp),%eax
	orl	%ebp,%ecx
	roll	$5,%r12d
	xorl	28(%rsp),%eax
	andl	%r11d,%ecx
	addl	%r12d,%edx
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%edi
	movl	%eax,40(%rsp)
	addl	%ebx,%edx
	leal	-1894007588(%rax,%r11,1),%r12d
	movl	44(%rsp),%eax
	movl	%esi,%ebx
	movl	%esi,%ecx
	xorl	52(%rsp),%eax
	movl	%edx,%r11d
	andl	%edi,%ebx
	xorl	12(%rsp),%eax
	orl	%edi,%ecx
	roll	$5,%r11d
	xorl	32(%rsp),%eax
	andl	%ebp,%ecx
	addl	%r11d,%r12d
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%esi
	movl	%eax,44(%rsp)
	addl	%ebx,%r12d
	leal	-1894007588(%rax,%rbp,1),%r11d
	movl	48(%rsp),%eax
	movl	%edx,%ebx
	movl	%edx,%ecx
	xorl	56(%rsp),%eax
	movl	%r12d,%ebp
	andl	%esi,%ebx
	xorl	16(%rsp),%eax
	orl	%esi,%ecx
	roll	$5,%ebp
	xorl	36(%rsp),%eax
	andl	%edi,%ecx
	addl	%ebp,%r11d
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%edx
	movl	%eax,48(%rsp)
	addl	%ebx,%r11d
	leal	-1894007588(%rax,%rdi,1),%ebp
	movl	52(%rsp),%eax
	movl	%r12d,%ebx
	movl	%r12d,%ecx
	xorl	60(%rsp),%eax
	movl	%r11d,%edi
	andl	%edx,%ebx
	xorl	20(%rsp),%eax
	orl	%edx,%ecx
	roll	$5,%edi
	xorl	40(%rsp),%eax
	andl	%esi,%ecx
	addl	%edi,%ebp
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%r12d
	movl	%eax,52(%rsp)
	addl	%ebx,%ebp
	leal	-1894007588(%rax,%rsi,1),%edi
	movl	56(%rsp),%eax
	movl	%r11d,%ebx
	movl	%r11d,%ecx
	xorl	0(%rsp),%eax
	movl	%ebp,%esi
	andl	%r12d,%ebx
	xorl	24(%rsp),%eax
	orl	%r12d,%ecx
	roll	$5,%esi
	xorl	44(%rsp),%eax
	andl	%edx,%ecx
	addl	%esi,%edi
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%r11d
	movl	%eax,56(%rsp)
	addl	%ebx,%edi
	leal	-1894007588(%rax,%rdx,1),%esi
	movl	60(%rsp),%eax
	movl	%ebp,%ebx
	movl	%ebp,%ecx
	xorl	4(%rsp),%eax
	movl	%edi,%edx
	andl	%r11d,%ebx
	xorl	28(%rsp),%eax
	orl	%r11d,%ecx
	roll	$5,%edx
	xorl	48(%rsp),%eax
	andl	%r12d,%ecx
	addl	%edx,%esi
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%ebp
	movl	%eax,60(%rsp)
	addl	%ebx,%esi
	leal	-1894007588(%rax,%r12,1),%edx
	movl	0(%rsp),%eax
	movl	%edi,%ebx
	movl	%edi,%ecx
	xorl	8(%rsp),%eax
	movl	%esi,%r12d
	andl	%ebp,%ebx
	xorl	32(%rsp),%eax
	orl	%ebp,%ecx
	roll	$5,%r12d
	xorl	52(%rsp),%eax
	andl	%r11d,%ecx
	addl	%r12d,%edx
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%edi
	movl	%eax,0(%rsp)
	addl	%ebx,%edx
	leal	-1894007588(%rax,%r11,1),%r12d
	movl	4(%rsp),%eax
	movl	%esi,%ebx
	movl	%esi,%ecx
	xorl	12(%rsp),%eax
	movl	%edx,%r11d
	andl	%edi,%ebx
	xorl	36(%rsp),%eax
	orl	%edi,%ecx
	roll	$5,%r11d
	xorl	56(%rsp),%eax
	andl	%ebp,%ecx
	addl	%r11d,%r12d
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%esi
	movl	%eax,4(%rsp)
	addl	%ebx,%r12d
	leal	-1894007588(%rax,%rbp,1),%r11d
	movl	8(%rsp),%eax
	movl	%edx,%ebx
	movl	%edx,%ecx
	xorl	16(%rsp),%eax
	movl	%r12d,%ebp
	andl	%esi,%ebx
	xorl	40(%rsp),%eax
	orl	%esi,%ecx
	roll	$5,%ebp
	xorl	60(%rsp),%eax
	andl	%edi,%ecx
	addl	%ebp,%r11d
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%edx
	movl	%eax,8(%rsp)
	addl	%ebx,%r11d
	leal	-1894007588(%rax,%rdi,1),%ebp
	movl	12(%rsp),%eax
	movl	%r12d,%ebx
	movl	%r12d,%ecx
	xorl	20(%rsp),%eax
	movl	%r11d,%edi
	andl	%edx,%ebx
	xorl	44(%rsp),%eax
	orl	%edx,%ecx
	roll	$5,%edi
	xorl	0(%rsp),%eax
	andl	%esi,%ecx
	addl	%edi,%ebp
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%r12d
	movl	%eax,12(%rsp)
	addl	%ebx,%ebp
	leal	-1894007588(%rax,%rsi,1),%edi
	movl	16(%rsp),%eax
	movl	%r11d,%ebx
	movl	%r11d,%ecx
	xorl	24(%rsp),%eax
	movl	%ebp,%esi
	andl	%r12d,%ebx
	xorl	48(%rsp),%eax
	orl	%r12d,%ecx
	roll	$5,%esi
	xorl	4(%rsp),%eax
	andl	%edx,%ecx
	addl	%esi,%edi
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%r11d
	movl	%eax,16(%rsp)
	addl	%ebx,%edi
	leal	-1894007588(%rax,%rdx,1),%esi
	movl	20(%rsp),%eax
	movl	%ebp,%ebx
	movl	%ebp,%ecx
	xorl	28(%rsp),%eax
	movl	%edi,%edx
	andl	%r11d,%ebx
	xorl	52(%rsp),%eax
	orl	%r11d,%ecx
	roll	$5,%edx
	xorl	8(%rsp),%eax
	andl	%r12d,%ecx
	addl	%edx,%esi
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%ebp
	movl	%eax,20(%rsp)
	addl	%ebx,%esi
	leal	-1894007588(%rax,%r12,1),%edx
	movl	24(%rsp),%eax
	movl	%edi,%ebx
	movl	%edi,%ecx
	xorl	32(%rsp),%eax
	movl	%esi,%r12d
	andl	%ebp,%ebx
	xorl	56(%rsp),%eax
	orl	%ebp,%ecx
	roll	$5,%r12d
	xorl	12(%rsp),%eax
	andl	%r11d,%ecx
	addl	%r12d,%edx
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%edi
	movl	%eax,24(%rsp)
	addl	%ebx,%edx
	leal	-1894007588(%rax,%r11,1),%r12d
	movl	28(%rsp),%eax
	movl	%esi,%ebx
	movl	%esi,%ecx
	xorl	36(%rsp),%eax
	movl	%edx,%r11d
	andl	%edi,%ebx
	xorl	60(%rsp),%eax
	orl	%edi,%ecx
	roll	$5,%r11d
	xorl	16(%rsp),%eax
	andl	%ebp,%ecx
	addl	%r11d,%r12d
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%esi
	movl	%eax,28(%rsp)
	addl	%ebx,%r12d
	leal	-1894007588(%rax,%rbp,1),%r11d
	movl	32(%rsp),%eax
	movl	%edx,%ebx
	movl	%edx,%ecx
	xorl	40(%rsp),%eax
	movl	%r12d,%ebp
	andl	%esi,%ebx
	xorl	0(%rsp),%eax
	orl	%esi,%ecx
	roll	$5,%ebp
	xorl	20(%rsp),%eax
	andl	%edi,%ecx
	addl	%ebp,%r11d
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%edx
	movl	%eax,32(%rsp)
	addl	%ebx,%r11d
	leal	-1894007588(%rax,%rdi,1),%ebp
	movl	36(%rsp),%eax
	movl	%r12d,%ebx
	movl	%r12d,%ecx
	xorl	44(%rsp),%eax
	movl	%r11d,%edi
	andl	%edx,%ebx
	xorl	4(%rsp),%eax
	orl	%edx,%ecx
	roll	$5,%edi
	xorl	24(%rsp),%eax
	andl	%esi,%ecx
	addl	%edi,%ebp
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%r12d
	movl	%eax,36(%rsp)
	addl	%ebx,%ebp
	leal	-1894007588(%rax,%rsi,1),%edi
	movl	40(%rsp),%eax
	movl	%r11d,%ebx
	movl	%r11d,%ecx
	xorl	48(%rsp),%eax
	movl	%ebp,%esi
	andl	%r12d,%ebx
	xorl	8(%rsp),%eax
	orl	%r12d,%ecx
	roll	$5,%esi
	xorl	28(%rsp),%eax
	andl	%edx,%ecx
	addl	%esi,%edi
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%r11d
	movl	%eax,40(%rsp)
	addl	%ebx,%edi
	leal	-1894007588(%rax,%rdx,1),%esi
	movl	44(%rsp),%eax
	movl	%ebp,%ebx
	movl	%ebp,%ecx
	xorl	52(%rsp),%eax
	movl	%edi,%edx
	andl	%r11d,%ebx
	xorl	12(%rsp),%eax
	orl	%r11d,%ecx
	roll	$5,%edx
	xorl	32(%rsp),%eax
	andl	%r12d,%ecx
	addl	%edx,%esi
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%ebp
	movl	%eax,44(%rsp)
	addl	%ebx,%esi
	leal	-1894007588(%rax,%r12,1),%edx
	movl	48(%rsp),%eax
	movl	%edi,%ebx
	movl	%edi,%ecx
	xorl	56(%rsp),%eax
	movl	%esi,%r12d
	andl	%ebp,%ebx
	xorl	16(%rsp),%eax
	orl	%ebp,%ecx
	roll	$5,%r12d
	xorl	36(%rsp),%eax
	andl	%r11d,%ecx
	addl	%r12d,%edx
	roll	$1,%eax
	orl	%ecx,%ebx
	roll	$30,%edi
	movl	%eax,48(%rsp)
	addl	%ebx,%edx
	leal	-899497514(%rax,%r11,1),%r12d
	movl	52(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	60(%rsp),%eax
	xorl	%esi,%ebx
	roll	$5,%r11d
	xorl	20(%rsp),%eax
	xorl	%ebp,%ebx
	addl	%r11d,%r12d
	xorl	40(%rsp),%eax
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	movl	%eax,52(%rsp)
	leal	-899497514(%rax,%rbp,1),%r11d
	movl	56(%rsp),%eax
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	0(%rsp),%eax
	xorl	%edx,%ebx
	roll	$5,%ebp
	xorl	24(%rsp),%eax
	xorl	%edi,%ebx
	addl	%ebp,%r11d
	xorl	44(%rsp),%eax
	roll	$30,%edx
	addl	%ebx,%r11d
	roll	$1,%eax
	movl	%eax,56(%rsp)
	leal	-899497514(%rax,%rdi,1),%ebp
	movl	60(%rsp),%eax
	movl	%edx,%ebx
	movl	%r11d,%edi
	xorl	4(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edi
	xorl	28(%rsp),%eax
	xorl	%esi,%ebx
	addl	%edi,%ebp
	xorl	48(%rsp),%eax
	roll	$30,%r12d
	addl	%ebx,%ebp
	roll	$1,%eax
	movl	%eax,60(%rsp)
	leal	-899497514(%rax,%rsi,1),%edi
	movl	0(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	8(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%esi
	xorl	32(%rsp),%eax
	xorl	%edx,%ebx
	addl	%esi,%edi
	xorl	52(%rsp),%eax
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,0(%rsp)
	leal	-899497514(%rax,%rdx,1),%esi
	movl	4(%rsp),%eax
	movl	%r11d,%ebx
	movl	%edi,%edx
	xorl	12(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$5,%edx
	xorl	36(%rsp),%eax
	xorl	%r12d,%ebx
	addl	%edx,%esi
	xorl	56(%rsp),%eax
	roll	$30,%ebp
	addl	%ebx,%esi
	roll	$1,%eax
	movl	%eax,4(%rsp)
	leal	-899497514(%rax,%r12,1),%edx
	movl	8(%rsp),%eax
	movl	%ebp,%ebx
	movl	%esi,%r12d
	xorl	16(%rsp),%eax
	xorl	%edi,%ebx
	roll	$5,%r12d
	xorl	40(%rsp),%eax
	xorl	%r11d,%ebx
	addl	%r12d,%edx
	xorl	60(%rsp),%eax
	roll	$30,%edi
	addl	%ebx,%edx
	roll	$1,%eax
	movl	%eax,8(%rsp)
	leal	-899497514(%rax,%r11,1),%r12d
	movl	12(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	20(%rsp),%eax
	xorl	%esi,%ebx
	roll	$5,%r11d
	xorl	44(%rsp),%eax
	xorl	%ebp,%ebx
	addl	%r11d,%r12d
	xorl	0(%rsp),%eax
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	movl	%eax,12(%rsp)
	leal	-899497514(%rax,%rbp,1),%r11d
	movl	16(%rsp),%eax
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	24(%rsp),%eax
	xorl	%edx,%ebx
	roll	$5,%ebp
	xorl	48(%rsp),%eax
	xorl	%edi,%ebx
	addl	%ebp,%r11d
	xorl	4(%rsp),%eax
	roll	$30,%edx
	addl	%ebx,%r11d
	roll	$1,%eax
	movl	%eax,16(%rsp)
	leal	-899497514(%rax,%rdi,1),%ebp
	movl	20(%rsp),%eax
	movl	%edx,%ebx
	movl	%r11d,%edi
	xorl	28(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edi
	xorl	52(%rsp),%eax
	xorl	%esi,%ebx
	addl	%edi,%ebp
	xorl	8(%rsp),%eax
	roll	$30,%r12d
	addl	%ebx,%ebp
	roll	$1,%eax
	movl	%eax,20(%rsp)
	leal	-899497514(%rax,%rsi,1),%edi
	movl	24(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	32(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%esi
	xorl	56(%rsp),%eax
	xorl	%edx,%ebx
	addl	%esi,%edi
	xorl	12(%rsp),%eax
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,24(%rsp)
	leal	-899497514(%rax,%rdx,1),%esi
	movl	28(%rsp),%eax
	movl	%r11d,%ebx
	movl	%edi,%edx
	xorl	36(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$5,%edx
	xorl	60(%rsp),%eax
	xorl	%r12d,%ebx
	addl	%edx,%esi
	xorl	16(%rsp),%eax
	roll	$30,%ebp
	addl	%ebx,%esi
	roll	$1,%eax
	movl	%eax,28(%rsp)
	leal	-899497514(%rax,%r12,1),%edx
	movl	32(%rsp),%eax
	movl	%ebp,%ebx
	movl	%esi,%r12d
	xorl	40(%rsp),%eax
	xorl	%edi,%ebx
	roll	$5,%r12d
	xorl	0(%rsp),%eax
	xorl	%r11d,%ebx
	addl	%r12d,%edx
	xorl	20(%rsp),%eax
	roll	$30,%edi
	addl	%ebx,%edx
	roll	$1,%eax
	movl	%eax,32(%rsp)
	leal	-899497514(%rax,%r11,1),%r12d
	movl	36(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	44(%rsp),%eax
	xorl	%esi,%ebx
	roll	$5,%r11d
	xorl	4(%rsp),%eax
	xorl	%ebp,%ebx
	addl	%r11d,%r12d
	xorl	24(%rsp),%eax
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	movl	%eax,36(%rsp)
	leal	-899497514(%rax,%rbp,1),%r11d
	movl	40(%rsp),%eax
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	48(%rsp),%eax
	xorl	%edx,%ebx
	roll	$5,%ebp
	xorl	8(%rsp),%eax
	xorl	%edi,%ebx
	addl	%ebp,%r11d
	xorl	28(%rsp),%eax
	roll	$30,%edx
	addl	%ebx,%r11d
	roll	$1,%eax
	movl	%eax,40(%rsp)
	leal	-899497514(%rax,%rdi,1),%ebp
	movl	44(%rsp),%eax
	movl	%edx,%ebx
	movl	%r11d,%edi
	xorl	52(%rsp),%eax
	xorl	%r12d,%ebx
	roll	$5,%edi
	xorl	12(%rsp),%eax
	xorl	%esi,%ebx
	addl	%edi,%ebp
	xorl	32(%rsp),%eax
	roll	$30,%r12d
	addl	%ebx,%ebp
	roll	$1,%eax
	movl	%eax,44(%rsp)
	leal	-899497514(%rax,%rsi,1),%edi
	movl	48(%rsp),%eax
	movl	%r12d,%ebx
	movl	%ebp,%esi
	xorl	56(%rsp),%eax
	xorl	%r11d,%ebx
	roll	$5,%esi
	xorl	16(%rsp),%eax
	xorl	%edx,%ebx
	addl	%esi,%edi
	xorl	36(%rsp),%eax
	roll	$30,%r11d
	addl	%ebx,%edi
	roll	$1,%eax
	movl	%eax,48(%rsp)
	leal	-899497514(%rax,%rdx,1),%esi
	movl	52(%rsp),%eax
	movl	%r11d,%ebx
	movl	%edi,%edx
	xorl	60(%rsp),%eax
	xorl	%ebp,%ebx
	roll	$5,%edx
	xorl	20(%rsp),%eax
	xorl	%r12d,%ebx
	addl	%edx,%esi
	xorl	40(%rsp),%eax
	roll	$30,%ebp
	addl	%ebx,%esi
	roll	$1,%eax
	leal	-899497514(%rax,%r12,1),%edx
	movl	56(%rsp),%eax
	movl	%ebp,%ebx
	movl	%esi,%r12d
	xorl	0(%rsp),%eax
	xorl	%edi,%ebx
	roll	$5,%r12d
	xorl	24(%rsp),%eax
	xorl	%r11d,%ebx
	addl	%r12d,%edx
	xorl	44(%rsp),%eax
	roll	$30,%edi
	addl	%ebx,%edx
	roll	$1,%eax
	leal	-899497514(%rax,%r11,1),%r12d
	movl	60(%rsp),%eax
	movl	%edi,%ebx
	movl	%edx,%r11d
	xorl	4(%rsp),%eax
	xorl	%esi,%ebx
	roll	$5,%r11d
	xorl	28(%rsp),%eax
	xorl	%ebp,%ebx
	addl	%r11d,%r12d
	xorl	48(%rsp),%eax
	roll	$30,%esi
	addl	%ebx,%r12d
	roll	$1,%eax
	leal	-899497514(%rax,%rbp,1),%r11d
	movl	%esi,%ebx
	movl	%r12d,%ebp
	xorl	%edx,%ebx
	roll	$5,%ebp
	xorl	%edi,%ebx
	addl	%ebp,%r11d
	roll	$30,%edx
	addl	%ebx,%r11d
	addl	0(%r8),%r11d
	addl	4(%r8),%r12d
	addl	8(%r8),%edx
	addl	12(%r8),%esi
	addl	16(%r8),%edi
	movl	%r11d,0(%r8)
	movl	%r12d,4(%r8)
	movl	%edx,8(%r8)
	movl	%esi,12(%r8)
	movl	%edi,16(%r8)

	xchgl	%r11d,%edx
	xchgl	%r12d,%esi
	xchgl	%r11d,%edi
	xchgl	%r12d,%ebp

	leaq	64(%r9),%r9
	subq	$1,%r10
	jnz	.Lloop
	movq	64(%rsp),%rsp
	popq	%r12
	popq	%rbp
	popq	%rbx
	.byte	0xf3,0xc3
.size	sha1_block_data_order,.-sha1_block_data_order
.byte	83,72,65,49,32,98,108,111,99,107,32,116,114,97,110,115,102,111,114,109,32,102,111,114,32,120,56,54,95,54,52,44,32,67,82,89,80,84,79,71,65,77,83,32,98,121,32,60,97,112,112,114,111,64,111,112,101,110,115,115,108,46,111,114,103,62,0
