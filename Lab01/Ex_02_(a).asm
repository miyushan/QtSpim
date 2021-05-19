#Part_02: Program to find the sum of elements in an array
#Array initialization and calculate sum of the elements
#------------------------------------------------- 

#Data Declarations

.data

	arr: .word 4, 5, 6, 7, 3, 6, 5, 4, 3, 4, 3, 4	# initialize the array 
	length : .word 12								# initialize the array size

#------------------------------------------------ 

#text/code section
.text
.ent main
.globl main
main:
#---------------------------------------------------

    add $t0, $zero, $zero   # counter
	add $t1, $zero, $zero   # sum
	lw $t4, length			# t4 = length

	la $t2, arr		# get the address of the array

	loop:
		beq $t0, $t4, exit	# check whether counter = 12

		lw $t3, ($t2)		# get the value of an element in the array
		addi $t2, $t2, 4	# increment the address by 4bits (due to an integer array)

		add $t1, $t1, $t3   # sum = sum + element

		addi $t0, $t0, 1	# counter++
	j loop		#continously call loop ( jump )
	
	
	
#---------------------------------------------------

#Done, terminate program.

		
    exit:
	# to terminate 
		li $v0, 10				# call code for terminatet
		syscall					# system call
		              
    
.end main
