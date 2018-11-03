clear
mynum=0
while [ $mynum -lt 10 ]
do
   echo $mynum
   if [ $mynum -eq 5 ]
   then
      break
   fi
   mynum=`expr $mynum + 1`
done

