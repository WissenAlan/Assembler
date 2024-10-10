.data
cadena1: .string "Hola Mundo!"
cadena2: .string "Ingrese cadena de texto"
cadena3: .string "Hola Mundo!"
cadena4: .string "Hola Mundo! mas largo"
.text
    li a7,1
    la a4,cadena1
    la a5,cadena2
    jal strCmp
    ecall
    la a5,cadena3
    jal strCmp
    ecall
    la a5,cadena4
    jal strCmp
    ecall
    
    li a7,10
    ecall
    nop
strCmp:
    addi x5,x1,0
    mv a6,a4
    la s2,cadena2
    addi s2,s2,-1
    loop:
        lb a1,0(a6)
        lb a2,0(a5)
        addi a0,a1,0
        sub a0,a0,a2
        addi a6,a6,1
        addi a5,a5,1
        bne a0,x0,distinto
    bne a6,s2,loop
    ret
    
distinto:
    li a0,-1
    mv x1,x5
    ret