#!/usr/bin/env bash
# Script: guessinggame.sh

function check-answer
{
	if [[ $guess -gt $a ]]
	then
		echo 'too high!'
	elif [[ $guess -lt $a ]]
	then
		echo 'too low!'
	else
		echo 'Congratulations! You made the correct guess!'
	fi
}

a=$( ls -a | wc -w )
guess=-1

echo 'Welcome! How many files are present in this directory?'

while [[ ! $a -eq $guess ]]
do
	read -p "Enter your guess $num: " guess
	if [[ $guess ]] && [ $guess -eq $guess 2>/dev/null ]
  	then
     		check-answer $guess
  	else
     		echo -e "\n$guess is not an integer or not defined! Please Recheck!\n"
		guess=-1
	fi
done


