.text 

addi t0, x0, 1
auipc t1, 0
blt t0, x0, end
sub t0, x0, t0
jalr x0, 4(t1)
end: