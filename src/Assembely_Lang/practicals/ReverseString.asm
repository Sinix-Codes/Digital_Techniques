.MODEL SMALL
.STACK 100
.DATA
    STRING DB 'LANUK'
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        MOV SI,OFFSET STRING
        
        MOV CX,05
        L1:
            MOV BX,[SI]
            PUSH BX
            INC SI
            LOOP L1
                   
        MOV CX,05
        L2:
            POP DX
            MOV AH,02
            INT 21H
            LOOP L2
               
        MOV AH,4CH
        INT 21H   
    MAIN ENDP
            