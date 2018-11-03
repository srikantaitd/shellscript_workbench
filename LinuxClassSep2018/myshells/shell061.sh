declare -a menu=("HOT COFFEE" "COLD COFFEE" "HOTEAS" "FROSTEAS" "CHOCOHOLICAS" "FRUITEAZERS" "QUENCHERS" "INTERNATIONAL COFFEE" "LEMONADES")
seqno=1
clear
echo "The Cafe Coffee Day Menu"
echo "---------------------------"
for mymenu in  ${!menu[*]}
do
printf "$seqno.   %s\n" "${menu[$mymenu]}"
seqno=$((seqno + 1))
done
echo "Coffee Day Has Total : ${#menu[*]} Flavors For You..."
echo
echo "--------------End of Menu--------------}"
echo
echo -e "Please Enter Your Choice : \c"
read choice
echo
echo "The Serving Time For \"${menu[$((choice - 1))]}\" is 15 Min(Approx)...Just Relax in Coffee Day..."
echo
echo "Thank You For Your Choice in \"Cofee Day\""
echo
