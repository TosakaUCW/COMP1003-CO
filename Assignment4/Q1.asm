        .ORIG x3000
        
        AND R1, R1, #0  ; Initialize R1 to 0
        
ONE     LD  R0, A
        ADD R1, R1, R0
TWO     LD  R0, B
        ADD R1, R1, R0
THREE   LD  R0, C
        ADD R1, R1, R0
        
        ST R1, SUM
        TRAP x25
    
A       .FILL x0001
B       .FILL x0002
C       .FILL x0003
D       .FILL x0004
SUM     .BLKW x1    ; Reserve space for SUM    
    
        .END