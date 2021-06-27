;Write an ALP to compare two eight bit numbers NUM1 and NUM2 stored in external memory 
;locations 8000h and 8001h respectively. Reflect your result as: 
;If NUM1<NUM2, SET LSB of data RAM location 2FH (bit address 78H). 
;If NUM1>NUM2, SET MSB of location 2FH (bit address 7FH). 
;If NUM1 = NUM2, then CLR both LSB & MSB of bit addressable memory location 2FH. 

ORG 0000H
MOV DPTR,#8000H
MOVX A,@DPTR
MOV R0,A
INC DPTR
MOVX A,@DPTR
CLR C
SUBB A,R0
JZ EQUAL
JNC SMALL
SETB 7FH
SJMP END1
SMALL: SETB 78H
SJMP END1
EQUAL: CLR 78H
CLR 7FH
END1:NOP
END ;Deeptimaan Banerjee
