
	.text
	li $a0, 5
    li $v0, 1 #set result to 1
loopStart:
    beq $a0, $zero, end
        sll $v0, $v0, 1
        subi $a0, $a0,1
    j loopStart
end: 
