function checkIfUserOnline {
    status=0
    for u in $(who | awk '{print $1}' | sort | uniq) # u = IDs of the logged in users
    do
        if [ "$u" == "$1" ] # If ID given matches someone online
        then
            return 0
        fi
    done
    return 1
}


isthereWrite=$(command -v write) # Checking if command exists on our System
if [[ -z $isthereWrite ]] #Checking if command returned nothing
then
    echo "There is no write command in this System"
    exit 0
fi

myID=$1
fullName=$(getent passwd | awk -F: -v id=$myID '$1 == id { print $5 }')
if [[ -z $fullName ]]
then
    echo "User does not exist in the System"
    exit 0
else
    checkIfUserOnline $myID # Calling our function above
    returned_value=$? # Value returned by the called function
fi
if [ $returned_value -eq 1 ]
then
    echo "User is not logged in"
    exit 0
else
    read -p "Enter your message: "
    echo "$REPLY" > messageFile.txt # Saves message to .txt file
    write $myID < messageFile.txt
    echo "Message Sent!"
fi
rm messageFile.txt
exit 0
