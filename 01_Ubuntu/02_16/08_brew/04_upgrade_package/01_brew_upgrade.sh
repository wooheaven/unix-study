#!/bin/bash

# Check outdated formula
brew outdated | awk '{print $1}' > brew_outdated_formula.txt

# Check count of outdated formula
cnt=`wc -l brew_outdated_formula.txt | awk '{print $1}'`

# 
if [ $cnt -gt 0 ] ; then
formula=`head -1 brew_outdated_formula.txt`
echo "1st of "$cnt" formulas : "$formula
brew upgrade $formula
unset formula
else
echo "brew all formula is updated"
rm -rf brew_outdated_formula.txt
fi

unset cnt
