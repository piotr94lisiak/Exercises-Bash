#!/usr/bin/bash

quiz1=("Pytanie 1" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "A"
	   "Pytanie 2" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "A"
	   "Pytanie 3" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "D"
	   "Pytanie 4" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "B"
	   "Pytanie 5" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C")
	   
quiz2=("Pytanie 1" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "B"
	   "Pytanie 2" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "A"
	   "Pytanie 3" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C"
	   "Pytanie 4" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "B"
	   "Pytanie 5" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "D")
	   
quiz3=("Pytanie 1" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "D"
	   "Pytanie 2" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "D"
	   "Pytanie 3" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C"
	   "Pytanie 4" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "B"
	   "Pytanie 5" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C")

quiz4=("Pytanie 1" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "A"
	   "Pytanie 2" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C"
	   "Pytanie 3" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "B"
	   "Pytanie 4" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "B"
	   "Pytanie 5" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C")
	   
quiz5=("Pytanie 1" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C"
	   "Pytanie 2" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C"
	   "Pytanie 3" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "D"
	   "Pytanie 4" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "A"
	   "Pytanie 5" 
	   "Odp A"
	   "Odp B"
	   "Odp C"
	   "Odp D"
	   "C")
	   
function display_quiz ()
{   

local quiz=("$@")

local score=0
for (( i=0 ; i<${#quiz[@]} ; i+=6 ))
do
	echo "${quiz[i]}"
	echo "${quiz[i+1]}"
	echo "${quiz[i+2]}"
	echo "${quiz[i+3]}"
	echo "${quiz[i+4]}"
	
	read -p "Odpowiedź: " answer
	
	answer=${answer^^}
	
	if [[ "$answer" == "${quiz[i+5]}" ]]
	then
		echo "Dobra odpowiedz!"
		(( score++ ))
	else 
		echo "Zła odpowiedź!"
	fi	
done
echo ""
echo "Punkty: $score/$(( ${#quiz[@]}/6 ))"
echo ""
}

while [[ 1 == 1 ]]
do
	echo "=====MENU====="
	echo "1) Quiz nr.1"
	echo "2) Quiz nr.2"
	echo "3) Quiz nr.3"
	echo "4) Quiz nr.4"
	echo "5) Quiz nr.5"
	echo "6) Zakończ"
	
	read -p "Podaj opcje: " option
	
	case $option in
		"1")
			display_quiz "${quiz1[@]}"
			;;
		"2")
			display_quiz "${quiz2[@]}"
			;;
		"3")
			display_quiz "${quiz3[@]}"
			;;
		"4")
			display_quiz "${quiz4[@]}"
			;;
		"5")
			display_quiz "${quiz5[@]}"
			;;
		"6")
			read -p "Czy na pewno zakończyć działanie programu? [T/N]: " answer
			answer=${answer^^}
			if [[ "$answer" == "T" ]]
			then
				echo "Zamykam program"
				break
			fi
			;;
	esac
done
