#!/bin/bash -x

# prime fatorisation to store prime factors in array

read -p "enter the value of  n :" x

function getprime()
{
	for (( i=2; i<$1; i++ ))
	do
        	if (( $1%$i==0 ))
        	then
                	echo 0
                	exit 0
       		fi
	done
	echo 1
}
for (( i=2; i<=$x; i++ ))
do 
	if (( $x%$i==0 ))
	then
		if (( $(getprime $i)==1 ))
		then
			array[$i]=$i
		fi
	fi
done

echo ${array[@]}
