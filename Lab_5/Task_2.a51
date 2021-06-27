;Write an 8051 assembly language program to create a square wave of 66% duty cycle on bit 3 of port 1.

ORG 000H
CLR P1.3
BACK:SETB P1.3
ACALL DELAY
ACALL DELAY
CLR P1.3
ACALL DELAY
SJMP BACK
DELAY:MOV R2, #200
HERE:DJNZ R3,HERE
RET
END ;Deeptimaan Banerjee
