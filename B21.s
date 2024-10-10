.data
frase: .string "YVAN EHT NIOJ"
.text
    la a1,frase
    jal reverseStr
    li a7,10
    ecall
    nop
reverseStr:
    addi a5,x1,0
    jal strLen
    loop2:
    lb a0,0(a2)
    li a7,11
    ecall
    addi a2,a2,-1
    addi a3,a3,-1
    bgez a3,loop2
    mv x1,a5
    ret
strLen:
    mv a2,a1
    loop:
    addi a3,a3,1
    addi a2,a2,1
    lb x6,0(a2)
    bne x6,x0,loop
    ret