.ORIG   x3000

MAIN  
        LEA     R0, PROMPT
        PUTS

        GETC
        OUT

        LD      R1, ASCII_ZERO
        NOT     R1, R1        
        ADD     R1, R1, #1    
        ADD     R2, R0, R1    
        BRz     PRINT_BYE
        JSR     TEST_NUMBER
        
TEST_NUMBER
        AND     R3, R2, #1
        BRp     PRINT_ODD
        BRz     PRINT_EVEN
        
PRINT_ODD    
        LEA     R0, ODD_MSG
        PUTS
        JSR MAIN
PRINT_EVEN
        LEA     R0, EVEN_MSG
        PUTS
        JSR MAIN 
PRINT_BYE
        LEA     R0, BYE_MSG
        PUTS
        HALT

PROMPT  .STRINGZ "Please enter a number: "
ODD_MSG .STRINGZ "\nThanks, this is an odd number.\n"
EVEN_MSG .STRINGZ "\nThanks, this is an even number.\n"
BYE_MSG .STRINGZ "\nBye!\n"
ASCII_ZERO .FILL x0030         

.END
