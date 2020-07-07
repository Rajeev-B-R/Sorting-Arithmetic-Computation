echo "**********Sorting Arithmetic Computation Problem**********"

#!/bin/bash -x

read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

printf "\n"

val1=`expr $a + $b '*' $c`
val2=`expr $a '*' $b + $c`
val3=`expr $c + $a / $b`
val4=`expr $a % $b + $c`

echo "a+(b*c):" $val1
echo "(a*b)+c:" $val2
echo "c+(a/b):" $val3
echo "(a%b)+c:" $val4

printf "\n"

declare -A resultDict=([1]=$val1 [2]=$val2 [3]=$val3 [4]=$val4)
arrResult=${resultDict[@]}

echo "All result values: ${resultDict[@]}"
echo "All array values: ${arrResult[@]}"

printf "\n"

sortResultD=$(printf '%s\n' "${resultDict[@]}" | sort -nr)
sortResultA=$(printf '%s\n' "${resultDict[@]}" | sort -n)

echo -e "Sorted result in descending order:\n $sortResultD"


