# Start .text segment (program code)
	.data
	.text
	.globl main
	
main:
	li $t0, 0	#count
	li $t1, 0	#sum
	
	dog:
		beq $t0, 11, exit
		add $t1, $t1, $t0
		addi $t0, $t0, 1
	j dog
		
	exit:
		li $v0, 10
		syscall
