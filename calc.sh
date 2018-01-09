#!/usr/bin/bash

function addition ()
{
	score=$( echo "$1+$2" | bc -l )
	echo "$score"
}

function subtraction ()
{
	score=$( echo "$1-$2" | bc -l )
	echo "$score"
}

function multiplication ()
{
	score=$( echo "$1*$2" | bc -l )
	echo "$score"
}

function division ()
{
	score=$( echo "$1/$2" | bc -l )
	echo "$score"
}

function exponentiation ()
{
	score=1
	declare -i size=$2
	for (( i=0 ; i<$size ; i++ ))
	do
		score=$( echo "$score*$1" | bc -l )
	done
	echo "$score"
}

function factorial ()
{
	score=1
	for (( i=1 ; i<=$1 ; i++ ))
	do
		score=$(($score*$i))
	done
	echo "$score"
}

if [[ $2 == "+" ]]
then
	addition $1 $3
fi

if [[ $2 == "-" ]]
then
	subtraction $1 $3
fi

if [[ $2 == "x" ]]
then
	multiplication $1 $3
fi

if [[ $2 == "/" ]]
then
	division $1 $3
fi

if [[ $2 == "^" ]]
then
	exponentiation $1 $3
fi

if [[ $2 == "!" ]]
then
	factorial $1
fi
