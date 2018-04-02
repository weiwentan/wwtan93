#!/bin/bash


read -p "Title: " TITLE
read -p "Author: " AUTHOR
echo ""

awk -F: '{
	if (($1) == ("'"$TITLE"'") && ($2) == ("'"$AUTHOR"'"))
			{count+=1; output=output "\n" $1 ", " $2 ", $" $3 ", " $4 ", " $5} } 
	END {
 	       	if (count == 1) 
			{print "Found", count, "record:", output}
 	       	else 
			{print "Book not found";}}'  BookDB.txt

