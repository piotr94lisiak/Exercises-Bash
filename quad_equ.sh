#!/usr/bin/bash

a=$1
b=$2
c=$3

delta=$( echo "($b*$b)-(4*$a*$c)" | bc -l )
echo "delta = $delta"
if [[ $delta -gt 0 ]]
then
	echo "Równanie ma 2 rozwiązania"
elif [[ $delta -lt 0 ]]
then
	echo "Równanie ma 0 rozwiązań"
else
	echo "Równanie ma 1 rozwiązanie"
fi
