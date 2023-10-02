#!/bin/sh

#Define function
Hello()	{
	echo "Hello and welcome $1 $2"
	return 10
	}

#Invoke function
Hello Firstname Lastname

#Capture the value returned previously
ret=$?
echo "The return value is $ret"
