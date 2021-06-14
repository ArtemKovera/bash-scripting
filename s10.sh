#!/bin/bash

#this is my own script for appending extensions
#to all filenames in a directory

#Artem Kovera 14.06.2021 

#the script takes two command-line arguments
#the first argument is a directory
#the second argument is a file extension


#check for the argument number
if [ ! $#  -eq  2 ]
then
    echo "Error: You must provide 2 command-line arguments"
    exit 1
fi


DIR=$1

#check for the first argument
if [ ! -d "${DIR}" ]
then
    echo "Error: The first argument must be a valid directory"
    exit 2
fi

count=0
EXT=$2

for file in "${DIR}"/*
do
    if [ -f $file ]
    then
        mv $file ${file}.$EXT
        count=$((count+1))
    fi
done

   
echo "The \"$2\" extension has been appended to \"$count\" files in the \"$1\" directory"
exit 0
