.MODEL SMALL
.DATA
    ARRAY DW 5120H,3214H,3454H,2132H
    COUNT DW 0004
    
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
                MOV DX,[SI+02H]
            
                CMP AX,DX
                JL  SWAP
            
                CONTINUE:
                    MOV [SI],AX
                    MOV [SI+02H],DX
                    
                INC SI
                INC SI      
                
                DEC BX
                JNZ SWAPLOOP   
         LOOP TRAVERSE
         
         SWAP:
            XCHG AX,DX
            JMP CONTINUE
            
         END:
            MOV AH,4CH
            INT 21H
            
    MAIN ENDP  
                     