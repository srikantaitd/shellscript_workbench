clear
read -p "Enter The Initial Value For Loop : " number
read -p "Enter The Final Value : " final
while [ $number -le $final ]
do
echo "Printing The Row Number : $number"
number=$(( number + 1))
done
