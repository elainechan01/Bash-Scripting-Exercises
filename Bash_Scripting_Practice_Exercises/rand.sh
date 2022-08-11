#!/bin/bash
read -p "Please enter a file extension: " EXTENSION
if [ "$EXTENSION" = "" ]
then
    echo "empty!"
else
    echo "not empty!"
fi 