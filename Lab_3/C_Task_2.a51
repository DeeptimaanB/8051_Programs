;Write an 8051 ASM program to move a block of five data using conditional statements from 50H RAM to External 
;ROM memory 4000H to do addition and store the result in 5000H (High Byte) and 5001H(Lower Byte). 

ORG 0000H 
MOV R0,#50H 
MOV R1,#05H 
MOV DPTR,#4000H 
MOVE: MOV A,@R0 
MOVX @DPTR,A 
INC R0 
INC DPTR 
DJNZ R1,MOVE 
MOV R1,#05H 
MOV DPTR,#4000H 
MOVX A,@DPTR 
ADDR: MOV R0,A 
INC DPTR 
MOVX A,@DPTR 
ADDC A,R0 
JNC NEXT 
INC R2 
NEXT: DJNZ R1,ADDR 
MOV A,R0 
MOV DPTR,#5001H 
MOVX @DPTR,A 
MOV A,R2 
MOV DPTR,#5000H 
MOVX @DPTR,A 
NOP 
END; Deeptimaan Banerjee 