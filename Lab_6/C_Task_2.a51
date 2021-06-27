;Write an 8051 assembly language program to glow the LEDs connected on PORT1 in a serial fashion (from LSB to MSB) 
;continuously with 0.5 seconds delay for each . Verify the output using ESA 8051 Microcontroller kit.

ORG 000H
    MOV P1, #00H
    MOV A,#01H
    MOV P1,A
	MOV B,#02H
BACK:MUL AB
	INC A
    MOV P1,A
    ACALL DELAY
	MOV B,#02H
    CJNE A,#0FFH, BACK
	MOV A,#01H
	SJMP BACK
    DELAY:MOV R2,#04H
    HERE3:MOV R1,#0FFH
    HERE2:MOV R0,#0FFH
    HERE1:DJNZ R0,HERE1
    DJNZ R1,HERE2
    DJNZ R2, HERE3
    RET
    END ;Deeptimaan Banerjee
