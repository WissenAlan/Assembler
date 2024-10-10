.data
var: .word 100,200,65536,300,400,500,0
finvar:
.text
    li a7,1
    la x5,var
    la x7,finvar
loop:
    addi a0,a0,1
    addi x5,x5,4
    bne x5,x7,loop
    ecall
    