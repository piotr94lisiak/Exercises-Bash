#!/usr/bin/bash

tablica=($@)

size_i=${#tablica[@]}
size_j=$((${#tablica[@]}-1))

for (( i=0 ; i<$size_i ; i++ ))
do
	for (( j=0 ; j<$size_j ; j++ ))
	do
		if [[ ${tablica[j]} -lt ${tablica[j+1]} ]]
		then
			tmp=${tablica[j]}
			tablica[j]=${tablica[j+1]}
			tablica[j+1]=$tmp
		fi
	done
done

for (( i=0 ; i<${#tablica[@]} ; i++ ))
do
	echo "${tablica[i]}"
done