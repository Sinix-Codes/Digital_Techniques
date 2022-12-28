.model small
.stack 100
.data
    NUM1 dw 2684H
    NUM2 DW 1573H
    RES  DW 00H
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AX,NUM1
        MOV BX,NUM2
        
        SUB AX,BX
        
        MOV RES,AX       
        MOV AH,4CH
        INT 21
    MAIN ENDP
    END MAIN
    
    