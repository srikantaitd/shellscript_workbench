schema="SCOTT"
password="tiger"
database="orcl"
SQLPLUS_OUTPUT=$(sqlplus -silent "$schema/$password@$database" <<ENDOFSQL
SET PAGESIZE 0 
SET FEEDBACK OFF 
SET VERIFY OFF 
SET HEADING OFF 
SET ECHO OFF
DROP TABLE MyDept PURGE;
CREATE TABLE MyDept
(
 DeptID NUMBER(2)
 CONSTRAINT MyDept_DeptID_PK PRIMARY KEY
 CONSTRAINT MyDept_DeptID_CHK01
 CHECK(DeptID IN(10, 20, 30, 40, 50, 60, 70, 80, 90)),
 DeptName VARCHAR2(15)
 DEFAULT 'NOT GIVEN'
 CONSTRAINT MyDept_DeptName_NN NOT NULL 
 CONSTRAINT MyDept_DeptName_CHK01
 CHECK(DeptName = UPPER(DeptName)),
 DeptLoc VARCHAR2(15)
 DEFAULT 'NOT GIVEN'
 CONSTRAINT MyDept_DeptLoc_NN NOT NULL 
 CONSTRAINT MyDept_DeptLoc_CHK01
 CHECK(DeptLoc = UPPER(DeptLoc))
)
ENDOFSQL
)

if [ $? -ne 0 ]
then
    echo "Sorry! Table is Table Not Created..."
else
    echo "Table Created Successfully"
fi

