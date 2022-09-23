.data
out: .word 0xff 	#led, 初始全亮
in: .word 0 		#switch

.text
loop:
la a0, out		#仿真需要
sw x0, 0(a0) 		#test sw: 全灭led
addi t0, x0, 0xff 	#test addi: 全亮led
sw t0, 0(a0)
lw t0, 4(a0) 		#test lw: 由switch设置led
sw t0, 0(a0)
addi t0 x0 0x01
add t0 t0 t0
beq x0 t0 loop
jal loop
