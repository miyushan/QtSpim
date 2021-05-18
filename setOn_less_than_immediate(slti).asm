# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t1, 3
	
	slt $t3, $t1, 2
	
	li $v0, 10
	syscall