#!/bin/bash


# Print message and hostname

MESSAGE="Shell Scripting is Fun!"
HOSTNAME=$(hostname)

echo "The script is running on ${HOSTNAME}."


# check if the file "/etc/shadow" exists and is writable

if [ -e /etc/shadow ]
then
	echo "Shadow passwords are enabled."
fi
if [ -w /etc/shadow ]
then
	echo "You have permissions to edit /etc/shadow."
else	
	echo "You do NOT have permissions to edit /etc/shadow."
fi


# display "man, bear, pig, dog, cat, sheep"

for ANIMAL in man bear pig dog cat sheep
do
	echo "$ANIMAL"
done


# prompts the user for a name of a file or directory, report if it's a regular file, a directory, or other. Perform `ls` command

# have to add $HOME for parent directories; replace `ls` command with `echo` not working?
read -p "Enter name to check: " TO_LIST
PATH=$(dirname "$TO_LIST")
if [[ -d "$PATH" ]]
then
	echo "You selected a directory"
	echo "$PATH"
elif [[ -f "$PATH" ]]
then
	echo "You selected a file"
else
	echo "You selected another type of file"
fi