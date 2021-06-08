#!/bin/bash

#This script promts the user to enter their name and age
#Based on this information the script decides which group the user belongs to


#Entering name
echo "enter your name:"
read name 

if [[ "$name" == "" ]]
then
    echo "You've entered an empty name"
    echo "Please provide your true name"
    exit
fi
    
#Entering age
echo "enter your age:"
read age

if [[ $age -lt 1 ]]
then
    echo "You've entered an appropriate age value"
    echo "Please provide your true age"
    exit
elif [[ $age -le 16 ]]
then
    echo "$name, your group is child"
    exit
elif [[ $age -ge 17 && $age -le 25 ]]
then
    echo "$name, your group is youth"
    exit
elif [[ $age -ge 26 ]]
then
    echo "$name, your group is adult"
    exit
fi
