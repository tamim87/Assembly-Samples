;Grading System
org 100h

mov ax,0068h            ; input
mov dh,00h              ; result

mov bx,040h
cmp ax,bx               ;compare ax with bx
jae one                 ;jumps if ax >= 040h
    mov dh,0Fh          ;ax < 040h so moves 0Fh to dh
    jmp done            ;jumps to label done

one:
    mov bx,045h
    cmp ax,bx           ;compare ax with bx
    jae two             ;jumps if ax >= 045h
        mov dh,0Dh      ;ax < 045h so moves 0Dh to dh
        jmp done        ;jumps to label done

two:
    mov bx,050h
    cmp ax,bx           ;compare ax with bx
    jae three           ;jumps if ax >= 050h
        mov dh,0Ch      ;ax < 050h so moves 0Ch to dh
        jmp done        ;jumps to label done

three:
    mov bx,055h
    cmp ax,bx           ;compare ax with bx
    jae four            ;jumps if ax >= 055h
        mov dh,0C1h     ;ax < 055h so moves 0C1h to dh
        jmp done        ;jumps to label done

four:
    mov bx,060h
    cmp ax,bx           ;compare ax with bx
    jae five            ;jumps if ax >= 060h
        mov dh,0B0h     ;ax < 060h so moves 0B0h to dh
        jmp done        ;jumps to label done

five:
    mov bx,065h
    cmp ax,bx           ;compare ax with bx
    jae six             ;jumps if ax >= 065h
        mov dh,0Bh      ;ax < 065h so moves 0Bh to dh
        jmp done        ;jumps to label done

six:
    mov bx,070h
    cmp ax,bx           ;compare ax with bx
    jae seven           ;jumps if ax >= 070h
        mov dh,0B1h     ;ax < 070h so moves 0B1h to dh
        jmp done        ;jumps to label done
        
seven:
    mov bx,075h
    cmp ax,bx           ;compare ax with bx
    jae eight           ;jumps if ax >= 075h
        mov dh,0A0h     ;ax < 075h so moves 0A0h to dh
        jmp done        ;jumps to label done

eight:
    mov bx,080h
    cmp ax,bx           ;compare ax with bx
    jae nine            ;jumps if ax >= 080h
        mov dh,0Ah      ;ax < 080h so moves 0A0h to dh
        jmp done        ;jumps to label done

nine:
    mov dh,0A1h         ;ax >= 080h so moves 0A1h to dh

done:
ret