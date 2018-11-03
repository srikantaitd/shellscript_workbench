clear
read -p "Please Enter The First Number  : " mynum1
read -p "Please Enter The Second Number : " mynum2

if [ $mynum1 -eq $mynum2 ]
then
echo -e "\nBoth The Given Numbers Are Equal"
echo -e "\nThe Scanned Values Are : $mynum1, $mynum2\n"
fi 
