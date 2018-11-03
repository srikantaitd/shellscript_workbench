myfiledata=( `cat "/root/myshells/courses.dat"` )
for myindex in "${myfiledata[@]}"
do
echo $myindex
done
