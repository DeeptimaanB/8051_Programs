;Write an 8051 ASM program to perform addition of two 16-bit numbers. 
;The numbers are 3CE7H and 3B8DH. Place the sum in R7 and R6; R6 should have the lower byte 

ORG 0000H 
MOV A,#0E7H 
ADD A,#8DH 
MOV R6,A 
MOV A,#3CH 
ADDC A,#3BH 
MOV R7,A 
END ;Deeptimaan Banerjee 