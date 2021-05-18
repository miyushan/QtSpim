.text #text section
.globl main #can be called from anywhere
main:
	ori $t0,$0,0x03
	ori $t1,$0,0x02
	add $t2,$t0,$t1