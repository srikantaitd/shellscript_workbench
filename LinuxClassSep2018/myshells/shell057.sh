clear
read -p "Enter The Starting Value of The Loop : " startvalue
while [ $startvalue -lt 10 ]
do
   echo "The Current Value is : $startvalue"
   if [ $startvalue -eq 5 ]
   then
      break
   fi
   startvalue=`expr $startvalue + 1`
done

