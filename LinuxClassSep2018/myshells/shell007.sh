clear
echo "The Login Name is : `logname`"
echo "The Current Working Directory : `pwd`"
echo "`logname` You Are Connected on : `date -u '+%d-%m-%Y'`"
echo "The Connection Time is : `date -u '+%H:%M:%S'`"
echo "Displaying The Contents of Directory Path : `pwd`"
echo "------------------------oOo--------------------------------"
echo `ls -1 | cat -n &`
echo "The Total Elments Found in The Path \"`pwd`\" Are : `ls -1 | wc -l &` Elements"
echo "`logname` The Requested Operation is Completed"
echo "`logname` Terminating The Process And Returning To Shell"
echo "The Process Termination Time is : `date -u '+%H:%M:%S'`"

