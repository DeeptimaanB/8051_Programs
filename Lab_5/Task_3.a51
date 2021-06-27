;Write a program to monitor the port pin P0.1 until it becomes high  
;(a). when P0.1 becomes high read the data from port 1 to A 
;(b). send a low-to-high pulse on p.0.2 to indicate that data has been read 

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
