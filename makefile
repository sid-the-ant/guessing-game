README.md:
	touch README.md
	echo '#A Guessing Game' >> README.md
	echo -n '\nTime and Date of make run : ' >> README.md
	date >> README.md
	echo -n '\nNo of Words' >> README.md
	cat guessinggame.sh | wc -l >> README.md
