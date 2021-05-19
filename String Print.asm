# Start .text segment (program code)
	.data
	.text
	.globl main
	
main:
	li $v0, 4	#for print
	la $a0, msg	#pointer
	syscall

	li $v0, 10
	syscall
		
msg: .asciiz "\nShakeer\tMiyushan"