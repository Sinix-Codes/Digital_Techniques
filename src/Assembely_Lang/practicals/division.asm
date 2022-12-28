.MODEL SMALL
.DATA
    NUM1 DW 2222H
    NUM2 DW 0011H
    QUO  DW 0000H
    REM  DW 0000H
 
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AX,NUM1
        MOV BX,NUM2
        
        DIV BX
        
        MOV QUO,AX
        MOV REM,DX
        
    MAIN ENDP
        