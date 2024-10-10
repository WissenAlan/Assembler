.data
    cadena: .string "Largo del vector: "
    vector: .word 1,10,100,200,20,300,29
    finvector:

.text
    la a0,cadena
    li a7,4
    ecall
    la x5,finvector
    la x6,vector
    sub a0,x5,x6
    srli a0,a0,2
    li a7,1
    addi x5,x0,-2
    ecall