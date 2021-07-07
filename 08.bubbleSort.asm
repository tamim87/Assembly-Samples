;bubble sort
org 100h

mov dx, len-1
mov si,offset ar           ;load starting address of ar into si
   
l1:                        ;outer loop start
mov di,si                  ;load si into di which contains starting address of ar
inc di                     ;incrementing di
mov cx,dx                  ;load dx into cx which contains length of ar
    l2:                    ;inner loop start
    mov al,[si]            ;load number pointed by si into al
    mov bl,[di]            ;load number pointed by di into bl
    cmp al,bl              ;comparing al and bl
    jg swap                ;jumps if al > bl 
    
    resumeloop:
    inc di                 ;incrementing di
    loop l2                ;repeat inner loop
    
inc si                     ;incrementing si
dec dx                     ;decrementing dx

cmp dx,0h                  ;comparison for continueing inner loop 
ja l1                      ;repeat loop1

ret  

swap:                      ;for swaping two numbers
mov [di],al                ;mov number stored in al to memory location pointed by di
mov [si],bl                ;mov number stored in bl to memory location pointed by si
jmp resumeloop             ;jump to continue loop2 instructions
                            
                            
ar db 09h ,06h ,05h ,06h ,02h                 ;input
len equ ( $ - ar )                            ;length of the input
