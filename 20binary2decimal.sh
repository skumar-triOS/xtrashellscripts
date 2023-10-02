#!/bin/sh
echo -n "Enter a number in Binary format: "
read -r binary
if [ "$binary" -eq 0 ]; then
	echo "Enter a valid number "
	return
else
	while [ "$binary" -ne 0 ]; do
		decimal=0
		power=1
		while [ "$binary" -ne 0 ]; do
			rem=$((binary % 10))
			decimal=$((decimal + (rem * power)))
			power=$((power * 2))
			binary=$((binary / 10))
		done
		echo "Decimal equivalent of binary: $decimal"
	done
fi
