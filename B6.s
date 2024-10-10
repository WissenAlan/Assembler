.text
    li a7,11
    li a1,57
    li a0,33
loop:
    ecall
    addi a0,a0,1
    ble a0,a1,loop # <=
    li a7,10
    ecall
