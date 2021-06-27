;Write an 8051 assembly language program to toggle all the bits of P0 
;for every 0.5 seconds. Assume the crystal frequency as 11.0592 MHz.

ORG 0000H
	MOV P1,#00H 
	BACK: MOV A,#55H 
	MOV P1,A
	ACALL DELAY 
	MOV A,#0AAH 
	MOV P1,A
	ACALL DELAY
	SJMP BACK
	DELAY:MOV R2,#04H 
	HERE3:MOV R1,#0FFH
	HERE2:MOV R0,#0FFH
	HERE1:DJNZ R0,HERE1
	DJNZ R1,HERE2
	DJNZ R2,HERE3
	RET
	END ;Deeptimaan Banerjee
