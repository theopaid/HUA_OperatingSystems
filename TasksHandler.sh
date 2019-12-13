InsertTask () {
    echo -n "What's the Name of the Task?: " # -n is used to prevent the command from changing line
    read taskName
    dateAndtime=$(date +"%d%m%Y%H%M")
    echo "$dateAndtime:$taskName" >> todoList.txt # Everytime a new Task is written on a new line
    echo "Task inserted!"
}

DeleteTask () {
    echo "Here are all the Tasks you have:"
    cat todoList.txt
    echo -n "What Task do you want to Delete? (Insert index): " # Getting the number of Task to Delete
    read indexToDel
    taskCount=$(awk 'END { print NR }' todoList.txt) # NR stands for the number of records in a file
    if [ $indexToDel -gt $taskCount ] # If index input is greater than the count of Tasks
    then
        echo "Invalid Task Input"
        return
    fi
    sed -i "${indexToDel}d" todoList.txt # '-i' Edits and overwrites the file on the spot
    echo "Task Deleted!"
}

ModifyTask () {
    echo "Here are all the Tasks you have:"
    cat todoList.txt
    echo -n "What Task do you want to Modify? (Insert Name): "
    read nameToMod
    grep -q "$nameToMod" todoList.txt # '-q' gives no output and returns 0 or 1, if name was found or not
    if [ $(echo $?) -eq 1 ] # 'echo $?' gives the output of the previous command
    then
        echo "Invalid Task Input"
        return
    fi
    echo -n "What is the new Name you want the Task to have?: "
    read newName
    sed -i "s/"$nameToMod"/"$newName"ask/" todoList.txt # Finds 'nameToMod' and replaces it with 'newName'
    echo "Task name changed!"
}

SearchTask () {
    echo -n "Enter a keyword, in order to search the tasks: "
    read keyword
    grep "$keyword" todoList.txt
}

PreviewTasks () {
    echo "Here are the tasks, sorted out:"
    sort -k 1 todoList.txt # '-k' argument is probably unecessary , but i pass it just for "piece of mind"
}

PreviewDailyTasks () {
    echo "Here are the today's Tasks, sorted out:"
    currentDate=$(date +"%d%m%Y")
    grep -i "^$currentDate" todoList.txt | sort -k 1 # grep here searches the match necessarily from the start of every line
    # and then it pipes to the sort
}

PS3='Please enter your choice: ' # It gets printed over and over again
options=("Insert Task" "Delete Task" "Modify Task" "Search Task" "Preview Tasks" "Preview Daily Tasks" "Quit")
select opt in "${options[@]}"
do
    case $opt in # This is the menu
        "Insert Task")
            InsertTask
            ;;
        "Delete Task")
            DeleteTask
            ;;
        "Modify Task")
            ModifyTask
            ;;
        "Search Task")
            SearchTask
            ;;
        "Preview Tasks")
            PreviewTasks
            ;;
        "Preview Daily Tasks")
            PreviewDailyTasks
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done