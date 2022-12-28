.MODEL SMALL
.DATA
    ARRAY DW 2323H,3120H,1102H,2102H
    COUNT DW 0004H
    
.CODE  
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,COUNT
        TRAVERSE:
            MOV BX,CX
            DEC BX
            JZ  END
            
            LEA SI,ARRAY
            
            SWAPLOOP:
                MOV AX,[SI]
                MOV DX,[SI+02]
                
                CMP AX,DX
                JG  SWAP
                
                CONTINUE:
                    MOV [SI],AX
                    MOV [SI+02],DX
                    
                
                INC SI
                INC SI
                
                DEC BX
                JNZ SWAPLOOP
         LOOP TRAVERSE
         
         END:
            MOV AH,4CH
            INT 21H
            
         SWAP:
            XCHG AX,DX
            JMP CONTINUE
    MAIN ENDP  
              
                    
    