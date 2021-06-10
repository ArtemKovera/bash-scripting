#! /bin/bash

#Script to prompt to back up files and location
#the files will be serched on from the user's home
#directory and can only be backed up to a directory
#within $HOME

# -- This script is from the book 
# -- Mastering Linux Shell Scripting - Second Edition 
# -- by Mokhtar Ebrahim and  Andrew Mallett

read -p "Which file types do you want to backup " file_suffix
read -p "Which directory do you want to backup to " dir_name

# The next line creates the directory if it does not exist
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name

# The find command will copy files the match the 
# search criteria ie .sh . The -path, -prune and -o
# options are to exclude the backdirectory from the
# backup.
find $HOME -path $HOME/$dir_name -prune -o \
 -name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;
exit 0

