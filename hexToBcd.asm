;hex to bcd
org 100h


mov al,0Fh 
mov bl,0Ah

div bl
ror al,04h
or al,ah


ret




