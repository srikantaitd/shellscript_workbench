clear
if [ $# -eq 0 ]
then
echo "Error - Number Missing From The Command Line Argument"
echo "Syntax : $0 number"
echo "Program Used For Printing The Multiplication Table For The Given Number"
else
n=$1
v_num1=1
until [ $v_num1 -gt 10 ]
do
echo "$n * $v_num1 = `expr $v_num1 \* $n`"
v_num1=$(( ++v_num1 ))
done
fi
