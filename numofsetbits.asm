;number of setbits    
;credits: nabil faiyaz sadi

org 100h

mov cx, 8h
mov al, num

for:
    mov bl, al
    mov dl, 1h
    and bl, dl
    cmp bl, 1h
    je inc_set_bits
    resumeloop:
        shr al, 1
        loop for
ret

inc_set_bits:
    inc setBitCount
    jmp resumeloop   


num db 0FFh
setBitCount db 0h   
       