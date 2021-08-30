#!/bin/bash
# a bash script to determine the sixe of a file
# takes 1 argument (path to the file)

if [ ! $#  -eq  1 ]
then
    echo "Error: You must provide 2 command-line arguments"
    exit 1
fi

if [ ! -f $1 ]
then
    echo "you must provide a valid file path"
    echo "usage: $0 <file_path>"
    exit 2
fi

fileSize=$(du -bs $1 | cut -f1)
echo "The file size is $fileSize bytes" 
exit 0   