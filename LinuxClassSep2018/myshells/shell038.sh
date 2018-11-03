clear
read -p "Enter A Digit OR Any Letter From English : " val01
case $val01 in
[a-z] | [A-Z] ) echo "You Have Entered An Alphabet : " $val01
			;;
[0-9] ) echo "You Have Entered A Single Digit : " $val01
		;;
* ) echo "In-Valid Input"
esac
