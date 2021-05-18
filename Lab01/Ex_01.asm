#Part_01: Program to do arithmetic operations
#Simple arithmetic operations
#------------------------------------------------- 

#Data Declarations

.data
# data declarations go here...
#------------------------------------------------ 

#text/code section
.text
.ent main
.globl main
main:
#---------------------------------------------------
    li $s0, 15	# a = 15
	li $s1, 14	# b = 14
	li $s2, 2	# c = 2
	li $s3, 7	# d = 7
	
	#Find e
	add $t0, $s0, $s1	# x = a + b
	add $t1, $t0, $s2	# y = x + c
	sub	$s4, $t1, $s3	# e = y - d
	
	#Find f
	sub	$t2, $s0, $s1	# z = a - b
	add	$t3, $s2, $s3	# p = c + d
	sub	$s5, $t2, $t3	# e = z - p
	
	#Find g
	mul $s6, $s0, $s1		# g = a * b
#---------------------------------------------------

#Done, terminate program.
    li $v0, 10              # call code for terminate
    syscall                 # system call
    
.end main
