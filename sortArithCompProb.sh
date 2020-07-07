echo "**********Sorting Arithmetic Computation Problem**********"

#!/bin/bash -x

read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

val1=`expr $a + $b '*' $c`
echo "a+(b*c):" $val1
