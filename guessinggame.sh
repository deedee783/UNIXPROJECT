#~/home/emuser/Desktop/DiandraCodeExercise bash
# File: guessinggame.sh
#For Unix WorkBench Course


function Introduction {
  echo "Hello Classmate, would you like to play a game?"
  echo "Yes, you say?..... Well then, please guess how many files are in the current directory  "
}


function Right {
  echo "My word you've got it now! Bravo, well done! Hats off to you!!!"
  echo "Thank you for your participation! :-)"
}

Introduction

FileNumber=$(ls -1 | wc -l)

until [[ $response -eq $FileNumber ]]; do
	read response
	if [[ $response -gt $FileNumber ]]
	then
		echo " Oh my, unfortunatly $response is higher than the requested number, go a little lower, don't fret just try again."
	elif [[ $response -lt $FileNumber ]]
	then
		echo "$response, you are far too low. Try again. Guess higher, yes higher I say"
	fi
done
Right



