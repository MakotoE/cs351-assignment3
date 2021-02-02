.global _start
_start:
    mov r0, #10		;# a
    mov r1, #5		;# b
    mov r2, #3		;# c

    ;# a = b++ + c++;
    add r0, r1, r2		;# a = b + c
    add r1, r1, #1		;# b++
    add r2, r2, #1		;# c++

    ;# b = --c + a;
    add r2, r2, #-1	    ;# --c
    add r1, r2, r0		;# b = c + a

    ;# c+= a + b++;
    add r3, r0, r1		;# d = c + a
    add r2, r3, r2		;# c = d + b
    add r1, r1, #1		;# b++

    ;# a + b + c;
    add r3, r0, r1		;# d = a + b
    add r0, r3, r2		;# r0 = d + c
