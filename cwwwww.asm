org 100h 

call packed_BCD_BIN  

packed_BCD_BIN proc near   
        pushf 
        push ax
        push bx
        push cx
        
        mov bl , '5'
        mov al , '9'
        
        and bl , 0fh   
        and al , 0fh
        
        rol bl , 04h
        or al , bl   
        
        
        
        
        
        
 
        
        mov cl,al
        and al,0fh
        and cl,0f0h
        
        rol al,04h
        ror cl,04h
        
        or al,cl
                
                
                
                
        pop cx
        pop bx 
        pop ax
        popf
        
        ret
        
packed_BCD_BIN endp


ret        










; practice
;org 100h
;
;
;mov bl , '5'
;mov al , '9'
;          
;;mov cl,0fh
;and bl,0fh
;and al,0fh
;                    
;rol bl,04h  
;or al,bl
;
;mov bl,al
;and al,0fh
;and bl,0f0h
;
;ror al,04h 
;ror bl,04h 
;
;or al , bl
;
;
;ret