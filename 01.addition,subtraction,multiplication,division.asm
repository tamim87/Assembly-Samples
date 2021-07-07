;addition, subtraction, multiplication, division
org 100h 

mov ax, 0007h           ;0007h stored in ax
mov bx, 0032h           ;0032h stored in bx
add ax,bx               ;0007h and 0032h is added and result is stored in ax

mov ax, 000Ah           ;000Ah stored in ax
mov bx, 0004h           ;0004h stored in bx
sub ax,bx               ;0004h is subtracted from 000Ah and result 06h is  stored in ax

mov ax, 000Ch           ;000Ch stored in ax
mov bx, 0003h           ;0003h stored in bx
mul bx                  ;000Ch is multiplied by 0003h and result 0024h is stored in ax

mov ax, 0057h           ;000Ah stored in ax
mov bx, 0004h           ;000Ah stored in ax
div bx                  ;0057h is multiplied by 0004h and quotient 0015h is stored in ax and remainder 0003h is stored in dx
   
ret      
   