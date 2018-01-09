#!/usr/bin/bash

key=$1
word=$2
word_length=${#word}
tab=(A Ą B C Ć D E Ę F G H I J K L Ł M N O Ó P R S Ś T U W Z Ź Ż 0 1 2 3 4 5 6 7 8 9 " ")
tab_length=${#tab[@]}
score=""

for (( i=0 ; i<$word_length ; i++ ))
do
	cezar[i]=${word:$i:1}
	cezar[i]=${cezar[i]^^}
	for ((  j=0 ; j<$tab_length ; j++  ))
	do
		if [[ "${cezar[i]}" == "${tab[j]}" ]]
		then
			tmp=$(($j+$key))
			while [[ $tmp -lt "0" || $tmp -ge $tab_length ]]
			do
				if [[ $tmp -ge $tab_length ]]
				then
					tmp=$(($tmp-$tab_length))
				elif [[ $tmp -lt "0" ]]
				then
					tmp=$(($tab_length+$tmp))
				fi
			done
			cezar[i]=${tab[$tmp]}
			score=$score${cezar[i]}
			break;
		fi
	done
done

echo "$score"

