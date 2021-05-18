# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t2, 1
	move $t1, $t2
	move $t8, $t1
	
	li $v0, 10
	syscall