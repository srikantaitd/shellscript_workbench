schema="SCOTT"
password="tiger"
database="orcl"

SQLPLUS_OUTPUT=$(sqlplus -s "$schema/$password@$database" << ENDOFSQL
SET LINESIZE 120
SET PAGESIZE 100
SELECT Ename 
FROM Emp;
EXIT;
ENDOFSQL
)

if [ $? -ne 0 ]
then
    echo "Query Execution Failed...Check The Status!"
else
    echo "Query Executed Successfully!"
        read -p "Do You Want To See The Data (Y/N) : " choice
                if [ "$choice" = "Y" ]
                then
                echo -e "The Queried Data is : \n$SQLPLUS_OUTPUT"
                else
                exit
                fi
fi
