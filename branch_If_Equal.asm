# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t1, 5
	li $t2, 5
	
	beq $t1, $t2, end
	addi $t3, $t2, 5
	
end: 
	li $v0, 10
	syscall