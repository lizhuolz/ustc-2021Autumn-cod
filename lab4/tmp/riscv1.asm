.text
    addi x1, x0, 4    #x1=4
    sw x1, 0(x0)      #mem(0)=4
    addi x2, x0, 1    #x2=1

l1: 
    lw t0, 0x410(x0)  #wait vld=1
    beq t0, x0, l1
    
    

l2:	
    sub x1, x1, x2
    blt x2, x1, l2    # 1<x1 loop

    sw x1, 0(x0)      #mem(0)=1

    
    
    
