;Write an assembly language program to perform logical operations AND, OR, XOR on two eight bit numbers stored in internal 
;RAM locations 21h, 22h and store their result in the memory location 30h, 31h, 32h respectively. 

ORG 000H
MOV A,21H
MOV R0,A
MOV A,22H
ANL A,R0
MOV 30H,A

MOV A,21H
MOV R1,A
MOV A,22H
ORL A,R1
MOV 31H,A

MOV A,21H
MOV R2,A
MOV A,22H
XRL A,R2
MOV 32H,A
END ;Deeptimaan Banerjee
