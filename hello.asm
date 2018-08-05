;
; A simple  boot  sector  that  prints a message  to the  screen  using a BIOS  routine.
;
mov ah, 0x0e    ; teletype mode (tty)
mov al, 'H'     ; char to write to
int 0x10        ; print char on sreen
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
jmp $           ; Jump to the  current  address (i.e.  forever).
;
; Padding  and  magic  BIOS  number.
;
times  510-($-$$) db 0  ; Pad  the  boot  sector  out  with  zeros
                        ; $ means address at the beginning of the line
                        ; $$ means address at the beginning of the session (file)
dw 0xaa55               ; Last  two  bytes  form  the  magic  number ,
; so BIOS  knows  we are a boot  sector.
