# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t1, 3
	li $t2, 10
	
	slt $t3, $t1, $t2
	
	li $v0, 10
	syscall