clear
echo "Testing of Else if Ladders"
echo "------------***--------------"
read -p "Please Enter The Required Operator (+, -, /, *) : " operator
read -p "Please Enter The First Operand : " operand01
read -p "Please Enter The Second Operand : " operand02
if [ "$operator" = "+" ]
then
echo "$operand01 + $operand02 = $(( operand01 + operand02 ))"
elif [ "$operator" = "-" ]
	then
	echo "$operand01 - $operand02 = $(( operand01 - operand02 ))"
	elif [ "$operator" = "*" ]
		then
		echo "$operand01 * $operand02 = $(( operand01 * operand02 ))"
		elif [ "$operator" = "/" ]
			then
			echo "$operand01 / $operand02 = $(( operand01 / operand02 ))"
			else
			echo "Sorry! In-Valid Operator As Input"
			fi
