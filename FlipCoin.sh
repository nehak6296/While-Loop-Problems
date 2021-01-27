#!/bin/bash

headCount=0;
tailCount=0;

while [[ true ]]
do
coin=$((RANDOM%2))
	if [ $coin -eq 1 ]
	then
		((headCount++))
		echo "HEADS.."
		if [ $headCount -eq 11 ]
		then
			echo "Head wins"
			exit
		fi
	else
		((tailCount++))
		echo "TAILS.."
		if [ $tailCount -eq 11 ]
                then
			echo "Tail wins"
			exit
		fi
	fi
done
