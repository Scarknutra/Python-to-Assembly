.data
listitem1: .word 3
listitem2: .word 4
listitem3: .word 5
listitem4: .word 6
listitem5: .word 7
i: .word 0
listleng: .word 5
.text
whileloop:	lw $t1, i
		lw $t2, listleng
		ble $t1, $t2, print
		li $v0, 0
		syscall
		
print:		
		li $v0, 4
		la $a0, listitem1
		syscall
		li $v0, 4
		la $a0, listitem3
		syscall
		li $v0, 4
		la $a0, listitem5
		syscall
		li $v0, 10
		syscall 