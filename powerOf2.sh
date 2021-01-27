#!/bin/bash

num=$1
power_Of_2=1
count=1
while [[ $count -le $num ]]
do
	power_Of_2=$((2**count))
	((count++))
	if [ $count -eq 10 ]
	then
		exit
	fi
	echo $power_Of_2
done


