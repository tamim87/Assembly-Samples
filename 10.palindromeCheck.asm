;Palindrome check
org 100h

mov si,offset input         ;load starting address of str into si    
mov di,end                  ;load last address of str into di

mov ax,len                  ;load length into ax
cmp ax,0001h                ;if string length is 0 or 1, string is a palindrome
jle done                    ;jumps if length <= 1

mov bx,0002h                ;store 02h in bx 
div bx                      ;divide ax by bx 
mov cx,ax                   ;load ax which is half length of string; into cx
            
f:                          ;comparing characters from front and back
mov al,[si]                 ;load character pointed by si into al
mov bl,[di]                 ;load character pointed by di into bl
inc si                      ;incrementing si
dec di                      ;decrementing di

cmp al,bl                   ;compare al and bl
jne break                   ;if al != bl, exit from loop

loop f                      ;loop instruction
jmp done                    ;if no mismatch found, string is palindrome

break:                      
mov sol,'N'                 ;store 'N' into sol, in case of mismaatch
                            
done:                       
ret                         
                                
input db 'kayak'            ;input
end equ $-1                 ;address of last character
len equ $ - input           ;length of input
sol db 'Y'                  ;storing 'Y' for palindrome