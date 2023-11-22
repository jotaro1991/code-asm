.model small
.stack
.data
    num1 db ?
    num2 db ?
    result db ?
    crlf db 0Dh, 0Ah, '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Capturar primer dígito
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num1, al

    ; Capturar segundo dígito
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num2, al

    ; Sumar los dos dígitos
    mov al, num1
    add al, num2
    mov result, al

    ; Mostrar el resultado
    mov ah, 09h
    lea dx, crlf
    int 21h
    mov dl, result
    add dl, '0'
    mov ah, 02h
    int 21h

    ; Salir del programa
    mov ah, 4Ch
    int 21h
main endp

end main