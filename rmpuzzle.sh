#!/bin/bash

if [ -z "$1" ]
then
	read -p "Puzzle link or id: " input
else
	input="$1"
fi

id=$(echo "$input" | sed 's/^.*id=//')

output="/tmp/puzzle_$id.pdf"

logic-masters2pdf "$input" "$output"

rmapi put "$output" /Puzzles
