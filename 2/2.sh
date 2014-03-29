#!/bin/bash

# Adam Lathers
# alathers@gmail.com
#

bound=4000000
fibprev=1
fibcur=1
sum=0
while [ $fibcur -lt $bound ]; do
	if [ $(($fibcur % 2 )) -eq 0 ]; then 
		sum=$(($sum+$fibcur))
	fi
	fibnext=$(($fibcur+$fibprev))
	fibprev=$fibcur
	fibcur=$fibnext
done

echo $sum