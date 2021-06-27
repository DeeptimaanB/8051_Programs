;Write an 8051 ASM program to perform division on 8-bit numbers present in data memory address location 33H & 34H and 
;store the result in 35H (Reminder) & 36H (Quotient). 

ORG 0000H 
MOV A,33H 
MOV B,34H 
DIV AB 
MOV 35H,B 
MOV 36H,A 
END ;Deeptimaan Banerjee 