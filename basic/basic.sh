#! /bin/bash

#------------------------------
# if statement
#------------------------------
#Initializing two variables
a=10
b=20
  
#Check whether they are equal
if [ $a == $b ]
then
    echo "a is equal to b"
fi
  
#Check whether they are not equal
if [ $a != $b ]
then
    echo "a is not equal to b"
fi

#------------------------------
# if-else statement
#------------------------------
#Initializing two variables
a=20
b=20
  
if [ $a == $b ]
then
    #If they are equal then print this
    echo "a is equal to b"
else
    #else print this
    echo "a is not equal to b"
fi

# sample 2
if [ $failed -eq 1 ]
then
    echo "Job failed"
else
    echo "Job done"
fi


# Let us Declare Two Boolean Variables
# Set this one to true
jobstatus=true
# Check it 
if [ "$jobstatus" = true ] ; then
	echo 'Okay :)'
else
	echo 'Noop :('
fi
# Double bracket format syntax to test Boolean variables in bash
bool=false
if [[ "$bool" = true ]] ; then
	echo 'Done.'
else
	echo 'Failed.'
fi

#------------------------------
# switch statement
#------------------------------
CARS="bmw"
  
#Pass the variable in string
case "$CARS" in
    #case 1
    "mercedes") echo "Headquarters - Affalterbach, Germany" ;;
      
    #case 2
    "audi") echo "Headquarters - Ingolstadt, Germany" ;;
      
    #case 3
    "bmw") echo "Headquarters - Chennai, Tamil Nadu, India" ;;
esac
