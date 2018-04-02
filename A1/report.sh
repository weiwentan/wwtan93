#!/bin/bash

for ((x = 0; x < 115; x++));
do 
	printf "%s-"
done
	printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

for ((x = 0; x < 115; x++));
do 
	printf "%s-"
done


awk -F: '{	
	printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
	}' BookDB.txt
	
echo ""
echo ""
