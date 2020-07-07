echo "**********Sorting Arithmetic Computation Problem**********"

#!/bin/bash -x

read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

val1=`expr $a + $b '*' $c`
val2=`expr $a '*' $b + $c`
val3=`expr $c + $a / $b`


echo "a+(b*c):" $val1
echo "(a*b)+c:" $val2
echo "c+(a/b):" $val3
