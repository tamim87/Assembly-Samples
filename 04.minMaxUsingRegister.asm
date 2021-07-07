;Finding maximum and minimum using registers 
;Roll : 1807087
org 100h
          
mov ah,01h
mov al,08h 
mov bh,00h
mov bl,07h 
mov ch,08h
mov cl,07h

mov dh,00h     ;take dh for storing maximum
mov dl,0Ah     ;take dl for storing minimum
   
   
cmp ah,00h     ;if current num is zero then jump to next operation
je next2
cmp ah,dh      ;check if max in dh can be updated
jg updmax1     ;jump to updmax1 if ah > dh
jmp ckmin1

updmax1:
mov dh,ah      ;updating maximum in dh

ckmin1:
cmp ah,dl      ;check if min in dl can be updated
jl updmin1     ;jump to updmin1 if ah < dl
jmp next2

updmin1:
mov dl,ah      ;updating minimum in dl




next2:
cmp al,00h     ;if current num is zero then jump to next operation
je next3
cmp al,dh      ;check if max in dh can be updated
jg updmax2     ;jump to updmax2 if al > dh
jmp ckmin2

updmax2:
mov dh,al      ;updating maximum in dh

ckmin2:
cmp al,dl      ;check if min in dl can be updated
jl updmin2     ;jump to updmin2 if al < dl
jmp next3

updmin2:
mov dl,al      ;updating minimum in dl


  
  
next3:
cmp bh,00h     ;if current num is zero then jump to next operation
je next4
cmp bh,dh      ;check if max in dh can be updated
jg updmax3     ;jump to updmax3 if bh > dh
jmp ckmin3

updmax3:
mov dh,bh      ;updating maximum in dh

ckmin3:        ;check if min in dl can be updated
cmp bh,dl
jl updmin3     ;jump to updmin3 if bh < dl
jmp next4

updmin3:
mov dl,bh      ;updating minimum in dl


   
   
next4:
cmp bl,00h     ;if current num is zero then jump to next operation
je next5
cmp bl,dh      ;check if max in dh can be updated
jg updmax4     ;jump to updmax4 if bl > dh
jmp ckmin4

updmax4:
mov dh,bl      ;updating maximum in dh

ckmin4:
cmp bl,dl      ;check if min in dl can be updated
jl updmin4     ;jump to updmin4 if bl < dl
jmp next5

updmin4:
mov dl,bl      ;updating minimum in dl

       
       

next5:
cmp ch,00h     ;if current num is zero then jump to next operation
je next6
cmp ch,dh      ;check if max in dh can be updated
jg updmax5     ;jump to updmax5 if ch > dh
jmp ckmin5

updmax5:
mov dh,ch      ;updating maximum in dh

ckmin5:
cmp ch,dl      ;check if min in dl can be updated
jl updmin5     ;jump to updmin5 if ch < dl
jmp next6

updmin5:
mov dl,ch      ;updating minimum in dl

     
     

next6:
cmp cl,00h     ;if current num is zero then jump to next operation
je next7
cmp cl,dh      ;check if max in dh can be updated
jg updmax6     ;jump to updmax6 if cl > dh
jmp ckmin6

updmax6:
mov dh,cl      ;updating maximum in dh

ckmin6:
cmp cl,dl      ;check if min in dl can be updated
jl updmin6     ;jump to updmin6 if cl < dl
jmp next7

updmin6:
mov dl,cl      ;updating minimum in dl


next7: ret
