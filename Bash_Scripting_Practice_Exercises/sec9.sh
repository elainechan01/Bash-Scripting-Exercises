#!/bin/bash

<<task1
Write a shell script that loops through the /etc/passwd file one line at a time. 
Prepend each line with a line number followed by a colon and then a space.
task1

LINE_NUM=1
while read LINE 
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/passwd

<<task2
Write a shell script that asks the user for the number of lines they would like to display from the
/etc/passwd file and display those lines.
task2

read -p "How many lines of /etc/passwd would you like to see? " LINES_TO_VIEW
LINE_COUNT=1
while read LINE
do
    if [ "$LINE_COUNT" -gt "$LINES_TO_VIEW" ]
    then
        break
    fi
    echo "${LINE}"
    ((LINE_COUNT++))
done < /etc/passwd

<<task3
Write a shell script that that allows a user to select an action from the menu. The actions are to
show the disk usage, show the uptime on the system, and show the users that are logged into
the system. Tell the user to enter qto quit. Display "Goodbye!" just before the script exits.
task3
while true
do
    echo -e "1. Show disk usage.\n2. Show system uptime.\n3. Show the users logged into the system."
    read -p "What would you like to do? (Enter q to quit.) " INPUT
    if [[ "$INPUT" -eq '1' ]]
    then
        /bin/df
        echo
    elif [[ "$INPUT" -eq '2' ]]
    then
        /usr/bin/uptime
        echo
    elif [[ "$INPUT" -eq '3' ]]
    then
        /usr/bin/who
        echo
    elif [[ "$INPUT" == "q"* ]]
    then
        echo "Goodbye!"
        break
    else
        echo "Invalid option."
        echo
    fi
done