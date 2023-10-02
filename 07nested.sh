#!/bin/sh
#This script is for testing nested loops

a=0
while [ "$a" -lt 10 ]	#This is loop 1

do
	b="$a"
		while [ "$b" -ge 0 ]	#This is loop 2
		do
			echo -n "$b"
			b=`expr $b - 1`
		done
echo
	a=`expr $a + 1`
done
