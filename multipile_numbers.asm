# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t0, 02
	li $t1, 03
	mul $t2, $t0, $t1
	li $v0, 10
	syscall