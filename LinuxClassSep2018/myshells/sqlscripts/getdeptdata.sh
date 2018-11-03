clear
echo "Connecting To Oracle Environment Please Wait..."
echo "Oracle Will Run in The Back Ground..."
sqlplus /nolog @/home/oracle/sqlscripts/getdeptdata.sql
echo -e "\nThe Process in SQL Environment is Completed..."
echo "Returned To Shell Prompt, `logname` You Can Continue With Regular Jobs..."
