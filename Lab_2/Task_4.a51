;Write an 8051 ASM program to perform subtraction of two 16-bit numbers. The numbers are 2762H and 1296H. 
;Place the sum in R7 and R6; R6 should have the lower byte. 

ORG 0000H 
MOV A,#62H 
SUBB A,#96H 
MOV R6,A 
MOV A,#27H 
SUBB A,#12H 
MOV R7,A 
END ;Deeptimaan Banerjee 