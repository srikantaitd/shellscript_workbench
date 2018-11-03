declare -a menu=('HOT COFFEE' 'COLD COFFEE' 'HOTEAS' 'FROSTEAS' 'CHOCOHOLICAS' 'FRUITEAZERS' 'QUENCHERS' 'INTERNATIONAL COFFEE' 'LEMONADES')
clear
echo
echo "The Cafe Coffee Day Menu"
echo "---------------------------"
echo "1. ${menu[0]}"
echo "2. ${menu[1]}"
echo "3. ${menu[2]}"
echo "4. ${menu[3]}"
echo "5. ${menu[4]}"
echo "6. ${menu[5]}"
echo "7. ${menu[6]}"
echo "8. ${menu[7]}"
echo "9. ${menu[8]}"
echo "--------------End of Menu--------------"
echo
echo -e "Please Enter Your Choice : \c"
read choice
echo
echo "The Serving Time For \"${menu[$((choice - 1))]}\" is 15 Min(Approx)...Just Relax in Coffee Day..."
echo
echo "Thank You For Your Choice in \"Cofee Day\""
echo
