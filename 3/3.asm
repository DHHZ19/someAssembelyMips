    .text
    li $a0, 0
    li $v0, 0 #set result to 1
loop:
    andi $t0, $a0, 1
    add $v0, $v0, $t0
    srl $a0, $a0, 1
    bne $a0, $zero, loop
