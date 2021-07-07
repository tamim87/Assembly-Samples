;Finding maximum and minimum using array
;Roll : 1807087
org 100h

mov si,offset input  ;move starting address of array into si
mov cx,len           ;store length into cx for controling loop

mov dh,00h         ;take dh for storing maximum
mov dl,0fh         ;take dl for storing minimum
   
for: 
    mov al,[si]    ;temporarily store number in AL for comparing
    cmp al,00h     ;if current num is zero then jump to next operation
    je next
    cmp al,dh      ;check if max in dh can be updated
    jg updmax1     ;jump to updmax1 if al > dh
    jmp ckmin1
    
    updmax1:
    mov dh,al      ;updating maximum in dh
    
    ckmin1:
    cmp al,dl      ;check if min in dl can be updated
    jl updmin1     ;jump to updmin1 if al < dl
    jmp next
    
    updmin1:
    mov dl,al      ;updating minimum in dl
     
    next: inc si   ;incrementing si to access next number
loop for 
 
ret

input db 01h , 08h , 00h , 07h , 00h , 08h , 07h 
len equ ($ - input)
