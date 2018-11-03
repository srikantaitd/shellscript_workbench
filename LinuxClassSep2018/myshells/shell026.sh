clear
if [ $# -eq 0 ]
then
echo -e "\nThe Input Parameter is Missing"
echo "Cannot Execute The Code"
exit 1
fi

if [ $1 -gt 0 ]
then
echo -e "\nThe Given Number is Positive"
echo -e "\nThe Scanned Value is : $1"
fi

