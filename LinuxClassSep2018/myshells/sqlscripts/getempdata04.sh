clear
echo "`logname` You Are Connected on : `date -u '+%d-%m-%Y'`"
echo "Executing The Requested Process...Please Wait"
read -p "Please Enter The Department Number To Query : " indeptno
if [ -z $indeptno ]
then
echo "Sorry! Cannot Proceed..."
echo "Input Parameter is Missing From The End User"
echo "Process Terminating..."
else
sqlplus -silent /nolog << EOF
CONNECT SCOTT/tiger@orcl
SPOOL /home/oracle/sqlscripts/empdata04.out
SET VERIFY OFF
SET LINESIZE 120
SET PAGESIZE 20
COL EMPNO FOR 9999
COL DEPTNO FOR 9999
COL ENAME FOR A10
COL MGR FOR 9999
SELECT *
FROM Emp
WHERE Deptno = $indeptno;
SPOOL OFF
EXIT;
EOF
fi
echo -e "Execution of The Request Completed"
echo "Returning To The Shell..."
