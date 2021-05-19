#Part_01: Program to do arithmetic operations
#Simple arithmetic operations
#------------------------------------------------- 

#Data Declarations

.data
# data declarations go here...

	val_a: .word 15		# a = 15
	val_b: .word 14		# b = 14
	val_c: .word 2		# c = 2
	val_d: .word 7		# d = 7
	
	msg0: .asciiz	"a = 15\tb = 14\tc = 2\td = 7\n"
	msg1: .asciiz	"\nPart 1:	\n\te = a + b + c - d \n\te = "		#for e
	msg2: .asciiz	"\n\nPart 2:	\n\tf = (a - b) - (c + d) \n\tf = "	#for f
	msg3: .asciiz	"\n\nPart 3:	\n\tg = a * b\n\tg = "				#for g
#------------------------------------------------ 

#text/code section
.text
.ent main
.globl main
main:
#---------------------------------------------------

    lw $s0, val_a	# s0 = a
	lw $s1, val_b	# s1 = b
	lw $s2, val_c	# s2 = c
	lw $s3, val_d	# s3 = a
	
	#Find e
	add $t0, $s0, $s1	# x = a + b
	add $t1, $t0, $s2	# y = x + c
	sub	$s4, $t1, $s3	# e = y - d
	
	#Find f
	sub	$t2, $s0, $s1	# z = a - b
	add	$t3, $s2, $s3	# p = c + d
	sub	$s5, $t2, $t3	# e = z - p
	
	#Find g
	mul $s6, $s0, $s1	# g = a * b
	
	
	#Print statements
	#initial statement
	li $v0,4				# Code for print_string(Details of initial variables)
	la $a0, msg0			# Pointer for call the string
	syscall
	
	#for e
		li $v0,4				# Code for print_string(Equation for e)
		la $a0, msg1			# Pointer for call the string
		syscall
		
		li $v0,1				# Code for print_integer(Answer for e)
		move $a0, $s4			# Pointer for call the integer
		syscall
	
	#for f
		li $v0,4				# Code for print_string(Equation for f)
		la $a0, msg2			# Pointer for call the string
		syscall
		
		li $v0,1				# Code for print_integer(Answer for f)
		move $a0, $s5			# Pointer for call the integer
		syscall
		
	#for g
		li $v0,4				# Code for print_string(Equation for g)
		la $a0, msg3			# Pointer for call the string
		syscall
		
		li $v0,1				# Code for print_integer(Answer for g)
		move $a0, $s6			# Pointer for call the integer
		syscall
	
	
#---------------------------------------------------

#Done, terminate program.
	
    li $v0, 10              # call code for terminate
    syscall                 # system call
    
.end main
