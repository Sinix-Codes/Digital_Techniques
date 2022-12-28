.MODEL SMALL
.STACK 100H
.DATA
    ARRAY DB 'PUNE'

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,4H
        LEA SI,ARRAY
        
        L1:
            MOV BX,[SI]
            PUSH BX
            INC SI 
            LOOP L1
            
        MOV CX,4H
        
        L2: 
            POP DX
            MOV AH,02
            INT 21H
            LOOP L2
            
        MOV AH,4CH
        INT 21H
     MAIN ENDP   