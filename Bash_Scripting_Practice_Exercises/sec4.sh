#!/bin/bash

# create a function that displays the number of files in the present working directory
function file_count(){
    local FIND_FILES=$( /bin/ls | /usr/bin/wc -l )
    echo "$FIND_FILES"
}

# create a function that displays the number of files of user's input of a directory (/etc, /var, /user/bin)
function file_count2(){
    local FIND_FILES=$( /bin/ls $1 | /usr/bin/wc -l )
    echo "$FIND_FILES"
}

file_count

file_count2 /etc
file_count2 /var
file_count2 /usr/bin