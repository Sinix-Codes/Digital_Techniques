.MODEL SMALL
.DATA
    ARRAY  DB 10H,20H,30H,25H
    LENGTH DB 04H
    SUM    DB 00H

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI,ARRAY
    MOV CL,LENGTH    
    MOV AL,00H
    
    NEXT:
        MOV DL,[SI]
        ADD AL,DL
        INC SI
    LOOP NEXT
    
    MOV SUM,AL
    MAIN ENDP     

