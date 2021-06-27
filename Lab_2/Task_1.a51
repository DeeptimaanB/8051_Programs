;Write an 8051 ASM program to perform addition of two 8-bit numbers 
;97H and 76H and store the result at address location 55H 

ORG 0000H 
MOV A,#97H 
ADD A,#76H 
MOV 55H,A 
END ;Deeptimaan Banerjee 