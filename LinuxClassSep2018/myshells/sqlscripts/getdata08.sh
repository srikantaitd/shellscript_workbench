clear
RETVAL=`sqlplus -silent scott/tiger << EOF
SET PAGESIZE 0 
SET FEEDBACK OFF 
SET VERIFY OFF 
SET HEADING OFF 
SET ECHO OFF
COL EMPNO FOR 9999
COL DEPTNO FOR 99
SELECT * 
FROM Emp
WHERE Deptno = 30;
EXIT;
EOF`
if [ -z "$RETVAL" ]
then
  echo "Sorry! `logname` Database Didnot Returned Any Data"
  #exit 0
else
  echo $RETVAL
fi
