#!/usr/bin/bash

function factorial ()
{
	local number=$1
	
	if [[ $number -lt 0 ]]
	then
		echo "Błąd parametru wejściowego"
		return 1
	fi
	
	if [[ $number == "0" ]]
	then
		echo "1"
		return 0
	fi
	
	param=$(( $number-1 ))
	score=$( factorial $param )
	echo "$(( $number*$score ))"
}

echo $(factorial $1)