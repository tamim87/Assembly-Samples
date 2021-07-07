;sum of series using loop
org 100h

mov cx,10              ;store 10 into cx to control the flow of loop

for: 
    mov ax,cx          ;storing the current number into ax
    mul ax             ;multiplying the number with itself
    add sum,ax         ;add the multiplied number to sum             

loop for               ;loop instruction
ret

sum dw 0               ;using sum to store the result