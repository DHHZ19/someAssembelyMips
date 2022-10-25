add $t0, $zero, $zero # i is initialized to 0, $t0 = 0
Loop: // stuff
addi $t0, $t0, 1 # i ++
slti $t1, $t0, 4 # $t1 = 1 if i < 4
bne $t1, $zero, Loop # go to Loop if i < 4