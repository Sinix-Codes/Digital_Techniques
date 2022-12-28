.model small
.stack 100
.data
    NUM1 dw 1234h
    NUM2 dw 2345h
    SUM  dw 0h
    
.code
    MAIN PROC
            MOV AX,@data
            MOV DS,AX
            
            MOV AX,NUM1
            ADD AX,NUM2
            MOV SUM,AX
    MAIN ENDP
    END MAIN