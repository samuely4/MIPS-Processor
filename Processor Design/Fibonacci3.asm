	.data
memory:	.space 50
	.align 2

	.text
	.globl	main



main:	
	
	la $t0, memory # pointer to the memeory address for writing
	addiu $t1, $zero, 1
	addiu $t2, $zero, 10
loop:	addiu $t1, $t1, 1
	bne $t1, $t2, jump
	j exit 
	
	
jump: j loop
exit:	li $v0, 10
	syscall
			
		
