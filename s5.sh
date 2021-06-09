#!/bin/bash

#this little  script demonstrates how to use case 

#this script is from the book Beginning Linux Programming by Neil Matthew, Richard Stones

echo "Is it morning? Please answer yes or no"
read timeofday

case "$timeofday" in
    yes) echo "Good Morning";;
    no ) echo "Good Afternoon";;
    y  ) echo "Good Morning";;
    n  ) echo "Good Afternoon";;
    *  ) echo "Sorry, answer not recognized";;
esac

exit 0
