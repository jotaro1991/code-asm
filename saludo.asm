.model small
.data
    mensaje db 'Buenas tardes, Hernan Dario Zapata. cedula 1087554374$', 0

.code
main:
    mov ah, 09h         ; Función para imprimir cadena
    lea dx, mensaje    ; Cargar la dirección de la cadena en dx
    int 21h            ; Llamar al servicio de interrupción 21h para imprimir la cadena

    mov ah, 4Ch        ; Función para salir del programa
    int 21h            ; Llamar al servicio de interrupción 21h para salir

end main
