		.data 
array:   4, 5, 6, 6, 8

	.text
	la $a0, array
	lw $s0, 4($s0) # get a[1]
    li $s1, 0 #set result to 0
    li $t0, 5 #get a five in a register
    beq $s0, $t0, end #if a[1] == 5 go to end
    subi $s1, $s0, 2 #set result to a[1] - 2

end: 
    sw $s1, 4($a0)