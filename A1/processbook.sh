#!/bin/bash

read -p "Title: " TITLE
read -p "Author: " AUTHOR

grep -i "^$TITLE:$AUTHOR:" BookDB.txt >/dev/null 

if [ "$?" != "0" ]
then 
	echo "Error! Book does not exist!"
else
	read -p "No. of copies sold: " copiesSold

# print current book info
awk -F: '{
	if (tolower($1) == tolower("'"$TITLE"'") && tolower($2) == tolower("'"$AUTHOR"'"))
	{print "Current Book Info: "$1 ", " $2 ", $" $3 ", " $4 ", " $5}
}' BookDB.txt

# do the processing
# also use print to extract the data from awk
awk -F: '{
	if (tolower($1) == tolower("'"$TITLE"'") && tolower($2) == tolower("'"$AUTHOR"'"))
	{
		newQty=$4 - "'"$copiesSold"'";
		newQtySold=$5 + "'"$copiesSold"'";
		print "New Book Info: " $1 ", " $2 ", $" $3 ", " newQty ", " newQtySold
		print newQty > "var1"
		print newQtySold > "var2"
	} 
}' BookDB.txt

# extract the data to replace in the txt file
	aNewQty=$(cat var1)
	aNewQtySold=$(cat var2)

	sed -i "s/^\($TITLE:$AUTHOR:[^:]*\):[^:]*:/\1:$aNewQty:/I" BookDB.txt
	sed -i "s/^\($TITLE:$AUTHOR:[^:]*:[^:]*\):[^:]*/\1:$aNewQtySold/I" BookDB.txt

# remove variables created from awk 
	rm var1
	rm var2
fi


