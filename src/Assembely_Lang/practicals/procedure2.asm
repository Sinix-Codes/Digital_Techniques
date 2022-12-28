.model small
.stack 100h
.data
    string db 'KUNAL'

.code
    main proc
        mov ax,@data
        mov ds,ax
        
        lea si,string
        
        mov cx,05h
        
        l1:
            mov bx,[si]
            push bx
            inc si 
        loop l1
        
        mov cx,05h 
        
        call output
        
        mov ah,4ch
        int 21h
    main endp
    
    output proc
        pop bx
            up:
                pop dx
                mov ah,02h
                int 21h
                loop up
        push bx
        ret
    output endp