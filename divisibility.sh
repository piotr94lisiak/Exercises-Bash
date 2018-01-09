#!/usr/bin/bash

i=$1

while (( $i <= $2 ))
do
	if [[ $i == 0 ]]
	then
		((i++))
	else
		reszta1=$(($i % 3))
		reszta2=$(($i % 5))
		if [[ $reszta1 == 0 && $reszta2 == 0 ]]
		then
			echo "$i"
		fi
	((i++))
	fi
done