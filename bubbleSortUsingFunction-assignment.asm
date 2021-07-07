;bubble sort using function
org 100h

mov dx, len-1
mov si,offset ar

call bubblesort 
jmp done
  
bubblesort proc near
    pushf 
    push dx 
    push si
      
    l1:
    mov di,si
    inc di
    mov cx,dx
        l2:
        mov al,[si]
        mov bl,[di]
        cmp al,bl
        jg swap
        
        cont:
        inc di
        loop l2  
        
    inc si
    dec dx
    cmp dx,0h
    ja l1 
    
    pop si
    pop dx
    popf
    ret  
    
    swap:
    mov [di],al
    mov [si],bl
    jmp cont

bubblesort endp

done:
ret

ar db 09h ,06h ,05h ,03h ,02h  
len equ ( $ - ar )     
