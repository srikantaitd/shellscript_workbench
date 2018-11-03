clear
echo "Testing of Nested if Scenario"
read -p "Please Give Any Number : " val01
read -p "Please Give Another Number : " val02
if [ $val01 -gt 10 ]
then
	if [ $val02 -gt 20 ]
	then
	echo "Both The Conditions in Nesting Are TRUE"
	else
	echo "The Second Condition in The Nesting is FALSE"
	fi
else
echo "The First Condition itself is FALSE"
fi
