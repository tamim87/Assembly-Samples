;counting number of vowels
org 100h

mov si,offset str     ;load starting address of str into si
mov cx,len            ;store length into cx
cmp cx,0              ;check if array length is zero or not
je done

repeat:
    mov al,[si]           ;load current character into al
    inc si                ;incrementing si
    
    cmp al,'a'            ;check if character is a or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'e'            ;check if character is e or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'i'            ;check if character is i or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'o'            ;check if character is o or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'u'            ;check if character is u or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'A'            ;check if character is A or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'E'            ;check if character is E or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'I'            ;check if character is I or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'O'            ;check if character is O or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    cmp al,'U'            ;check if character is U or not
    je is_vowel           ;if vowel, jump to label for swapping
    
    resumeloop:           ;jumps here after swap operation
    loop repeat           ;loop instruction

done:
ret                     

is_vowel:             ;
inc count             ;increment vowel count
jmp resumeloop        ;jump to continue loop execution
                      
str db 'tamim'        ;input
len equ ($-str)       ;length of the string
count db dup(0)       ;variable for vowel count
