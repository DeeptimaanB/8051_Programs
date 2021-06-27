;Write an 8051 assembly language program to glow the LEDs connected on PORT1 one at a time in a serial fashion (from LSB to MSB) 
;continuously with 0.5 seconds delay for each . Verify the output using ESA 8051 Microcontroller kit.

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
