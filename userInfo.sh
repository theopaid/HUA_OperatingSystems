myID=$1 #Get data from parameter
fullName=$(awk -F: -v id=$myID '$1 == id { print $5 }' /etc/passwd) # Extracting the name, if id given matches one from the passwd file
if [[ -z $fullName ]] # Checking if awk command found a match or returned nothing
then
    echo "User is not local"
else
    echo "$fullName"
    exit 0
fi
fullName=$(getent passwd | awk -F: -v id=$myID '$1 == id { print $5 }')
if [[ -z $fullName ]]
then
    echo "User does not exist in the System"
else
    echo "$fullName"
fi
exit 0

