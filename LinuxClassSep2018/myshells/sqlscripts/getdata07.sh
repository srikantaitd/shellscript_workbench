clear
RETVAL=`sqlplus -silent scott/tiger << EOF
SET PAGESIZE 0 
SET FEEDBACK OFF 
SET VERIFY OFF 
SET HEADING OFF 
SET ECHO OFF
SELECT * 
FROM Emp
WHERE Deptno = 40;
EXIT;
EOF`
if [ -z "$RETVAL" ]
then
 echo "Sorry! `logname` Database Didnot Returned Any Data"
else
 echo "Query Executed Successfully, Returing The Data To The Process"
fi
