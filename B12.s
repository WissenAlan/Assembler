.data
var: .word 100,200,65536,300,400,500
.text
    li a7,1
    la a0,var
    lw a0,8(a0)
    
    ecall