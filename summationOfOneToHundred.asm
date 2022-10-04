			
			#summation of 1 to 100 should be 5050
			 Top:  beq  $s0, 100, Exit
			 add  $s0, $s0, 1
			 add $s1, $s1, $s0
                        j    Top
    			Exit:
