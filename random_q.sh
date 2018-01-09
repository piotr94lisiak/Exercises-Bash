#!/usr/bin/bash

questions=("Pytanie 1" 
		   "Pytanie 2"
		   "Pytanie 3"
		   "Pytanie 4"
		   "Pytanie 5"
		   "Pytanie 6"
		   "Pytanie 7"
		   "Pytanie 8"
		   "Pytanie 9"
		   "Pytanie 10"
		   "Pytanie 11"
		   "Pytanie 12"
		   "Pytanie 13"
		   "Pytanie 14"
		   "Pytanie 15")
question=$(( $RANDOM % ${#questions[@]} ))

echo "${questions[question]}"