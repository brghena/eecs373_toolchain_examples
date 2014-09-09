    .equ    STACK_TOP,  0x20000800
    .text
    .syntax unified
    .thumb
    .global _start


    .type   start,  %function

_start:
    .word   STACK_TOP,  start

start:
    movs r0, #10
    movs r1, #0
loop:
    adds r1, r0
    subs r0, #1
    bne.n  loop
deadloop:
    b.n    deadloop
    .end
