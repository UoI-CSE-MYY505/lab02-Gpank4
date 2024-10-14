
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1    #the number to find 
prog:
    add s0, zero, zero
    beq s0, a1, exit_notfound
    slli t0, s0, 2
    add t0, t0, a0
    lw t1, 0(t0)
    beq t1, a2,exit_found
    addi s0, s0, 1
    j prog
exit_notfound:
    addi s0 , zero, -1
exit_found:
    add a0,s0 zero    
        
#-----------------------------
# Write your code here!

# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
