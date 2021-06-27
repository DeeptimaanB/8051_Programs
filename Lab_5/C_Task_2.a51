;Write an 8051 assembly language program to create a square wave of 75% duty cycle on bit 3 of port 1.

ORG 0000H
	MOV P1,#00H 
	BACK: SETB P1.3
	ACALL DELAY
	ACALL DELAY
	ACALL DELAY
	CLR P1.3 
	ACALL DELAY
	SJMP BACK
	DELAY: MOV R2,#04H
	HERE3:MOV R1,#0FFH
	HERE2:MOV R0,#0FFH
	HERE1: DJNZ R0,HERE1
	DJNZ R1,HERE2
	DJNZ R2,HERE3
	RET
	END ;Deeptimaan Banerjee
