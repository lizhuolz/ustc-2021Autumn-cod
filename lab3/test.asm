.data
out: .word 0xff 	#led, ��ʼȫ��
in: .word 0 		#switch

.text
loop:
la a0, out		#������Ҫ
sw x0, 0(a0) 		#test sw: ȫ��led
addi t0, x0, 0xff 	#test addi: ȫ��led
sw t0, 0(a0)
lw t0, 4(a0) 		#test lw: ��switch����led
sw t0, 0(a0)
addi t0 x0 0x01
add t0 t0 t0
beq x0 t0 loop
jal loop
