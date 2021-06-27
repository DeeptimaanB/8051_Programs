;Write an 8051 ASM program to perform multiplication of two 8-bit numbers present in data memory 
;address location 33H & 34H and store the result in 35H (higher byte) & 36H (Lower byte). 

ORG 0000H 
MOV A,33H 
MOV B,34H 
MUL AB 
MOV 35H,B 
MOV 36H,A 
END ;Deeptimaan Banerjee 