#!/bin/bash

# save values to variables from a file
oldStr=$(awk 'BEGIN{FS=OFS=" "} {print $1}' change_A_to_B.txt)
newStr=$(awk 'BEGIN{FS=OFS=" "} {print $3}' change_A_to_B.txt)

# check variables
echo "oldStr = "$oldStr
echo "newStr = "$newStr

# modify
#grep $oldStr README.md | sed -e "s|$oldStr|$newStr|"
sed -i "s|$oldStr|$newStr|" README.md

# final
unset oldStr
unset newStr
