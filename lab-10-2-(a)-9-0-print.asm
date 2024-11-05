org 100h
jmp start

input1 db "The Characters 0-9 in reverse order: $"

start: 

   mov dx,offset input1
   mov ah,09h
   int 21h   
            
   mov cx,10
   mov dl,'9'
   
  print_loop:
   MOV AH, 02h     ; BIOS interrupt for printing a character
 
   INT 21h         ; Print the character in AL
   

    DEC dl 
             
    loop print_loop  ; loop until cx is 0
     
    
            
  mov ah,4Ch
  int 21h
  
  ret        
   