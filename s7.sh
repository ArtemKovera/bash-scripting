#! /bin/bash

# this little script demonstrates how to get a password from a user



while true
do
    read -sn8 -p "Please enter your password:"

    if [ $REPLY = "password" ]
    then
        echo
        echo "The password is correct"
        break
    else
        echo "The password is incorrect"
    fi
     
done
exit 0
 
