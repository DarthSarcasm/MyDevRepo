ftppwd $1 $2 > /dev/null 2>&1
if [ "$?" -ne 0]
then
	echo "Password Not Found"
	exit 1
fi
echo "Password found"