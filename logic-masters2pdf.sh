#!/bin/bash

if [ -z "$1" ]
then
	read -p "Puzzle link or id: " input
else
	input="$1"
fi

id=$(echo "$input" | sed 's/^.*id=//')

if [ -z "$2" ]
then
	output="$id.pdf"
else
	output="$2"
fi

url="https://logic-masters.de/Raetselportal/Raetsel/zeigen.php?print=true&id=$id"

wkhtmltopdf $url $output && echo $output

