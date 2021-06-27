;Write an 8051 assembly language program to toggle bit of P1.7 for every 1 second. 
;Assume the crystal frequency as 33MHz. Verify the output using ESA 8051 microcontroller kit. 

ORG 0000H
	MOV TMOD,#10H
	REPEAT:MOV R0,#21
	CPL P1.7
	BACK:MOV TL1,#00H
	MOV TH1,#00H
	SETB TR1
	AGAIN:JNB TF1,AGAIN
	CLR TR1
	CLR TF1
	DJNZ R0,BACK
	SJMP REPEAT
	END ;Deeptimaan Banerjee
