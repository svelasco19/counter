#bin/bash
echo What is your name?
read myName

while [[ $myName == “” ]];
	do
	echo Please enter a valid name
	read myName
done
 
while [ ${#myName} -lt 2 ]
	do
	echo Your name is to short
	echo Enter your name again:
	read myName
done

while [ ${#myName} -gt 20 ]
	do
	echo Your name has to many characters
	echo Try again:
	read myName
done 

while [[ $myName =~ [^a-zA-Z]+ ]]
	do
	echo That is not your name
	echo Enter your name again:
	read myName
done
echo Welcome $myName!

echo Please enter a number between 2 and 100:
read myNum

while [ -z "$myNum" ]
	do
	echo No blanks please
	echo Enter a number between 2-100:
	read myNum
done

while [[ $myNum =~ [^0-9] ]]
	do
  	echo  That is not a number silly
  	echo “Enter a number:”
  	read myNum
done

while [ $myNum -lt 2 ]
	do
	echo "The number you enter has to be 2 or greater."
	read myNum
done

while [ $myNum -gt 100 ]
	do
	echo "The number you enter has to be less than 100."
	read myNum
done

while [[ $myNum =~ [^0-9] ]]
	do
	echo “That is not a valid number”
	echo “Enter a number:”
	read myNum
done

counter=0

if ! [[ $((myNum %2)) == 0 ]];
	then
	counter=1
else
	counter=0
fi

while [ $counter -le $myNum ];
	do
	echo "$counter"
	let counter=$counter+2;
	sleep 0.1
done

echo Done!