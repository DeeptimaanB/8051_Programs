;Write a program for the 8051 to receive bytes of data serially 
;and put them in P1, set the baud rate at 4800, 8-bit data and 1 stop bit.

ORG 0000H
	MOV TMOD,#20H
	MOV TH1,#0FDH
	MOV SCON,#50H
	SETB TR1
	HERE:JNB RI,HERE
	MOV A,SBUF
	MOV P1,A
	CLR RI
	SJMP HERE
	END ;Deeptimaan Banerjee
