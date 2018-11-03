listdir()
{
mydir=`pwd`
ls $mydir
}

printdir()
{
echo "You Are Working in : `pwd`"
}

getlogname()
{
echo "Your Loging Name is : `logname`"
}

getcurrdate()
{
echo "The Current Date is : `date -u '+%d-%m-%Y'`"
}

clear
echo "Services Offered From Oureside"
echo "-----------------oOo----------------"
echo "1. List The Directory"
echo "2. Query Current Directory"
echo "3. Query The Loging User Name"
echo "4. Query The Current Date"
read -p "Please Enter Your Choice : " choice
if [ $choice -eq 1 ]
then
listdir
else
	if [ $choice -eq 2 ]
	then
	printdir
	else
		if [ $choice -eq 3 ]
		then
		getlogname
		else
			if [ $choice -eq 4 ]
			then
			getcurrdate
			else
			echo "Input Not Verified"
			fi
		fi
	fi
fi			
