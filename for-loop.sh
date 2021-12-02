#!/bin/bash

# -------------------example 1:
for var in 1 2 3 4 5
do
	echo var value=$var
done


# -------------------example 2:
list="3 4 5 6 7"
for var in $list
do
	echo var value=$var
done

# -------------------example 3: iterate dir files
for file in /etc/*
do
	echo ${file}
done

# -------------------example 4:
for var in {1..5}
do
	echo $var
done

# -------------------example 5: add two, until <= 11
for var in {1..11..2}
do
	echo $var
done

# -------------------example 6: 
for var in $(seq 6)
do
	echo $var
done

# -------------------example 7: interate array
arr=(2 4 6 7 8 9)
for var in "${arr[@]}"
do
	echo $var
done
#-----------------------------------------
PLANETS=( "EARTH" "MARS" "VINUS" )
for PLANET in ${PLANETS[@]}; do
    echo "This is ${PLANET}"
done

# -------------------example 7: c-style for-loop
for ((i=0; i<5; i++)); 
do
	echo $i
done



