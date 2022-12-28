.MODEL SMALL
.DATA
    NUM1 DW 2134H
    NUM2 DW 8213H     
    PROD DW 0H

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AX,NUM1
        MOV BX,NUM2
        
        MUL BX 
        MOV PROD,AX
                
        INT 21H
    MAIN ENDP
        