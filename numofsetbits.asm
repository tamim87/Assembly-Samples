org 100h

.data
num db 0FFh
setBit db 0h

.code
mov cx, 8h
mov al, num

outer:
    mov bl, al
    mov dl, 1h
    and bl, dl
    cmp bl, 1h
    je inc_set_bits
    back_to_outer:
        shr al, 1
        loop outer
ret

inc_set_bits:
    inc setBit
    jmp back_to_outer