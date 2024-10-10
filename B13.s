.data
var: .word 100,200,65536,300,400,500,0
.text
    li a7,1
    la x5,var
loop:
    lw x6,4(x5)
    addi a0,a0,1
    addi x5,x5,4
    bne x6,x0,loop
    ecall
    