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
