#!/bin/bash

#This little script demonstrates different ways how text can be displaed on the screen

# Way 1 (just using echo)

echo "First line with echo followed by an empty line with echo"
echo
echo "Second line with echo"

# Way 2 (using echo with $'\n')
echo $'\n'$"Line with an empty lines above and below using S'\n'" $'\n'

# Way 3 (Printing Formatted text with cat)

cat << _EOF_ 
      Formatted Text printed with the cat command
Line1
     Line2
          Line3
               Line4
          Line5
     Line6
Line7
_EOF_
exit




