; Program to read buffered input from user, print a greeting message, and echo the input
; This program is written for DOS using DOS interrupt services (int 0x21)

[org 0x0100]          ; Define starting address of the program (0x0100 for .COM files)
jmp start             ; Jump to the 'start' label, skipping the buffer and message definitions

; Define a message string that will be displayed to the user
message: 
    db 10, 13, 'hello ', 10, 13, '$'   ; Line feed and carriage return before and after 'hello ' text, and end with '$' (for DOS service 9)

; Define a buffer for storing user input
buffer:              
    db 80               ; Maximum length of the buffer (80 bytes)
    db 0                ; Number of characters input by the user (this will be updated later)
    times 80 db 0       ; Actual space for user input (80 bytes initialized to 0)

start: 
    ; Set up for buffered input
    mov dx, buffer      ; Load the address of the buffer into the DX register (buffer where input will be stored)
    mov ah, 0x0A        ; DOS interrupt service 0x0A (Buffered Input)
    int 0x21            ; Call interrupt 21h, service 0x0A to read input

    ; After input, buffer structure looks like:
    ; buffer[0] = 80    ; Maximum buffer size
    ; buffer[1] = n     ; Number of characters actually entered by the user (this will be updated by DOS)
    ; buffer[2] = input ; The input characters are stored from buffer[2] onwards

    mov bh, 0           ; Clear the BH register (it will be unused here)
    mov bl, [buffer+1]  ; Load the actual size of input (number of characters) from buffer[1] into BL

    ; Append '$' at the end of the user input (necessary for DOS string handling)
    mov byte [buffer+2+bx], '$'  ; Store '$' character after the user input

    ; Display the greeting message ("hello ")
    mov dx, message     ; Load the address of the greeting message into DX
    mov ah, 9           ; DOS interrupt service 9 (print string)
    int 0x21            ; Call interrupt 21h, service 9 to print the message

    ; Display the user input
    mov dx, buffer+2    ; Load the address of the user input (starts at buffer[2])
    mov ah, 9           ; DOS interrupt service 9 (print string)
    int 0x21            ; Call interrupt 21h, service 9 to print the user input

    ; Terminate the program
    mov ax, 0x4C00      ; Prepare to terminate the program (service 0x4C)
    int 0x21          ; Call interrupt 21h, service 0x4C to exit the program
