;Assume that the INT1 pin is connected to a switch that is normally high. 
;Whenever it goes low, it should turn on an LED. The LED is connected to P1.3 and is normally off. 
;As long as the switch is pressed low, 
;the LED should stay on. Simultaneously perform a toggle operation in P1.5 with the delay of 500ms.

ORG 0000H
    LJMP MAIN
    ORG 0013H
        SETB P1.3
        MOV R3,#255
        BACK: DJNZ R3,BACK
        CLR P1.3
        RETI
        ORG 30H
        MAIN:  MOV IE,#10000100B
        HERE: SETB P1.5
            ACALL DELAY
            CLR P1.5
            ACALL DELAY
            SJMP HERE
            /*DELAY OF 500MS*/
            DELAY: MOV R2,#04H
            HERE3: MOV R1,#0FFH
            HERE2: MOV R0,#0FFH
            HERE1: DJNZ R0,HERE1
            DJNZ R1,HERE2
            DJNZ R2,HERE3
            RET
            END ;Deeptimaan Banerjee
