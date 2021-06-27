;Write a timer interrupt program that continuously get 8-bit data from P0 and sends it to P1 
;while simultaneously creating a square wave of 200 μs period on pin P2.1. Use timer 0 to create the square wave. Assume thatXTAL = 11.0592 MHz.


ORG 0000H
	LJMP MAIN
	ORG 000BH
		CPL P2.1
		RETI
		MAIN: MOV TMOD,#02H
		MOV P0,#0FFH
		MOV TH0,#155
		MOV IE,#82H
		SETB TR0
		BACK: MOV A,P0
		MOV P1,A
		SJMP BACK
		END ;Deeptimaan Banerjee
