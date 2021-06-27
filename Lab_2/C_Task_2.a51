;Write an 8051 ASM program to solve the following mathematical equation:  
;(a-b)2 = a2 + b2 – 2ab  
;Where “a” & “b” are values at memory location 55H & 56H and store the result in 57H (High byte) & 58H (Low Byte). 

ORG 0000H 
MOV A,55H 
MOV R2,56H 
SUBB A,R2 
MOV R1,A 
MOV B,R1 
MUL AB 
MOV 57H,B 
MOV 58H,A 
END ;Deeptimaan Banerjee 