clear
a=1
while [ "$a" -le 10 ]
do
	while [ "$a" -le 5 ]
	do
		echo "Inner Loop Output"
		a=`expr $a + 1`
	done
echo "Outer Loop Output"
a=`expr $a + 1`
done
