	int power(int base, int exp)
        if(exp === 0){
        return 1;
        }
        int ret = power (base, exp/2)
        ret = ret * ret;
        if(exp % 2 == 1){
        ret = ret * base;
        }
       return ret;