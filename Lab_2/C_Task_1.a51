;Write an 8051 ASM program to solve the following mathematical equation:  
;W=(Y+3Z-6X)/6D  
;Where D=03H, X=02H, Y=25H and Z=12H 

ORG 0000H 
MOV A,#03H 
MOV B,#06H 
MUL AB      
MOV R1,A 
MOV A,#02H 
MOV B,#06H 
MUL AB      
MOV R2,A 
MOV A,#12H 
MOV B,#03H 
MUL AB      
SUBB A,R2   
ADD A,#25H  
MOV B,R1 
DIV AB 
END ;Deeptimaan Banerjee 