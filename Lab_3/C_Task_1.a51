;Write an 8051 ASM program to add the first 15 natural numbers. 

ORG 0000H 
MOV R1,#01H 
MOV R2,#15 
CLR A 
BEGIN: ADD A,R1 
INC R1 
DJNZ R2,BEGIN 
END; Deeptimaan Banerjee 