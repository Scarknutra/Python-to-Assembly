.data
year: .word 2012
four: .word 4
hundred: .word 100
fourhundred:  .word 400
yes: .asciiz "is a leap year"
no: .asciiz "is not a leap year"
remain4: .word 0
remain100: .word 0
remain400: .word 0
.text

input:
	
main:
	#load year
	lw $t1, year
	#find if divides by 4
	rem $t2, $t1, 4
	sw $t2, remain4
	#find if divides by 100
	rem $t2, $t1, 100
	sw $t2, remain100
	#find if divides by 400
	rem $t2, $t1, 400
	sw $t2, remain400
	#cnditionals for remainders
	lw $t2, remain4
	beq $t2, $zero, isaleap1
	lw $t2, remain400
	beq $t2, $zero, isaleap2

isaleap1:
	# double check if divisible by 4
	lw $t2, remain100
	beq $t2, $zero, isnot
	li $v0, 4
	#print and exit
	la $a0, yes
	syscall
	li $v0, 10
	syscall
isaleap2:
	#print yes and exit
	li $v0, 4
	la $a0, yes
	syscall
	li $v0, 10
	syscall 




isnot:
	#print that it isnt and exit
	li $v0, 4
	la $a0, no
	syscall
	li $v0,10
	syscall