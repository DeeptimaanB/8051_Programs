;Write an 8051 ASM program to read a temperature value (T) from RAM 
;location 55H. According to the test results, place the temperature value into 
;the registers indicated below: 
;If T=30H then A=30H 
;If T<30H then R1=T 
;If T>30H then R2=T 

ORG 0000H 
MOV A,55H 
CJNE A,#30H,OVER 
SJMP EXIT 
OVER: JNC NEXT 
MOV R1,A 
SJMP EXIT 
NEXT:MOV R2,A 
EXIT:NOP 
END; Deeptimaan Banerjee 