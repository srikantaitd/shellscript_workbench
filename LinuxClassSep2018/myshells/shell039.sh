clear
read -p "Enter The Operator (+, -, *, /) : " operator
read -p "Enter The First Operand  : " operand01
read -p "Enter The Second Operand : " operand02
case $operator in
+ ) echo "$operand01 + $operand02 = $(( operand01 + operand02 ))"
	;;
- ) echo "$operand01 - $operand02 = $(( operand01 - operand02 ))"
        ;; 
[*] ) echo "$operand01 * $operand02 = $(( operand01 * operand02 ))"
        ;;
/ ) echo "$operand01 / $operand02 = $(( operand01 / operand02 ))"
        ;;
* ) echo "Sorry! Invalid Operator...Cannot Continue"
esac
