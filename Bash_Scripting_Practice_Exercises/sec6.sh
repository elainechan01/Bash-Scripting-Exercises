#!/bin/bash

# renames all files in the current directory that end in ".jpg" to begin with today's date 

for FILE in *.jpg
do 
    /bin/mv $FILE $(date +%y%m%d)$FILE
done

# renames files based on file extension and prepend user's choice of date
TODAY=$(date +%y%m%d)

read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix: (Press ENTER for ${TODAY}) " PREFIX 

for FILE in *.$EXTENSION
do
    if [[ "$PREFIX" = "" ]]
    then
        /bin/mv $FILE ${FILE//$TODAY/""}
    else
        /bin/mv $FILE $PREFIX$FILE
    fi 
done