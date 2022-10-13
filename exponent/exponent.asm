              	#	In-class exercise: Have main prompt the user to enter two integers: base and exponent.  
               	#	Pass these two inputs to a recursive power function you write that returns base^exponent.  Print the result.
              .data
 		promt: .asciiz "\nEnter one number: "
		promt1: .asciiz "\nEnter Another Number"
		

 	 main:
        	.text
 		#Promt the user to enter number 1.
 		li $v0, 4
 		la $a0, promt
 		syscall 

 		#Get the user's age
 		li $v0, 5
 		syscall

 		#Store the result in $t0
 		move $t0, $v0
                
                jal power
                
                #exit
                li $v0, 10
                syscall
               
               power:
               
               subi $sp, $sp, 12 #create a frame of 3 words
               sw $ra, 8($sp)
               sw $s0, 0($sp)
               sw $s1, 0($sp)
               
               
               bne $a1, $zero, notBase
               	    li $v0, 1	     					
               	    
             notBaseCase:
             addi $s0, $a0, 0 # save base
             addi $s1, $a1, 0 #save exp
             srl  $a1, $a1, 1 #exp/2
             jal power # call power (base, exp/2)
             mul $v0, $v0, $v0
             andi $t0, $s1, 1  # 0 means even 1 means odd
             beq $t0, $zero, end #jump to end if even
             	mul $v0, $v0, $s0 # ret = ret * base
             end: 
       	      lw $s1, 0($sp)
       	      lw $s0, 4($sp)
       	      lw $ra, 8($sp)
       	      addi $sp, $sp, 12
       	      jr $ra
       	        
               
               
               