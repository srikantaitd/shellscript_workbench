clear
read -p "Enter First Value  : " val01
read -p "Enter Second Value : " val02
if [ $val01 -gt $val02 ]
then
echo "The First Value is Greater Than The Second Value"
else
echo "The First Value is Smaller Than The Second Value"
fi 
