.data
array: .word 1,2
.text
	la t0 array
	lw a0 0(t0)
	lw a1 4(t0)
	
loop:
	addi t0 t0 4
	addi t1 a0 0
	addi a0 a1 0
	add a1 a1 t1
	sw a0 0(t0)
	jal x0 loop