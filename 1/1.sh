#!/bin/bash

# Adam Lathers
# alathers@gmail.com
#
#Multiples of 3 and 5
#Problem 1

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

bound=999
multiples=()
counter=0
for h in `seq 1 $bound`; do 
	if [ $(($h % 3)) == 0 ] || [ $(($h % 5)) == 0 ]; then
		multiples[$counter]=$h
		counter=$(($counter+1))
	fi
done

sum=0
for h in `seq 0 ${#multiples[@]}`; do 
	if [ ! ${multiples[$h]} == '' ]; then
		sum=$(($sum + ${multiples[$h]}))
	fi
done
echo $sum