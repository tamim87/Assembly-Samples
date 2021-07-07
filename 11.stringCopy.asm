;Moving a string to another string

;org 100h
;
;mov si,offset str1
;mov di,offset str2
;mov cx,len
;
;x:
;    mov bl,[si]
;    mov [di],bl
;    inc si
;    inc di
;loop x
;ret
;
;str1 db 'namespace'
;str2 db 10 dup(0)
;len equ ($ - str1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


org 100h

mov si,offset str1         ;load starting address of str1 into si
mov di,offset str2         ;load starting address of str2 into di
mov cx,len                 ;storing length into cx

cld                        ;clearing direction flag
rep movsb                  ;repeat and move string bytes

ret                        

str1 db 'namespace'        ;input

len equ ($ - str1)         ;length of string 
str2 db 10 dup(0)          ;string for copying
