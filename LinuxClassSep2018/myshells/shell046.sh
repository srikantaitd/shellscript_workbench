clear
number=1
until [ $number -gt 10 ]
do 
echo "Printing The Row Number : $number"
number=$(( number + 1 ))
done
