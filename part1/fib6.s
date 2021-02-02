.data
	f0: .word 0
	f1: .word 1

.global main
main:
	ldr r0, addressF0
	ldr r0, [r0]
	ldr r1, addressF1
	ldr r1, [r1]
	add r0, r0, r1		// f_0 + f_1
	add r1, r0, r1		// f_2 + f_1
	add r0, r0, r1		// f_3 + f_2
	add r1, r0, r1		// f_4 + f_3
	add r0, r0, r1		// f_5 + f_4
	bx lr

addressF0: .word f0
addressF1: .word f1

