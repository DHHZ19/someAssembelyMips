if(a > b){
a += b;
} else{
b += a;
}

  slt $t0, $s0, $s1 #asks a > b
  bne $t0, $zero, else: # asks if $t0, != $zero if true then branch of to else: label
  add $s1, $s1, $s0 # this is the statment called if they are equal
  
  j end
  
  else:
  add $s0, $s0, $s1, #if flase does this
  end:
