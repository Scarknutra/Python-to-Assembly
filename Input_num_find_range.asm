.data
maxnum: .word 0
minnum: .word 0
i: .word 0
size: .word 0
range: .word 0
list: .word 0 

.text
get_list_size:		addi $v0, $0, 5
			syscall
			sw $v0, size

create_the_list:	#list creation in relation to size specified
			lw $t0, size
			addi $t1, $0, 4
			mult $t1, $t0
			mflo $t2
			add $a0, $t2, $t1
			addi $v0, $0, 9
			syscall
			sw $v0, list
			sw $t0, ($v0)
			
			sw $0, i
loop:			lw $t0, i
			lw $t1, size
			lw $t2, list
			addi $t3, $0, 4
			mult $t3, $t0
			mflo $t4
			add $t4, $t4, $t3
			add $t4, $t4, $t2
			sw $v0, ($t4)
			addi $t0, $t0, 1
			sw $t0, i
			j loop
			
			addi $t0, $0, 0
loop2:			lw $t1, list
			lw $t2, ($t1)
			addi $t3, $0, 4
			mult $t3, $t0
			mflo $t4
			add $t4, $t4, $t3
			add $t4, $t4, $t1
			lw $a0, ($t4)
			addi $v0, $0, 1
			syscall
			addi $a0, $0, 32
			addi $v0, $0, 11
			syscall
			addi $t0, $t0, 1
			j loop2
		
			
			
			
			
			
			
			
