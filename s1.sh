#!/bin/bash
# Script for updating the system 
# Uses '--u' and '--uc' command-line arguments

# Functions:

# Updating the system
update()
{
   echo "Starting updating the system..."
   sudo apt update
   sudo apt dist-upgrade -yy
   echo "The system has been updated"
}

# Cleaning the system
clean()
{
    echo "Removing unnecessary packages..."
    sudo apt autoremove -yy
    sudo apt autoclean
    echo "Packages have been removed"
}

# Update is complete
end()
{
   echo "Updating is complete!"
   exit 0
}



# Execution:

echo "Script for updating the system"

# Update:

if [  "$1" = "--u" ]
then
    update
    end
fi

if [ "$1" = "--uc" ]
then
    update
    clean
    end
fi

# Checking for invalid argument
if [ -n "$1" ]
then
     echo "Erro: Invalid argument: ${1} Try '--u' for updating or '--uc' for updating and cleaning"
     exit 1
fi

# if the user hasn't entered any arguments
echo "You have not privided a comman-line argument" 
echo "Try '--u' for updating or '--uc' for updating and cleaning"
exit 2
