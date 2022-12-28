.MODEL SMALL

MYADD MACRO
    MOV AL,NUM1
    MOV BL,NUM2
    
    ADD AL,BL
MYADD ENDM


.DATA
    NUM1 DB 32H
    NUM2 DB 12H
    SUM  DB ?

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MYADD
    
    MOV SUM,AL
    
    MOV AH,4CH
    INT 21H  
    
    MAIN ENDP
    
 