#!/bin/bash

IFS=":"

#ONLY IF TITLE AND AUTHOR MATCH DB THEN ACCEPT
read -p "Tite: " TITLE
read -p "Author: " AUTHOR

grep -i ^$TITLE:$AUTHOR BookDB.txt > /dev/null
rc=$?

# if book title and author matches DB
if [[ "$rc" = 0 ]]; then
	sed -i '/'$TITLE':'$AUTHOR':/Id' BookDB.txt 
	#capital I for case insensitive, d for delete
	echo "$TITLE removed successfully!"
else
	echo "Error! Book does not exist!"
fi

