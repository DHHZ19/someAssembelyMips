if(a > b){
a += b;
} else{
b += a;
}

  slt $t0, $s0, $s1 #asks a > b
  bne $t0, $zero, else: # sets the value
  add $s1, $s1, $s0 #if true does this
  
  j end
  
  else:
  add $s0, $s0, $s1, #if flase does this
  end:
