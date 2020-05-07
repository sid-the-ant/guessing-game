README.md:
	touch README.md
	echo '#A Guessing Game' >> README.md
	echo  '##By Sid_the_Ant\n' >> README.md
	echo '\nTime and Date of make run : ' >> README.md
	date >> README.md
	echo '\nNo of Words' >> README.md
	cat guessinggame.sh | wc -l >> README.md
