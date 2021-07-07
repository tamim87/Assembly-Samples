;bcd to binary
org 100h
   
mov al,num1
mov bl,04h
call bcdToBinary          ;calling the function bcdToBinary

mov num2,al
jmp done

bcdToBinary proc near 
    pushf                 ;pushing flag values to stack
    push ax               ;pushing ax values to stack
    push bx               ;pushing bx values to stack
    push dx               ;pushing dx values to stack
    
    
    mov bl,al             ;copy al to bl
    and bl,0fh            ;bitwise AND operation with 0fh which will keep first nibble same and make second nibble zero through masking
    and al,0f0h           ;bitwise AND operation with 0f0h which will keep second nibble same and make first nibble zero through masking
    
    ror al,04h            ;rotate left 4 times
    mov dl,0ah            ;moving 0ah to dl
    mul dl                ;multiplying 05h stored in al with dl
    
    add al,bl             ;adding 032h and 06h and storing to al
    
 
    pop dx               ;poping dx values from stack 
    pop bx               ;poping bx values from stack
    pop ax               ;poping ax values from stack
    popf                 ;poping flag values from stack 
    
    ret    
    bcdToBinary endp      ;ending the process bcdToBinary
done:
ret

num1 db 056h
num2 db 0
