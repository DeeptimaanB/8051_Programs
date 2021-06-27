;Write an 8051 assembly language program using timers to blink the LED connected at P1.7 TON of 0.75 seconds and TOFF of 0.25 seconds. 
;Assume the crystal frequency as 11.0592 MHz. Verify the output using ESA 8051 Microcontroller kit.

ORG 0000H
    REPEAT: MOV TMOD,#10H
	MOV R0,#4
    BACK:MOV TL1,#00H
    MOV TH1,#00H
	CLR P1.7
    SETB TR1
AGAIN:JNB TF1,AGAIN
    CLR TR1
    CLR TF1
    DJNZ R0,BACK
	MOV TMOD,#01H
	MOV R1,#11
    BACK1:MOV TL0,#00H
    MOV TH0,#00H
	SETB P1.7
    SETB TR0
    AGAIN1:JNB TF0,AGAIN1
    CLR TR0
    CLR TF0
    DJNZ R1,BACK1
    SJMP REPEAT
    END ;Deeptimaan Banerjee
