;Write an 8051 ASM program to perform subtraction of two 8-bit numbers 
;76H and 97H and store the result at address location 55H. 

ORG 0000H 
MOV A,#97H 
SUBB A,#76H 
MOV 55H,A 
END ;Deeptimaan Banerjee 