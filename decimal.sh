#/bin/bash
a=23.64
b=45.63

sum=` echo $a + $b | bc `
echo "the sum of two decimal numbers is $sum" 
