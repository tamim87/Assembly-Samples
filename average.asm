
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
                   
mov ah,0001h
mov al,0008h 
mov bh,0000h
mov bl,0007h 
mov ch,0000h
mov cl,0008h 
mov dh,0007h


cmp ah,al
jl a
jg b
a:mov ah,ah
jmp x
b:mov ah,al
x:
   
   
cmp bh,bl
jl c
jg d
c:mov bh,bh 
jmp y
d:mov bh,bl
y:
   
   
cmp ch,cl
jl e
jg f
e:mov ch,ch
jmp z
f:mov ch,cl
z:
   
   
cmp bh,ch
jl g
jg h
g:mov bh,bh
jmp w
h:mov bh,ch
w:
    
    
cmp ah,dh
jl i
jg j
i:mov ah,ah
jmp v
j:mov ah,dh
v:
   
   
cmp ah,bh
jg k
jl l
k:mov dl,ah
jmp done 
l:mov dl,dh
done:




                       
mov ah,0001h
mov al,0008h 
mov bh,0000h
mov bl,0007h 
mov ch,0000h
mov cl,0008h 
mov dh,0007h


cmp al,ah
jl m
jg n
m:mov ah,ah
jmp xx
n:mov ah,al
xx:
   
   
cmp bl,bh
jl p
jg q
p:mov bh,bh 
jmp yy
q:mov bh,bl
yy:
   
   
cmp cl,ch
jl r
jg s
r:mov ch,ch
jmp zz
s:mov ch,cl
zz:
   
   
cmp ch,bh
jl aa
jg bb
aa:mov bh,bh
jmp ww
bb:mov bh,ch
ww:
    
    
cmp dh,ah
jl cc
jg dd
cc:mov ah,ah
jmp vv
dd:mov ah,dh
vv:
   

mov al,dl

 
cmp bh,ah
jge hh
jl TT
hh:mov dl,ah
jmp dn 
TT:mov dl,dh
dn:

mov ah,00 

mov bl,al
mov al,dl
mov dl,bl

sub al,dl
      
     
mov bl,02

div bl


mov dl,01h
cmp ah,dl
jl even
mov bl,0Dh
jmp exit
    even:mov bl,0Eh
exit:



   
ret
  
