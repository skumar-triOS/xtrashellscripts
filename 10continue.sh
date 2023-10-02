#!/bin/sh

NUMS="1 2 3 4 5 6 7"

for NUMS in $NUMS
do
	Q=`expr $NUMS % 2`
	if [ $Q -eq 0 ]
		then
		echo "Number is an even number"
		continue
	fi
	echo "Found an odd number"
done
