clear
echo "The Current Session User is : `logname`"
echo "The Script Execution Started At : `date -u '+%d-%m-%Y'`"
echo "The User `logname` is Currently Working From : `pwd`"
echo
echo "Services Provided By This Program"
echo "---------------OoO---------------"
echo
echo "1. List The Contents"
echo "2. List The Contents in Single Column"
echo "3. List Along With \"i\" Nodes"
echo "4. List in Detail"
echo
read -p "Please Enter Your Choice : " choice
if [ -z $choice ]
then
echo "Cannot Continue...Input is Missing"
exit
else
	if [ $choice -eq 1 ]
	then
	ls
	else
		if [ $choice -eq 2 ]
        	then
        	ls -1
        	else
			if [ $choice -eq 3 ]
                	then
                	ls -i
                	else
				if [ $choice -eq 4 ]
                		then
                		ls -l
                		else
				echo "Input Choice is Not Correct, Please Check"
				fi
			fi
		fi
	fi
fi
echo
echo "Thank You For Using The Listing Services"
echo


