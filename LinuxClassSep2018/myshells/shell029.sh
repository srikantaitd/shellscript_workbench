clear
if [ $# -eq 2 ]
then
	if [ $1 -gt $2 ]
	then
	echo "The First Value is Greater Than The Second Value"
	else
	echo "The First Value is Smaller Than The Second Value"
	fi
else
echo "Sorry! Improper Parameters Identified, Please Check"
fi
