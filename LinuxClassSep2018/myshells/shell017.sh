clear
read -p "Please Enter First Number : " val01
read -p "Please Enter Second Number : " val02
read -p "Please Enter The Operator (+, -, *, /, %, **) : " operator
echo "$val01 $operator $val02 = $((val01 $operator val02))"
