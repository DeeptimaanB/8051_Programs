ORG 0000H
	CLR P1.0 
	CLR P1.1 
	SETB P0.2 
	SETB P0.1 
	SETB P0.0 
	MOV C,P0.2 
	JC INPUT1
	MOV A,#00H 
	BACK1: MOV C,P0.1
	JC INPUT2
	MOV R0,#00H
	BACK2:XRL A,R0 
	MOV C,ACC.0 
	ANL C,P0.0 
	MOV P1.0,C
	MOV C, P0.2 
	ANL C,P0.1 
	ANL C,P1.0
	MOV C,P0.0
	JC INPUT3
	MOV R0,#00H
	BACK3:XRL A,R0 
	MOV C,ACC.0
	MOV P1.1,C
	SJMP END1
	INPUT1: MOV A,#01H
	SJMP BACK1
	INPUT2: MOV R0,#01H 
	SJMP BACK2
	INPUT3:MOV R0,#01H
	SJMP BACK3
	END1: NOP
END ;Deeptimaan Banerjee
