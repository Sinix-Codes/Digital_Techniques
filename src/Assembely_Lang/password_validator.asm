;password validation-8086
.model small
.stack 100h
.data
    inp        db 'Enter password please - $'
    pass       db 'Sinix05'
    count      dw 13
    correct    db 'Correct Password (o_o) , Logging In ... $'
    notcorrect db 'Sorry , Invalid password$'
    wel        db '|  Welcome To Password Validator  |$'
.code
    
main PROC
    
    begin:mov  ax,@data
          mov  ds,ax
       
          mov  cx,count
        
          mov  bx,offset pass
                            
          ;Beautifying Otput
          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,9
          mov  ah,2
          int  21h

          mov  dl,9
          mov  ah,2
          int  21h

          mov  dl,9
          mov  ah,2
          int  21h


                                             
          mov  dx,offset wel
          mov  ah,9
          int  21h

          ;Beautifying Otput
          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,13
          mov  ah,2
          int  21h

          mov  dl,9
          mov  ah,2
          int  21h
               
          mov  dx,offset inp
          mov  ah,9
          int  21h
   


    again:mov  ah,1
          int  21h

          cmp  al,[bx]
          jne  error
          inc  bx
          loop again

        
          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,13
          mov  ah,2
          int  21h
        
        
        
          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,10
          mov  ah,2
          int  21h

          mov  dl,13
          mov  ah,2
          int  21h
          
          mov  dl,9
          mov  ah,2
          int  21h

          mov  dx,offset correct
          mov  ah,9
          int  21h
          jmp  over

    error:

          mov  dl,10
          mov  ah,2
          int  21h
          mov  dl,10
          mov  ah,2
          mov  dl,10
          mov  ah,2
          int  21h
          mov  dl,13
          mov  ah,2
          int  21h
          mov  dl,9
          mov  ah,2
          int  21h


          mov  dx,offset notcorrect
          mov  ah,9
          int  21h
                 
                 
    over: 
          mov  ah,1
          int  21h

          MOV  ah,4ch
          int  21h
    
           
           
           

main ENDP
 end main