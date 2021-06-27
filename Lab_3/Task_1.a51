;Write a program to clear accumulator [A], then add 5 to the accumulator 20 times. 

ORG 0000H 
CLR A 
MOV R0,#20 
LOOP:ADD A,#05 
DJNZ R0,LOOP 
MOV R5,A 
END; Deeptimaan Banerjee 