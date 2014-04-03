#!/bin/bash

# Adam Lathers
# alathers@gmail.com
#

#
#Largest palindrome product
#Problem 4
#A palindromic number reads the same both ways. The largest palindrome made from the 
#	product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.
#
#
#
#
#
. ../lib-sh/strings.sh
. ../lib-sh/numbers.sh


tester=$1
flip=$(reverse_string $tester)


upper=$1
: ${upper:=999}

max_palendrome $upper $upper 0 $upper 999



# Totally non-ideal.  I had to up my ulimit on user processes to even try to run this.
##  I'm not honestly sure exactly how BASH executes this, versus say Ruby, but it seems much less
## capable of handling deep recursion.  
## I likely need to focus on trying to improve the bounding cases on the recursion to 
## limit the search depth or something.  Maybe I can flip the recursion to have fewer 
## active execution flows?