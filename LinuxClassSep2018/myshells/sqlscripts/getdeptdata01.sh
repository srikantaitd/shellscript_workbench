clear
echo "`logname` You Are Connected on : `date -u '+%d-%m-%Y'`"
echo "Executing The Requested Process...Please Wait"
sqlplus -silent /nolog << EOF
CONNECT SCOTT/tiger@orcl
SPOOL /home/oracle/sqlscripts/deptdata01.out
SET VERIFY OFF
SET LINESIZE 120
SET PAGESIZE 20
SELECT Deptno, Dname, Loc
FROM Dept;
SPOOL OFF
EXIT;
EOF
echo -e "\nExecution of The Request Completed"
echo "Returning To The Shell..."
