#!/bin/bash -ex

<<task1
Write a shell script that exit on error and displays commands as they will execute, including all
expansions and substitutions. Use 3 lscommands in your script. Make the first one succeed,
the second one fail, and the third one succeed. If you are using the proper options, the third ls
command will not be executed.
task1
FILE="tmp"
/bin/ls $FILE

FILE="does-not-exist"
/bin/ls $FILE

FILE="/etc"
/bin/ls $FILE