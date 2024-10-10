.data
texto: .string "Hola mundo!"
.text
    la a1,texto
    jal PrintLen
    li a7,10
    ecall
    nop
PrintLen:
    addi a0,a0,1
    addi a1,a1,1
    lb x6,0(a1)
    bne x6,x0,PrintLen
    li a7,1
    ecall
    ret