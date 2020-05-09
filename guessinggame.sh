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

a=$( ls -a -I . -I .. | wc -l )
guess=-1
echo 'Welcome! How many files are present in this directory?'

while [[ ! $a -eq $guess ]]
do
	read -p "Enter your guess : " guesstemp
	guess=$(echo $guesstemp | sed 's/^0*//')
	#To check whether input is number or not
	if ! [[ "$guess" =~ ^[0-9]+$ ]]
  	then
     		echo -e "\n$guess is not an integer! Please Recheck!\n"
		guess=-1
	else
		check-answer $guess
	fi
done


