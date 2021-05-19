# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t1, 5
	li $t2, 57
	
	beq $t1, $t2, zoom
	addi $t3, $t2, 5
	
zoom: 
	li $v0, 10
	syscall