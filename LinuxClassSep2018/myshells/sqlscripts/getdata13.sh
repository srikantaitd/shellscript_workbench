sqlplus -s SCOTT/tiger > /home/oracle/sqlscripts/FullName.txt << EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
DECLARE
   V_FirstName VARCHAR2(15) := 'Sathish';
   V_LastName VARCHAR2(15) := 'Yellanki';
   V_FullName VARCHAR2(35);
BEGIN
   V_FullName := V_FirstName||' '||V_LastName;
   DBMS_OUTPUT.PUT_LINE(V_FullName);
END;
/
EXIT
EOF

FullName=`cat /home/oracle/sqlscripts/FullName.txt`
echo "Your Full Name is : $FullName"
rm -f /home/oracle/sqlscripts/FullName.txt
