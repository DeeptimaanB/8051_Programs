;Write an 8051 assembly language program using timers to generate a 
;frequency of 2kHz on pin port pin P2.7. Assume the crystal frequency as 11.0592 MHz. 

ORG 0000H
    MOV TMOD,#01H
    BACK:MOV TL0,#01AH
    MOV TH0,#0FFH
    SETB TR0
        AGAIN:JNB TF0,AGAIN
        CLR TR0
        CPL P2.7
        CLR TF0
        SJMP BACK
        END ;Deeptimaan Banerjee
