clear
read -p "Enter The Initial Value For Loop : " number
while [ $number -le 10 ]
do
echo "Printing The Row Number : $number"
number=$(( number + 1))
done
