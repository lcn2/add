#!/bin/sh
#
# add column of numbers
#
# usage:
#	add [col]

if [ "$#" -eq 1 ]; then
	col="$1";
elif [ "$#" -eq 0 ]; then
	col=1;
else
	echo "$0: usage: $0 [col]" 1>&2
	exit 1
fi
awk 'NF >= '$col' && $'$col' ~ /[0-9 	.+-]*/ {x += $'$col'} END {print x}' -
