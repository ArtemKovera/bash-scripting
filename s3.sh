#!/bin/bash

# this little script is for comparing two strings

echo "Enter 1st string"
read str1

echo "Enter 2nd string"
read str2

if [ "$str1" == "$str2" ]
then
    echo "match"
else
    echo "mismatch"
fi
exit 0
