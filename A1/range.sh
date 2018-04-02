#!/bin/bash

function press_enter
{
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}

#$0 to $25.00 range
function case_one
{
	sort -t: -nk3 BookDB.txt | awk -F: '{ if($3 >= 0 && $3 <= 25)
		{count=count+1; out=out "\n" $1 ", " $2 ", $" $3 ", " $4 ", " $5 }
	}
	END { if (count == 1) 
			{print "Found", count, "record:", out}
		else
			{print "Found", count, "records:", out}
	}' 
}

#$25.01 to $50.00 range
function case_two
{
	sort -t: -nk3 BookDB.txt | awk -F: '{ if($3 > 25 && $3 <= 50)
		{count=count+1; out=out "\n" $1 ", " $2 ", $" $3 ", " $4 ", " $5 }
	}
	END { if (count == 1) 
			{print "Found", count, "record:", out}
		else
			{print "Found", count, "records:", out}
	}' 
}

#$50.01 to $75.00 range
function case_three
{
	sort -t: -nk3 BookDB.txt | awk -F: '{ if($3 > 50 && $3 <= 75)
		{count=count+1; out=out "\n" $1 ", " $2 ", $" $3 ", " $4 ", " $5 }
	}
	END { if (count == 1) 
			{print "Found", count, "record:", out}
		else
			{print "Found", count, "records:", out}
	}' 
}


#$75.01 to $100.00 range
function case_four
{
	sort -t: -nk3 BookDB.txt | awk -F: '{ if($3 > 75 && $3 <= 100)
		{count=count+1; out=out "\n" $1 ", " $2 ", $" $3 ", " $4 ", " $5 }
	}
	END { if (count == 1) 
			{print "Found", count, "record:", out}
		else
			{print "Found", count, "records:", out}
	}' 
}

#above $100 range
function case_five
{
	sort -t: -nk3 BookDB.txt | awk -F: '{ if($3 > 100)
		{count=count+1; out=out "\n" $1 ", " $2 ", $" $3 ", " $4 ", " $5 }
	}
	END { if (count == 1) 
			{print "Found", count, "record:", out}
		else
			{print "Found", count, "records:", out}
	}' 
}

selection=0
until [ "$selection" = "f" ]; do
    echo ""
    echo ""
    echo "         Sort by price range"
    echo ""
    echo "	a) \$0.00 to \$25.00"
    echo "	b) \$25.01 to \$50.00"
    echo "	c) \$50.01 to \$75.00"
    echo "	d) \$75.01 to \$100.00"
    echo "	e) Greater than \$100"
    echo "	f) Quit"
    echo ""
    echo ""
    read -p "Enter selection: " selection
    echo ""

    case $selection in
        a ) case_one ; press_enter ;;
        b ) case_two ; press_enter ;;
	c ) case_three ; press_enter ;;
	d ) case_four ; press_enter ;;
	e ) case_five; press_enter;;
        f ) break ;;
        * ) tput setf 4;echo "Please enter a, b, c, d, e, or f"; tput setf 9; press_enter
    esac
done


