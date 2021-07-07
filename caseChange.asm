;case changing
org 100h
         
mov cx,len
mov si,offset str

toupper:
    mov al,[si]

    sub al,020h;
    mov [si],al   
    inc si
    loop toupper
                 
;tolower:
;    mov al,[si]
;
;    add al,020h;
;    mov [si],al   
;    inc si
;    loop tolower
                     
ret

str db 'bsdf'
len equ ($-str)

