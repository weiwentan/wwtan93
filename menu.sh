#!/bin/bash

clear
function press_enter
{
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}

#This is the main menu code

if ! [ -f BookDB.txt ] ; then #check existance of bookdb file, create the file if not exist else continue
touch BookDB.txt
fi
#Display menu options and wait for selection
selection=0
until [ "$selection" = "7" ]; do
    echo ""
    echo ""
    echo "Advanced Book Inventory System"
    echo ""
    echo ""
    echo "	1.) Add new book"
    echo "	2.) Remove existing book info"
    echo "	3.) Update book info and quantity"
    echo "	4.) Search for book by title/author"
    echo "	5.) Process a book sold"
    echo "	6.) Inventory summary report"
    echo "	7.) Quit"
    echo ""
    echo "Additional Functions"
    echo ""
    echo "	8.) Search by price range"
    echo "	9.) Sort"
    echo "	0.) Exact Search"

    echo ""
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) ./A1/addbook.sh ; press_enter ;;
        2 ) ./A1/removebook.sh ; press_enter ;;
	3 ) ./A1/updatebook.sh ; press_enter ;;
	4 ) ./A1/search.sh ; press_enter ;;
	5 ) ./A1/processbook.sh; press_enter;;
	6 ) ./A1/report.sh; press_enter;;
        7 ) break ;;
	8 ) ./A1/range.sh; press_enter;;
	9 ) ./A1/sort.sh; press_enter;;
	0 ) ./A1/exactSearch.sh; press_enter;;
        * ) tput setf 4;echo "Please enter a valid option!"; tput setf 9; press_enter
    esac
done

