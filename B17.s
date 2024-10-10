.data
var: .word 100,1000,65536,65537,1000000,0
finvar:
.text
    la a1,var
    la a2,finvar
    sub a2,a2,a1
    srai a2,a2,2
    jal x1,printVector
    li a7,10
    ecall
printVector:
    li a7,1
    lw a0,0(a1)
    ecall
    li a7,11
    li a0,59
    ecall
    addi a1,a1,4
    addi a2,a2,-1
    bne a2,x0,printVector
    ret