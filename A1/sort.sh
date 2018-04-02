#!/bin/bash

function press_enter
{
    echo ""
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}

function func_a
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -k1 BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_b
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -k1 -r BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_c
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -k2 BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_d
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -k2 -r BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_e
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -nk3 BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_f
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -nk3 -r BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_g
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -nk4 BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_h
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -nk4 -r BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_i
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -nk5 BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

function func_j
{
	clear
	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done
		printf "\n%-40s %-25s %-11s %-10s %-10s %-20s\n" "Title" "Author" "Price" "Qty Avail." "Qty Sold" "Total Sales"

	for ((x = 0; x < 115; x++));
	do 
		printf "%s-"
	done

	sort -t: -nk5 -r BookDB.txt | awk -F: '{	
		printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
		}' 
}

#Display menu options and wait for selection
selection=0
until [ "$selection" = "k" ]; do
    echo ""
    echo "	a) By Title (Ascending)"
    echo "	b) By Title (Descending)"
    echo "	c) By Author (Ascending)"
    echo "	d) By Author (Descending)"
    echo "	e) By Price (Ascending)"
    echo "	f) By Price (Descending)"
    echo "	g) By Qty Avail. (Ascending)"
    echo "	h) By Qty Avail. (Descending)"
    echo "	i) By Qty Sold (Ascending)"
    echo "	j) By Qty Sold (Descending)"
    echo "	k) Back to main menu"
    echo ""
    read -p "Enter selection: " selection
    echo ""

    case $selection in

        a ) func_a ; press_enter;;
        b ) func_b ; press_enter;;
	c ) func_c ; press_enter;;
	d ) func_d ; press_enter;;
	e ) func_e ; press_enter;;
	f ) func_f ; press_enter;;
        g ) func_g ; press_enter;;
	h ) func_h ; press_enter;;
	i ) func_i ; press_enter;;
	j ) func_j ; press_enter;;
	k ) break;;
        * ) tput setf 4;echo "Please enter a valid option!"; tput setf 9; press_enter

    esac
done


# -k for title and author
# -nk for numbers
#sort by price
#sort -t: -nk5 BookDB.txt | awk -F: '{	
#	printf "\n%-40s %-25s %-1s %-9.2f %-10d %-10d %-1s %-19.2f", $1, $2, "$", $3, $4, $5, "$", $3*$5
#	}' 
	
#echo ""
#echo ""
