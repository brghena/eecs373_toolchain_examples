    .equ    STACK_TOP,  0x20000800
    .text
    .syntax unified
    .thumb
    .global _start


    .type   assembly_function,  %function

_start:
    .word   STACK_TOP,  start

    .thumb_func
start:
    movs r0, #0
    movs r1, #0
    bl c_function
deadloop:
    b.n    deadloop

    .thumb_func
    .global asm_function
asm_function:
    movs r7, #5
    bx lr
    .end
