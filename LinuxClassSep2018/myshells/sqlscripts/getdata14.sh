sqlplus -s SCOTT/tiger > /home/oracle/sqlscripts/TabCount.txt << EOF
SET SERVEROUTPUT ON
SET FEEDBACK OFF
DECLARE
   tab_count NUMBER;
BEGIN
   SELECT COUNT(*) INTO tab_count
   FROM user_all_tables;

   DBMS_OUTPUT.PUT_LINE(tab_count);
END;
/
EXIT
EOF

tabcount=`cat /home/oracle/sqlscripts/TabCount.txt`
echo "You Have Total $tabcount Tables"

rm -f /home/oracle/sqlscripts/TabCount.txt
