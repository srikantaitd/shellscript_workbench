functionOne()
{
echo "Message From Function One"
echo "Working in Function One Definition"
echo "Calling Function Two From Function One"
functionTwo
echo "Function Two Returned into Function One"
echo "Leaving Function One"
echo
}

functionTwo()
{
echo "Message From Function Two"
echo "Working in Function Two Definition"
echo "Calling Function Three From Function Two"
functionThree
echo "Function Three Returned into Function Two"
echo "Leaving Function Two"
echo
}

functionThree()
{
echo "Message From Function Three"
echo "Working in Function Three Definition"
echo "Function Three is Returning into Function Two"
echo "Leaving Function Three"
echo
}

clear
echo "Calling Function One"
functionOne
echo "Function One Returned"

