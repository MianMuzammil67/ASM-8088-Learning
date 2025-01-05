[ORG 0x100]

section .text
    ; Initialize the sum to 0
    xor ax, ax

    ; Load the digits directly into registers
    mov bl, 2
    add al, bl
    mov bl, 2
    add al, bl
    mov bl, 0
    add al, bl
    mov bl, 4
    add al, bl
    mov bl, 2
    add al, bl
    mov bl, 1
    add al, bl
    mov bl, 6
    add al, bl
    mov bl, 0
    add al, bl
    mov bl, 9
    add al, bl

    ; Check if the sum is even or odd
    test al, 1
    jz even

    ; If odd, store 0 in BX
    mov bx, 0
    jmp done

even:
    ; If even, store 1 in BX
    mov bx, 1

done:
    ; Terminate the program
    mov ah, 0x4C
    int 0x21