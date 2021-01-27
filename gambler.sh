#!/bin/bash

money=100;
countWin=0;
countLoss=0;
betCount=0;

while [[ true ]]
do
	bet=$((RANDOM%2))
	((betCount++))

	if [ $bet -eq 1 ]
	then
		((countWin++))
		((money++))
		echo "Win.."
		if [ $money -eq 200 ]
		then
			break
		fi
	else
		((countLoss++))
		((money--))
		echo "Loss.."
		if [ $money -eq 0 ]
                then
                        break
                fi

	fi
done
	echo "Num of times won= "$countWin
	echo "Num of Bets made= "$betCount
