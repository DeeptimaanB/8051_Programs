ORG 0000H
    SETB P0.1
    MOV P1,#0FFH
    AGAIN1: JNB P0.1,AGAIN1
    MOV A,P1
    CLR P0.2
    ACALL DELAY
    SETB P0.2
    DELAY: MOV R2,#200
    AGAIN: MOV R3, #250
    HERE: NOP
          NOP
          DJNZ R3,HERE
          DJNZ R2,AGAIN
          RET
END ;Deeptimaan Banerjee
