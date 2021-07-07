;bcd to binary
org 100h
   
mov al,03h
call packedBCD

jmp done

packedBCD near proc
    pushf
    push ax
    push bx
    push cx
    
    
    mov bl,'5'
    mov al,'9'
    
    and al ,0fh
    and bl ,0fh
    
    rol bl,04h
    or al,bl
    
    
    
    pop cx
    pop bx
    pop ax
    popf   
    
    ret    
    packedBCD endp

done:
ret




