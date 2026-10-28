.global _start

.text
_start:
    mov     x0, #1              // fd 1
    adr     x1, msg
    mov     x2, #3              // length
    mov     x8, #64             // sys_write
    svc     #0

    mov     x0, #0
    mov     x8, #93             // sys_exit
    svc     #0

.section .rodata
msg:
    .ascii "yq\n"

.section .note.GNU-stack,"",@progbits
