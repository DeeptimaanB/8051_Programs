;Write an 8051 assembly language program to implement a counter that counts from 00 to 99 (decimal). 
;Send each count value to port P1 continuously. Verify the output using ESA 8051 Microcontroller kit. 

ORG 000H
    MOV P1, #00H
    MOV A,#00H
    MOV P1,A
MOV R3,#01H
    BACK: ADD A,R3
    MOV P1,A
    ACALL DELAY
    CJNE A,#63H, BACK
	MOV A,#00H
	SJMP BACK
    DELAY:MOV R2,#04H
    HERE3:MOV R1,#0FFH
    HERE2:MOV R0,#0FFH
    HERE1:DJNZ R0,HERE1
    DJNZ R1,HERE2
    DJNZ R2, HERE3
    RET
    END ;Deeptimaan Banerjee
