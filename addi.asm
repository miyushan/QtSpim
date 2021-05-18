# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t0, 25
	addi $t2, $t0, 1
	li $v0, 10
	syscall