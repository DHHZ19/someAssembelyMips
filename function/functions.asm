# functions
		.data 
		
		.text ##
		
		j main 
		
	Sum: 
           	#p1 -> $s4 p2 -> $s5
           	add $s4, $a0, $a2 # p1 = w + y
           	add $s5, $a1, $a3 # p2 = x + z
           	add $v0, $s4, $s5 # p3		
		
		# int p1, p2;
                 #   p1 = w + y;       
                  #  p2 = x + z;      
                   # return p1 + p2;
		jr $ra
	main: 		
		
		addi $s0, $zero, 5  # a = 5
		addi $s1, $zero, 7  # b = 7
		addi $s2, $zero, 12 
		
		
		add $a0, $s0, $zero # put a into the first param
		add $a1, $s1, $zero # put b into the second param
		add $a2, $s1, $zero # put b into the third param
		add $a3, $s2, $zero # put a into 
		jal Sum # jump to sum and asave this adress +4 to $ra
			# this is the label
		add $s2, $v0, $zero      # c gets the reutn value of Sum
		add $s0, $s2, $s2	 # a = 2c
		add $s0, $s0, $s1 	# a = a - b
		
		# reset the paramter to do another function call
		
		add $a0, $s0, $zero # put a into the first param
		add $a1, $s1, $zero # put b into the second param
		add $a2, $s1, $zero # put b into the third param
		add $a3, $s2, $zero # put a into 
		jal Sum	
		add $s2, $v0, $zero      # c gets the reutn value of Sum
		add $s0, $s2, $zero	 # a = 2c
		add $s0, $s0, $s1 	# a = a - b