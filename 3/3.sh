#!/bin/bash

# Adam Lathers
# alathers@gmail.com
#

#
#Largest prime factor
#Problem 3

#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?


#################
##  This is meant to exercise the shell skill, so do it manually
##		Using the given bound it takes about .105s.  Adding an order of magnitude increase
##			Runtime over 100x (17.590s)
#################

function is_prime () {
	tester=2
	while [ $(($tester*$tester)) -lt $1 ]; do 
		if [ $(($1%${tester})) -eq 0 ]; then
			echo $tester
			return 1
		fi
		tester=$(($tester+1))
	done
	echo 'prime'
	return 0
}

bound=600851475143

factored='check'
while [ ! $factored = 'prime' ]; do 
	factored=`is_prime $bound`
	if [[ $factored =~ [0-9] ]] ; then 
		bound=$(($bound/$factored))
	fi
done
echo $bound
exit