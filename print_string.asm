org 0x7c00

mov ah, 0x0e
mov bx, my_string

start:
    mov al, [bx]
    cmp al, 0
    je done
    jmp print_char

done:
    jmp $

print_char:
    int 0x10
    add bx, 1
    jmp start

my_string:
    db 'Hello World!', 0

times  510-($-$$) db 0
dw 0xaa55

