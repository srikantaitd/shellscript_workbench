clear
read -p "Enter The Starting Value of The Loop : " startvalue
read -p "Enter The Abnormal Value : " abnormal
while [ $startvalue -lt 10 ]
do
   echo "The Current Value is : $startvalue"
   if [ $startvalue -eq $abnormal ]
   then
      break
   fi
   startvalue=`expr $startvalue + 1`
done

