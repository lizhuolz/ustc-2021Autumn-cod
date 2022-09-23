.text
main:

# initial variables
lw s1 0(x0)
lw s2 1(x0)

# counter s4 
li s4 1


# jump to fibo function
jal s10 fibo


# exit
exit:
add x0 x0 x0
jal t3,exit


fibo:

# add 2 values to s6 reg ( s2+s1->s6)
add s6 s1 s2

# data transfer ( s2->s1, s6->s2)
sw s2 8(s7)
lw s1 8(s7)

sw s6 8(s7)
lw s2 8(s7)

sw s6, 0x408(x0)  #out1=f0
# add counter value
addi s4 s4 1

# check if the calculate cycles reach our goal. we set it to 9 cycles now.
li a5 2 
jal s8,fibo


