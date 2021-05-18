# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t0, 10
	li $t1, 05
	div $t0, $t1
	li $v0, 10
	syscall