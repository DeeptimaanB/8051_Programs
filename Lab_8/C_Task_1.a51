;Assume a switch is connected to a port pin P1.3. Monitor this port pin continuously, whenever P1.3 is HIGH perform 
;the transmission of “Hello” message to the serial port. 
;When P1.3 LOW, perform the receive operation on serial port and display it in port P2. 

ORG 0000H
	MOV P1,#0FFH
	MOV TMOD,#20H
	MOV TH1,#0FDH
	MOV SCON,#50H
	SETB TR1
	AGAIN: MOV C,P1.3 
	JNC LOW1 
	MOV A,#'H' 
	ACALL TRANS
	MOV A,#'E'
	ACALL TRANS
	MOV A,#'L'
	ACALL TRANS
	MOV A,#'L'
	ACALL TRANS
	MOV A,#'O'
	ACALL TRANS
	MOV A,#' '
	ACALL TRANS
	SJMP AGAIN 
	LOW1: JNB RI,LOW1
	MOV A,SBUF
	MOV P2,A
	CLR RI
	SJMP AGAIN 
	TRANS: MOV SBUF,A
	HERE:JNB TI,HERE
	CLR TI
	RET
	END ;Deeptimaan Banerjee
