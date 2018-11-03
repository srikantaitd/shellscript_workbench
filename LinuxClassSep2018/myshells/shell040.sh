clear
vnum1=1
read -p "Enter The Termination Value : " vnum2
while [ $vnum1 -le $vnum2 ] 
do
echo "Welcome $vnum1 Times"
vnum1=$(( ++vnum1 ))
done
