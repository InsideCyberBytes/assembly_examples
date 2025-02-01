
_start:
    ; Print the message
    mov edx, len                    ; Message length
    mov ecx, msg                    ; Address of the message
    mov ebx, 1                      ; File descriptor (stdout)
    mov eax, 4                      ; System call number (sys_write)
    int 0x80                        ; Call kernel

    ; Perform arithmetic: result = num1 + num2
    mov eax, [num1]                 ; Load num1 into eax
    add eax, [num2]                 ; Add num2 to eax
    mov [result], eax               ; Store the result

    ; Simple loop: decrement eax until it reaches zero
    mov ecx, 5                      ; Loop counter
loop_start:
    dec ecx                         ; Decrement the counter
    cmp ecx, 0                      ; Compare with zero
    jne loop_start                  ; Jump if not zero
