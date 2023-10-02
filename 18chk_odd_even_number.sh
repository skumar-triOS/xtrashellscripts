#!/bin/bash
#Check if the number is odd or even

read -p "Enter a number and I will check if its odd or even : " mynumber
if [ $((mynumber%2)) -eq 0 ]
then
echo "Your number is even"
else
echo "Your number is odd."
fi
