;Password Matching
org 100h

mov cx,len                   ;storing length into cx
mov si,offset str1           ;load starting address of str1 into si
mov di,offset str2           ;load starting address of pass into di

cld                          ;clearing direction flag
repe cmpsb                   ;repeat equal and compare string bytes

jne no_match                 ;jump to label if mismatch 

mov ax,0000h                 ;store 0000h into ax

jmp done                     ;jump to label done

no_match: mov ax,0001h       ;store 0001h into ax

done: ret                    

str1 db 'space'              ;input
len equ ($ - str1)           ;length of string
str2 db 10 dup(0)            ; string for storing pass
