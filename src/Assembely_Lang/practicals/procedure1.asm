.MODEL SMALL
.DATA
    NUMS   DW 1131H,2122H,3123H,1122H
    LENGTH DW 0004H
    TOTAL  DW 0000H
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        LEA SI,NUMS
                      
        MOV AX,0000H
        MOV DX,0000H
        MOV CX,0000H
        MOV CX,LENGTH
        
        NEXT:
            CALL MYADD
            INC SI
            INC SI
        LOOP NEXT 
            
        MOV TOTAL,AX
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    
    MYADD PROC
        MOV DX,[SI]
        ADD AX,DX
        RET
    MYADD ENDP 