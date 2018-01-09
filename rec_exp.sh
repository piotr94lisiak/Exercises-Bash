#!/usr/bin/bash

function exponentiation ()
{
	local a=$1
	local b=$2
	
	if [[ $a -lt 0 || $b -lt 0 ]]
	then
		echo "Błąd parametru wejściowego"
		return 1
	fi
	
	if [[ $b == "0" ]]
	then
		echo "1"
		return 0
	fi
	
	param_1=$(( $a ))
	param_2=$(( $b-1 ))
	score=$( exponentiation $param_1 $param_2 )
	echo $(( $param_1*$score ))
}

echo $(exponentiation $1 $2)