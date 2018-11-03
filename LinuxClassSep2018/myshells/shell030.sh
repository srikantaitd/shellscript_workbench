clear
read -p "Enter First Value  : " val01
if [ -z $val01 ]
then
echo "Missing The Required Input For First Operand...Cannot Proceed, Hence Terminating"
exit
else
	read -p "Enter Second Value : " val02
	if [ -z $val02 ]
	then
	echo "Missing The Required Input For Second Operand...Cannot Proceed, Hence Terminating"
	exit
	else
		if [ $val01 -gt $val02 ]
		then
		echo "The First Value is Greater Than The Second Value"
		else
		echo "The First Value is Smaller Than The Second Value"
		fi
	fi
fi

