# Start .text segment (program code)
	.text
	.globl main
	
main:
	li $t1, 5
	li $t2, 6
	
	j jump_here
	
jump_here:
	li $t3, 6
	li $t4, 7
	
end: 
	li $v0, 10
	syscall