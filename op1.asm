.model small
.stack
.data
    ; se colocan las variables a utilizar y los mensajes que se muestran
    n1 db 0
    n2 db 0
    r db 0
    msg1 db 10,13,7, 'suma:   ' , '$'
    msg2 db 10,13,7, 'Resta:   ' , '$'
    msg3 db 10,13,7, 'Producto:   ' , '$'
    msg4 db 10,13,7, 'Division:   ' , '$'
    msg0 db 10,13,7, 'Ingreso un numero:   ' , '$'

.code
main proc
    mov ax, seg @data
    mov ds, ax
    ;codigo para ingresar dos digitos
    ; primer digito
    mov ah, 09h 
    lea dx, msg0
    int 21
    
    mov ah, 01h
    int 21h 
    sub al, 30h
    mov n1, al

    ;segundo digito
   
    mov ah, 09h 
    lea dx, msg0
    int 21
    
    mov ah, 01h
    int 21h 
    sub al, 30h
    mov n2, al

    ;suma

    mov al, n1
    add al, n2
    mov r, al

    mov ah, 09h 
    lea dx, msg1
    int 21h

    ;mostrar el resultado

    mov al,r
    AAM
    mov bx,ax
    mov ah, 02h
    mov dl, bh
    add dl, 30h
    int 21h


    .exit


main endp
end main