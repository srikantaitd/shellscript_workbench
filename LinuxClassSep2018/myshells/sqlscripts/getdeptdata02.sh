clear
echo "`logname` You Are Connected on : `date -u '+%d-%m-%Y'`"
echo "Executing The Requested Process...Please Wait"
read -p "Please Enter The Department Number To Query : " indeptno
sqlplus -silent /nolog << EOF
CONNECT SCOTT/tiger@orcl
SPOOL /home/oracle/sqlscripts/deptdata02.out
SET VERIFY OFF
SET LINESIZE 120
SET PAGESIZE 20
SELECT Deptno, Dname, Loc
FROM Dept
WHERE Deptno = $indeptno;
SPOOL OFF
EXIT;
EOF
echo -e "Execution of The Request Completed"
echo "Returning To The Shell..."
