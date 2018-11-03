clear
echo "Connecting To Oracle Environment Please Wait..."
echo "Oracle Will Run in The Back Ground..."
sqlplus -silent /nolog @/home/oracle/sqlscripts/getempdata.sql
echo -e "\nThe Process in SQL Environment is Completed..."
echo "Returned To Shell Prompt, `logname` You Can Continue With Regular Jobs..."
