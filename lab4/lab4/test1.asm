.text 

lw t1, 4(x0)
loop:
lw t0, 0(x0)
beq t0, t1, end
add t1, t1, t1
sw t1, 0(x0)
jal loop
end:
