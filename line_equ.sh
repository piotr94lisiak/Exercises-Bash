#!/usr/bin/bash
 
a=$1
b=$2
c=$3

if [[ $c > $b && $a == 0 ]]
then
	echo "Brak rozwiązań"
elif [[ $a == 0 && $c == $b ]]
then
	echo "Nieskończenie wiele rozwiązań"
else
	x=$( echo "($c - $b) / $a" | bc -l)
	echo "x = $x"
fi