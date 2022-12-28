.MODEL SMALL 


MYSUB MACRO
     MOV AX,NUM1
     MOV BX,NUM2
     SUB AX,BX 
MYSUB ENDM


.DATA
    NUM1 DW 3021H
    NUM2 DW 1021H
    SUBTR DW ?
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
                    
        MYSUB
        
        MOV SUBTR,AX  
        
        MOV AH,4CH
        INT 21H
     MAIN ENDP