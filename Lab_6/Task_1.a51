;Write an 8051 assembly language program to toggle all the bits of P1 for every 500ms (0.5 Seconds). 
;Assume the crystal frequency as 11.0592 MHz. Verify the output using ESA 8051 Microcontroller kit.

ORG 0000H
	MOV P1,#00H
	BACK:MOV A,#55H
	MOV P1,A
	ACALL DELAY
	MOV A,#0AAH
	MOV P1,A
	ACALL DELAY
	SJMP BACK
	DELAY: MOV R2,#04H
	HERE3:MOV R1,#0FFH
	HERE2:MOV R0,#0FFH
	HERE1:DJNZ R0,HERE1
	DJNZ R1,HERE2
	DJNZ R2,HERE3
	RET
	END ;Deeptimaan Banerjee
