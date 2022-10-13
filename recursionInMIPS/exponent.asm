	.data
pmt1:  	.asciiz "Please enter a base: "
pmt2: 	.asciiz "Please enter an exponent: "
retPmt:	.asciiz "The result is: "
	
	.text
main:
	#prompt user to enter base
	li $v0, 4
	la $a0, pmt1
	syscall
	#get the base value from the user
	li $v0, 5
	syscall
	addi $t0, $v0, 0 #save the base to t0 for now
	
	#prompt user to enter exp
	li $v0, 4
	la $a0, pmt2
	syscall
	#get the exp value from the user
	li $v0, 5
	syscall
	addi $a1, $v0, 0 #save the expo to a1 which is param for power
	addi $a0, $t0, 0 #move base to a0
	
	jal power  #call the function
	
	add $t0, $v0, $zero #move result to $t0
	#print results prompt
	li $v0, 4
	la $a0, retPmt
	syscall
	#print number save in t0
	li $v0, 1
	addi $a0, $t0, 0
	syscall
	#exit
	li $v0, 10
	syscall 
	
power:
	subi $sp, $sp, 12 #create a frame of 3 words
	sw $ra, 8($sp)
	sw $s0, 4($sp)
	sw $s1, 0($sp)
	
	bne $a1, $zero, notBase
		li $v0, 1
		j end
notBase:
	addi $s0, $a0, 0 #save base	
	addi $s1, $a1, 0 #save exp
	srl $a1, $a1, 1 #exp/2
	jal power #call power (base, exp/2)
	mul $v0,$v0, $v0 #ret = ret * ret
	andi $t0,$s1, 1 # 0 means even 1 means odd
	beq $t0, $zero, end #jump to end if even
		mul $v0,$v0, $s0 #ret = ret * base
		
end:
	lw $s1, 0($sp)
	lw $s0, 4($sp)
	lw $ra, 8($sp)
	addi $sp, $sp, 12
	jr $ra