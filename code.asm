DATA SEGMENT

    LISTA DB 00H, 01H, 02H, 03H, 04H
    LISTB DB 05H, 06H, 07H, 08H, 09H 

DATA ENDS
          
          
          
CODE SEGMENT 
    

    ASSUME DS:DATA,CS:CODE

    START:

        MOV AX,DATA
        MOV DS,AX

        MOV CX,05H
        LEA SI,LISTA
        LEA DI,LISTB
         

        HERE:
            MOV AL,DS:[SI]
            MOV AH,DS:[DI]
            MOV DS:[DI],AL
            MOV DS:[SI],AH
            INC SI
            INC DI
            LOOP HERE 
            
                
        END START

CODE ENDS
        