ORG 0000H
            MOV P1,#00H
            MOV A, #01H
            MOV R1,#07
            MOV P1, A
    LOOP:    RL A
            MOV P1, A
            ACALL DELAY
            DJNZ R1, loop
            SJMP EXIT
    DELAY:  MOV R2,#04H
    HERE3:  MOV R1,#0FFH
    HERE2:  MOV R0,#0FFH
    HERE1:  DJNZ R0,HERE1
            DJNZ R1,HERE2
            DJNZ R2,HERE3
            RET 
    EXIT:   NOP
            END ;Deeptimaan Banerjee
