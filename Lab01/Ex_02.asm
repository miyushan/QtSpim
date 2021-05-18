#Part_02: Program to find the sum of elements in an array
#Array initialization and calculate sum of the elements
#------------------------------------------------- 

#Data Declarations

.data

arr: .word 4, 5, 6, 7, 3, 6, 5, 4, 3, 4, 3, 4	# initialize the array 

#------------------------------------------------ 

#text/code section
.text
.ent main
.globl main
main:
#---------------------------------------------------

    add $t0, $zero, $zero   # counter
	add $t1, $zero, $zero   # sum

	la $t2, arr

	loop:
		beq $t0, 12, exit	# check whether counter = 12

		lw $t3, ($t2)		# $t3 = arr[counter]
		addi $t2, $t2, 4

		add $t1, $t1, $t3   # sum = sum + arr[counter]

		addi $t0, $t0, 1	# i++
	j loop		#continously call loop ( jump )
	
	
#---------------------------------------------------

#Done, terminate program.

    exit:
		add $a0, $zero, $t1     # print sum of the array in console
		li $v0, 1
		syscall

		li $v0, 10				# call code for terminatet
		syscall					# system call
		              
    
.end main
