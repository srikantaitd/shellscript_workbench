clear
echo "The Courses Offered By Us..."
echo "------------0O0-------------"
echo "1. Unix OR Linux Basics"
echo "2. Unix OR Linux Shell Scripting"
echo -e "\n---------------------------"
read -p "Please Enter Your Choice : " choice
if [ -z $choice ]
then
echo "Did Not Find The Input For Choice..."
echo "cannot Continue...Terminating"
exit
else
	if [ $choice -eq 1 ]
	then
	echo "You Opted For \"Unix OR Linux Basics\""
	echo "Please Call Us on : 99857 89967 For Details"
	else
		if [ $choice -eq 2 ]
		then
		echo "You Opted For \"Unix OR Linux Shell Scripting\""
	        echo "Please Call Us on : 99857 89967 For Details" 
		else
		echo "Your Requested Course in Not Available"
	        echo "Please Select From The Available Choices"
		fi
	fi
fi
echo -e "\nThank You For Enquiring With Us..."
