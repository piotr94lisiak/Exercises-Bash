#!/usr/bin/bash

bits=$1
bits_length=${#bits}
tab=()

#Potegowanie

function exponentiation ()
{
	tmp=1
	for (( i=0 ; i<$2 ; i++ ))
	do
		tmp=$(($tmp*$1))
	done
}

#Wstawienie bitów do tablicy

for (( i=0 ; i<$bits_length ; i++ ))
do
	tab[i]=${bits:$i:1}
done

#Odwrócenie tablicy

for (( i=0 ; i<$bits_length/2 ; i++ ))
do 
	tmp=${tab[bits_length-i-1]}
	tab[bits_length-i-1]=${tab[i]}
	tab[i]=$tmp
done

#Obliczanie bitów

score=0

for (( i=0 ; i<$bits_length ; i++ ))
do
	if [[ ${tab[i]} == "1" ]]
	then
		exponentiation 2 $i
		score=$(($score+$tmp))
	elif [[ ${tab[i]} == "0" ]]
	then
		continue
	else 
		echo "Nieprawidłowy parametr wywołania"
		exit
	fi
done

echo "$score"

