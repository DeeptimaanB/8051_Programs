;A switch is connected to port pin P0.1. Write an 8051 assembly language program to check the status 
;of the switch and perform the following 
;(i). If switch = 1 send a High to Low pulse to activate a siren connected to port pin P1.7 
;(ii). Continue monitoring the pin status 

ORG 0000H
	MOV P0,#0FFH
	MOV P1,#00H
	BACK:MOV C,P0.1 
	JNC OFF 
	SETB P1.7
	OFF:SJMP BACK	
	END ;Deeptimaan Banerjee
