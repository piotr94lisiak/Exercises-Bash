#!/usr/bin/bash

function fib ()
{
	local number=$1
	
	if [[ $number -lt 0 ]]
	then
		echo "Błąd parametru wejściowego"
		return 1
	fi
	
	if [[ $number == "0" ]]
	then
		echo "0"
		return 0
	elif [[ $number == "1" || $number == "2" ]]
	then
		echo "1"
	return 0
	fi
	
	param_1=$(( $number-1 ))
	param_2=$(( $number-2 ))
	score_1=$( fib $param_1 )
	score_2=$( fib $param_2 )
	echo "$(( $score_1 + $score_2 ))"
}

echo $( fib $1 )