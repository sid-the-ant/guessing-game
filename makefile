README.md:
	touch README.md
	echo '# A Guessing Game' >> README.md
	echo '## by Sid_the_Ant' >> README.md
	echo -n '\nTime and Date of make run : ' >> README.md
	date >> README.md
	echo -n '\nNo of Lines : ' >> README.md
	cat guessinggame.sh | wc -l >> README.md
clean:
	rm README.md
