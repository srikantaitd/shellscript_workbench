functionOne()
{
echo "Message From Function One"
echo "Leaving Function One"
}

functionTwo()
{
echo "Message From Function Two"
echo "Leaving Function Two"
}

functionThree()
{
echo "Message From Function Three"
echo "Leaving Function Three"
}

clear
echo "Calling Function One"
functionOne
echo "Function One Returned"
echo
echo "Calling Function Two"
functionTwo
echo "Function Two Returned"
echo
echo "Calling Function Three"
functionThree
echo "Function Three Returned"
