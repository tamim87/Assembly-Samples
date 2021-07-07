;
;; You may customize this and other start-up templates; 
;; The location of this template is c:\emu8086\inc\0_com_template.txt
;
;org 100h
;                       
;mov ah,0001h
;mov al,0008h 
;mov bh,0000h
;mov bl,0007h 
;mov ch,0000h
;mov cl,0008h 
;mov dh,0007h
;
;
;cmp ah,al
;jl l
;jg g
;l:mov ah,ah
;jmp x
;g:mov ah,al
;x:
;   
;   
;cmp bh,bl
;jl p
;jg q
;p:mov bh,bh 
;jmp y
;q:mov bh,bl
;y:
;   
;   
;cmp ch,cl
;jl r
;jg s
;r:mov ch,ch
;jmp z
;s:mov ch,cl
;z:
;   
;   
;cmp bh,ch
;jl a
;jg b
;a:mov bh,bh
;jmp w
;b:mov bh,ch
;w:
;    
;    
;cmp ah,dh
;jl c
;jg d
;c:mov ah,ah
;jmp v
;d:mov ah,dh
;v:
;   
;   
;cmp ah,bh
;jg h
;jl T
;h:mov dl,ah
;jmp done 
;T:mov dl,dh
;done:
;     
;ret
;  
;  

























;bubble sort
org 100h

mov dx, len-1
mov si,offset ar
   
l1:
mov di,si
inc di
mov cx,dx
    l2:
    mov al,[si]
    mov bl,[di]
    cmp al,bl
    jg swap
    
    resumeloop:
    inc di
    loop l2  
    
inc si
dec dx

cmp dx,0h
ja l1

ret  

swap:
mov [di],al
mov [si],bl
jmp resumeloop

ar db 'tamimwihediuwbcjbsd' 
len equ ( $ - ar )
