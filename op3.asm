section .data
    num1    dd 10     ; Primer número (puedes cambiar el valor)
    num2    dd 20     ; Segundo número (puedes cambiar el valor)
    resultado dd 0    ; Variable para almacenar el resultado

section .text
    global _start

_start:
    ; Sumar los dos números
    mov eax, [num1]   ; Cargar el primer número en el registro eax
    add eax, [num2]   ; Sumar el segundo número al registro eax
    mov [resultado], eax  ; Almacenar el resultado en la variable resultado

    ; Tu código puede continuar aquí, por ejemplo, imprimir el resultado o realizar otras operaciones.

    ; Terminar el programa
    mov eax, 1        ; Número de la llamada al sistema para salir (sys_exit)
    xor ebx, ebx      ; Código de retorno 0
    int 0x80          ; Llamar al sistema

section .bss
    ; Puedes agregar una sección .bss para variables no inicializadas si es necesario.