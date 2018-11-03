clear

v_num1=1
v_num2=$1

if [ $# -eq 1 ]
then
	until [ $v_num1 -gt $v_num2 ]
	do
	echo "Welcome $v_num1 Times"
	v_num1=$(( ++v_num1 ))
	done
else
echo "Sorry! Input Value Not Found"
fi
