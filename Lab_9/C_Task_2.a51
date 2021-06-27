;Assume that pin 3.3 (INT1) is connected to a pulse generator, write a program in which the 
;falling edge of the pulse will send a high to P1.3, which is connected to a buzzer. In other words, 
;the buzzer is turned on and off at the same rate as the pulses are applied to the INT1 pin.

ORG 000H
	LJMP MAIN
	ORG 013H
		SETB P1.3
		MOV R3,#255
	BACK: DJNZ R3,BACK
	      CLR P1.3
		  RETI
		  ORG 30H
		  MAIN: SETB TCON.2
		        MOV IE,#10000100B
		  HERE: SJMP HERE
		  END ;Deeptimaan Banerjee
