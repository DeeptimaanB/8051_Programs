;Write an 8051 ALP to find whether given eight bit number is odd or even. 
;If odd store 00h in accumulator. If even store FFh in accumulator.

ORG 0000H
MOV A,55H
MOV C,ACC.0 
JC ODD 
MOV A,#0FFH 
SJMP END1
ODD:MOV A,#00H
END1:NOP
END ;Deeptimaan Banerjee
