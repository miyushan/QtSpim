# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t1, 5
	li $t2, 6
	
	bne $t1, $t2, end
	addi $t3, $t2, 2
	
end: 
	li $v0, 10
	syscall