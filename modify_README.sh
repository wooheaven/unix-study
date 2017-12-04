#!/bin/bash

# for with file
while read line
do
	echo "line as String = "$line
	echo ""

	# save values to variables from a file
	oldStr=`echo $line | awk 'BEGIN{FS=OFS=" "} {print $1}'`
	newStr=`echo $line | awk 'BEGIN{FS=OFS=" "} {print $3}'`
	
	# check variables
	echo "oldStr = "$oldStr
	echo "newStr = "$newStr
	
	# grep $oldStr
	grep $oldStr README.md
	grep $oldStr README.md | sed -e "s|$oldStr|$newStr|"
	echo ""

	# modify
	sed -i "s|$oldStr|$newStr|" README.md
	
	# final
	unset oldStr
	unset newStr

done < change_A_to_B.txt
