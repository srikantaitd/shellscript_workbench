clear
echo "Testing Case Statements in Shell"
echo "--------------***----------------------"
read -p "Enter Any Number Between 1 And 3 Inclusive : " num01
case $num01 in
1 ) echo "You Have Entered A Value of One"
	;;
2 ) echo "You Have Entered A Value of Two"
	;;
3 ) echo "You Have Entered A Value of Three"
	;;
* ) echo "Un-Identified Value As Input, As Between 1 And 3 Are Only Accepted"
	echo "Operating in Default Status of Case"
esac
