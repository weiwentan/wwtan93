#!/bin/bash

read -p "Tite: " TITLE
read -p "Author: " AUTHOR

grep -i "^$TITLE:$AUTHOR:" BookDB.txt >/dev/null 

if [ "$?" == "0" ]
then
	tput setf 4; 
	echo "The book '$TITLE' from author '$AUTHOR' already exists.";
	tput setf 9;
else 
	# VALIDATE PRICE
	read -p "Price: " PRICE	
	until [[ $PRICE =~ ^([0-9]+)(\.[0-9]{2})$ ]]		
	do
		echo "Invalid format!"
		echo ""
		read -p "Price: " PRICE
	done

	# VALIDATE QTY
	read -p "Qty Available: " QTY
	until [[ $QTY =~ ^[0-9]+$ ]]
	do
		echo "Invalid amount!"
		echo ""
		read -p "Qty Available: " QTY
	done

	# VALIDATE QTY SOLD
	read -p "Qty Sold: " QTYSOLD
	until [[ $QTYSOLD =~ ^[0-9]+$ ]]
	do
		echo "Invalid amount!"
		echo ""
		read -p "Qty Sold: " QTYSOLD
	done

	echo "$TITLE:$AUTHOR:$PRICE:$QTY:$QTYSOLD" >> BookDB.txt
	echo "New book title $TITLE from author $AUTHOR was addedd successfully."

fi



