.MODEL SMALL
.DATA
    ARRAY DB 21H,22H,11H,23H,09H
    COUNT DB 05H
    MAX   DB 0H
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
           
           
        MOV AX,0000H 
        MOV BX,0000H 
        MOV CX,0000H 
        MOV CL,COUNT
          
        MOV SI,OFFSET ARRAY
        
        MOV AL,[SI]
        
        UP:
            MOV BL,[SI]
            CMP AL,BL
            JG  LESSER
                 
      
        CONTINUE:
            INC SI
        LOOP UP
       
        MOV MAX,AL 
        MOV AH,4CH
        INT 21H
        
        LESSER:
            MOV AL,BL
            JMP CONTINUE 
              
     MAIN ENDP
        
              