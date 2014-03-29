#!/bin/bash

# Adam Lathers
# alathers@gmail.com
#

#
#Largest prime factor
#Problem 3

#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

######################################
#	Don't reinvent the wheel.  Mac OS X -> msieve.  Linux -> factor
#	This is written on a mac, so msieve
#
#



bound=600851475143

IFS=$'\n'
msieve -q $bound | tail -n 2 | head -n1 | awk {'print $NF'}
