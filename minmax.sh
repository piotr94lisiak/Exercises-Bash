#!/usr/bin/bash

tablica=($@)
size_i=${#tablica[@]}

tmp=${tablica[0]}
for (( i=0 ; i<$size_i ; i++ ))
do
	if [[ ${tablica[i]} -gt $tmp ]]
	then
		tmp=${tablica[i]}
	fi
done

echo "Max: $tmp"

tmp=${tablica[0]}
for (( i=0 ; i<$size_i ; i++ ))
do
	if [[ ${tablica[i]} -lt $tmp ]]
	then
		tmp=${tablica[i]}
	fi
done

echo "Min: $tmp"