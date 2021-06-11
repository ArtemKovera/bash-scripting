#! /bin/bash

#Script to evaluate student grades

# -- This script is from the book 
# -- Mastering Linux Shell Scripting - Second Edition 
# -- by Mokhtar Ebrahim and  Andrew Mallett with my slight modifications

if [ ! $# -eq 2 ]
then 
    echo "You must provide <student> <grade>"
    exit 2
fi

case $2 in
    [A-C]|[a-c]) 
        echo "$1 is a star pupil"
        exit 0
    ;;
    [Dd]) 
        echo "$1 needs to try a little harder!"
        exit 0
    ;;
    [E-F]|[e-f]) 
        echo "$1 could do a lot better next year"
        exit 0
    ;;
    *) 
        echo "Grade could not be evaluated for $1 $2"
        exit 1
    ;;
esac
