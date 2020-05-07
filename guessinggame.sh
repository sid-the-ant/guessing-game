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

a=$( ls | wc -l )

guess=-1

while [[ ! $a -eq $guess ]]
do
	read -p "Enter your guess $num: " guess
	check-answer $guess
done


