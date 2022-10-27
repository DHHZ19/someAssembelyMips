.data
array: .word 1,2,3,4,5,6,7
iter: .word 0
size: .word 6
.text
main:
	la $t0, array # store the array in $a0
	lw $t1 iter   # store iterator
	lw $t2 size   # store size of the array
	
begin_loop:

bgt $t1, $t2 end_loop # if the iterator is graeter than the size of array then we know to end the loop

sll $t3, $t1, 2

addu $t3, $t3, $t0

lw $t6, 0($t3)

addu $s7, $s7 $t6

addi $t1, $t1,1

j begin_loop

end_loop:

li $v0, 1
la $a0, ($s7)
syscall