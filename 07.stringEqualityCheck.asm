;string equality checking
org 100h

mov si,offset str1            ;load starting address of str1 into si
mov di,offset str2            ;load starting address of str2 into di 
mov cx,len

cld                           ;clearing direction flag
repe cmpsb                    ;repeat until cx > 0 or string byte mismatch
jne not_equal                 ;jump to label if string byte mismatch
    mov res,'Y'               ;store 'Y' if no mismatch
    jmp done
    
not_equal:                              
    mov res,'N'               ;if string byte mismatch store 'N' into res
   
done:
ret                           ;transfers control to return address on stack

str1 db 'hakai'               ;initialization of str1
en equ ($ - str1)             ;length 5 stored into len
str2 db 'hakai'               ;initialization of str2
res db 0                      ;initialize variable to store result
