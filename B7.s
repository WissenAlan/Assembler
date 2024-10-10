.text
    li a7,11
    li a1,57
    li x5,33
loop:
    li a0,91
    ecall
    mv a0,x5
    ecall
    li a0,93
    ecall
    addi x5,x5,1
    ble x5,a1,loop # <=
    li a7,10
    ecall
