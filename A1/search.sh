#!/bin/bash

read -p "Title: " TITLE
read -p "Author: " AUTHOR
echo ""

if [[ $TITLE = "" && $AUTHOR = "" ]]; then
	echo "Book not found"
else
	awk -F: '{ if (tolower($1) ~ tolower("'"$TITLE"'") && tolower($2) ~ tolower("'"$AUTHOR"'"))
			{count+=1; output=output "\n" $1 ", " $2 ", $" $3 ", " $4 ", " $5} } 
	END {
 	       	if (count == 1) 
			{print "Found", count, "record:", output}
		else if (count > 1) 
			{print "Found", count, "records:", output}
 	       	else 
			{print "Book not found";}}'  BookDB.txt
fi
