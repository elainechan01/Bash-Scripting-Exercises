#!/bin/bash


# Write a shell script that displays "This script will exit with a 0 exit status." Be sure that the script does indeed exit with a 0 exit status.
# echo "This script will exit with a 0 exit status" && exit 0


# Write a script that executes the command "cat /etc/shadow". If the command returns a 0 exit status report "Command succeeded" and exit with a 0 exit status. If the command returns a non­zero exit status report "Command failed" and exit with a 1 exit status.
PATH="/etc/shadow"
/bin/cat $PATH          # specify the exact path to the command `cat`
if [ "$?" -eq "0" ]
then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi