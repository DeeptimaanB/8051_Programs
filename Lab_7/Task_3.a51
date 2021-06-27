;Assuming that clock pulses are fed into pin T1 (P3.5). Write an 8051 assembly language program for counter 1 
;in mode 2 to count the pulses and display the state of the TL1 count on P1 which connects to 8 LEDs 

ORG 0000H
	REPEAT:MOV TMOD,#60H
	MOV TH1,#0
	SETB P3.5
	AGAIN:SETB TR1
	BACK:MOV A,TL1
	MOV P1,A
	JNB TF1,BACK
	CLR TR1
	CLR TF1
	SJMP REPEAT ;Deeptimaan Banerjee
