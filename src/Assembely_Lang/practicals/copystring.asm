.MODEL SMALL
.DATA
    SOURCE DB 'SINIX'
    DEST   DB ?

.CODE
    MAIN PROC 
        MOV AX,@DATA
        MOV DS,AX 
        MOV ES,AX
                     
        LEA DI,DEST             
        LEA SI,SOURCE        
        
        MOV CX,5H
        
        REP MOVSB
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP        