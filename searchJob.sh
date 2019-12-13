myDescription=$1 # Getting the values of the parameters passed
myLocation=$2

httpLink="https://jobs.github.com/positions.json?description=${myDescription// /}&location=${myLocation// /}"
# The '// /' in the var names, erase spaces and concatenate the words so the link is viable
curl $httpLink -o myFile.json # Saves the info of the page in a .json file
cat myFile.json | jq 'map({company, title})' # We pipe the outpul of the cat command to the jq command, and include only 2 keys