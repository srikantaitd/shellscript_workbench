clear
echo "`logname` You Are Connected on : `date -u '+%d-%m-%Y'`"
echo "Executing The Requested Process...Please Wait"
echo "Routine For Registering The New Departments"
echo "------------------------OoO----------------------------"
read -p "Please Enter The Department Number   : " indeptno
read -p "Please Enter The Department Name     : " indeptname
read -p "Please Enter The Department Location : " indeptloc
if [ -z $indeptno -o -z $indeptname -o -z $indeptloc ]
then
echo "Sorry! Cannot Proceed..."
echo "Input Data is Missing From The End User"
echo "Process Terminating..."
else
sqlplus -silent /nolog << EOF
CONNECT SCOTT/tiger@orcl
INSERT INTO Dept(Deptno, Dname, Loc)
VALUES($indeptno, '$indeptname', '$indeptloc');
EXIT;
EOF
fi
echo -e "Execution of The Request Completed"
echo "Returning To The Shell..."
