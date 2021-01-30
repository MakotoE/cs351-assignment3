.data:
f0: .byte 0
f1: .byte 1

.global _start
_start:
ldr r0, =f0
ldr r1, =f1
add r0, r0, r1		; f_0 + f_1
add r1, r0, r1		; f_2 + f_1
add r0, r0, r1		; f_3 + f_2
add r1, r0, r1		; f_4 + f_3
add r0, r0, r1		; f_5 + f_4
bx lr


