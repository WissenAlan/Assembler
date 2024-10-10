.data
palabra: .string "una"
frase: .string "Esto es una frase de prueba"
palabra2: .string "no"
.text
    li a7,1
    la a2,palabra
    la a3,frase
    jal contiene
    ecall
    la a2,palabra2
    la a3,frase
    jal contiene
    ecall
        
    li a7,10
    ecall
    nop
    
contiene:
    addi x5,x1,0
    loop2:
        jal strCmp
        
    bne a5,x0,loop2
    li a0,0
    mv x1,x5
    ret
    
strCmp:
    addi x6,x1,0
    mv a6,a2
    loop:
        lb a4,0(a6)
        lb a5,0(a3)
        addi a0,a4,0
        sub a0,a0,a5
        addi a3,a3,1
        bne a0,x0,distinto
        addi a6,a6,1
        lb a4,0(a6)
    bne a4,x0,loop
    li a0,1
    mv x1,x5
    ret
    
distinto:
    mv x1,x6
    ret