;To write an ALP for the generation of the square pulse of 50% duty cycle with on time of 10 ms using timer 0 and 
;simultaneously send ‘Y’ and ‘N’ to port 0 and port 1 respectively. Assume that XTAL = 11.0592 MHz.

ORG 0x0000H
	ACALL MAIN
	LJMP BACK
ORG 0x150H
BACK:MOV A, #'Y'
	MOV P0, A
	MOV A, #'N'
	MOV P1, A
	SJMP BACK 
ORG 0x000BH
	CPL P2.7
	ACALL MAIN
	RETI
ORG 0x100H
MAIN:MOV TMOD, #0x0001
	MOV P0, #0x00FF
	MOV TH0, #0xFC
	MOV TL0, #0x66
	MOV IE, #82H
	SETB TR0
	RET
END ;Deeptimaan Banerjee
