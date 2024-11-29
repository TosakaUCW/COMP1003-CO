        .ORIG   x3000     
MAIN    LEA     R2, MSG   
        JSR     PRINT_LOOP
STOP    HALT              

PRINT_LOOP
        LDR     R1, R2, #0
        BRz     STOP
        ADD     R0, R1, #0
        OUT               
        ADD     R2, R2, #1
        BRnp    PRINT_LOOP

MSG     .STRINGZ "Hello world"
             .END
