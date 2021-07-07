;jump operations
;org 100h
;
;mov ax,00044h
;mov bx,0007h
;
;cmp ax,bx
;jl lower
;jg upper
;mov dx,0002h
;jmp done
;
;lower:
;mov dx,0001h
;jmp done  
;
;upper:
;mov dx,0003h
;
;done:ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

org 100h

mov ax,0044h           ;0004h is stored in ax
mov bx,0007h           ;0007h is stored in ax

cmp ax,bx              ;compares ax and bx 
jle x                  ;jumps to label x if ax <= bx, otherwise goes to next line
mov dx,0003h           ;moves 0003h in dx if ax > bx 
jmp done               ;jumps to label done because ax > bx

x: jl y                ;checks if ax < bx, if so jumps to label y
mov dx,0002h           ;moves 0002h in dx if ax = bx
jmp done               ;jumps to label done because ax = bx

y:
mov dx,0001h           ;moves 0002h in dx because ax < bx

done:ret
