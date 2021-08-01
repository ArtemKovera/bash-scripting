#!/bin/bash
#script for converting markdown files to pdf
#this script is analogous to the one from Kris Jordan`s youtube channel

file=${1}

if [ ! $# -eq 1 ]
then
    echo "Usage: <scriptname> <filename>"
    exit 1
fi

if [ ! -f "${1}.md" ]
then
    echo "There is no such a file"
    exit 2
fi

pandoc -o "${1}.pdf" "${1}.md"
exit 0