loopcounter=1
read -p "Please Enter The Directory Name : " dirname
read -p "Please Enter The Number of Directories You Need : " dirnum
while [ $loopcounter -le $dirnum ]
do
mkdir /root/myshells/$dirname$loopcounter
loopcounter=$(( loopcounter + 1 ))
done
