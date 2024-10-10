.data
texto: .string "Hola mundo!"
.text
    la a1,texto
    jal StrLen
    li a7,1
    ecall
    li a7,10
    ecall
    nop
StrLen:
    li a0,0
    mv a2,a1
    loop:
    addi a0,a0,1
    addi a2,a2,1
    lb x6,0(a2)
    bne x6,x0,loop
    ret