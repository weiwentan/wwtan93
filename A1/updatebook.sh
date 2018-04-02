#!/bin/bash

function press_enter
{
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}

function new_title
{
	echo ""
	read -p "New Title: " newTitle;
	grep -i "^$newTitle:$AUTHOR:" BookDB.txt >/dev/null 
	if [ "$?" == "0" ]
	then
		tput setf 4; 
		echo "The book already exists."
		tput setf 9;
	else 
           	sed -i "s/^$TITLE:\($AUTHOR\):/$newTitle:\1:/I" BookDB.txt
	  	echo "Book's Title has been updated successfully!"
		TITLE=$newTitle
	fi

}

function new_author
{
	echo ""
	read -p "New Author: " newAuthor;
	grep -i "^$TITLE:$newAuthor:" BookDB.txt >/dev/null
	if [ "$?" == "0" ]
	then
		tput setf 4; 
		echo "The author for this book already exists."
		tput setf 9;
	else 
        	   sed -i "s/^\($TITLE\):$AUTHOR:/\1:$newAuthor:/I" BookDB.txt
		   echo "Book's Author has been updated successfully!"
		   AUTHOR=$newAuthor
	fi
}

function new_price
{
	echo ""
	read -p "New Price: " newPrice;
		   #validate newPrice
		   until [[ $newPrice =~ ^([0-9]+)(\.[0-9]{2})$ ]]
		   do
			tput setf 4; 			
			echo "Invalid format! Please try again."
			tput setf 9; 
			echo ""
			read -p "Price: " newPrice
		   done
        	   sed -i "s/^\($TITLE:$AUTHOR\):[^:]*:/\1:$newPrice:/I" BookDB.txt

		   echo "Book's Price has been updated successfully!"

}

function new_qty
{
	echo ""
	read -p "New Qty Available: " newQty;
		   #validate newQty
		   until [[ $newQty =~ ^[0-9]+$ ]]
		   do
			tput setf 4; 
		   	echo "Invalid amount!"
			tput setf 9; 
		   	echo ""
		   	read -p "Qty Available: " newQty
		   done
        	   sed -i "s/^\($TITLE:$AUTHOR:[^:]*\):[^:]*:/\1:$newQty:/I" BookDB.txt
		   echo "Book's Qty Available has been updated successfully!"
}

function new_qtySold
{
	echo ""
	read -p "New Qty Sold: " newQtySold;
		   #validate newQtySold
		   until [[ $newQtySold =~ ^[0-9]+$ ]]
		   do
			tput setf 4; 
			echo "Invalid amount!"
			tput setf 9; 
			echo ""
			read -p "Qty Sold: " newQtySold
		   done;
        	   sed -i "s/^\($TITLE:$AUTHOR:[^:]*:[^:]*\):[^:]*/\1:$newQtySold/I" BookDB.txt
		   echo "Book's Qty Sold has been updated successfully!"
}

function form_cases
{
	read -p "Please enter your choice: " CHOICE

	until [[ "$CHOICE" == "a" || "$CHOICE" == "b" || "$CHOICE" == "c" ||
		 "$CHOICE" == "d" || "$CHOICE" == "e" || "$CHOICE" == "f" ]]
	do 
		tput setf 4; 
		echo "Invalid choice!"
		tput setf 9; 
		echo ""
		read -p "Please enter your choice: " CHOICE
	done

	case $CHOICE in
		a) new_title;;

		b) new_author;;

		c) new_price;; 

		d) new_qty;;

		e) new_qtySold;;
		
		f) break;;

        	* ) tput setf 4;echo "Please enter a valid option!"; tput setf 9; press_enter		
	esac

}

function display_form
{
	echo ""
	echo -e "\t a) \t Update Title"
	echo -e "\t b) \t Update Author"
	echo -e "\t c) \t Update Price"
	echo -e "\t d) \t Update Qty Available"
	echo -e "\t e) \t Update Qty Sold"
	echo -e "\t f) \t Back to main menu"
	echo ""
	form_cases
}

read -p "Title: " TITLE
read -p "Author: " AUTHOR

grep -i "^$TITLE:$AUTHOR:" BookDB.txt >/dev/null
if [[ "$?" != "0" ]]
then
	tput setf 4; 
	echo "Error! Book does not exist!"
	tput setf 9; 
else
	echo "Book found!"
	# infinite loop until user presses f inside the form
	while :
	do
		display_form
		press_enter
	done

fi


