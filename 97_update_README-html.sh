#!/bin/bash

# use brew tree with baseHREF as .
tree -CH . | sed 's/├/\╠/g; s/─/═/g; s/└/\╚/g; s/│/║/g' > Auto_README.html

# "./ to "
cat Auto_README.html | sed 's/\"[.]\//\"/g' > Auto_README.html.tmp
mv Auto_README.html.tmp Auto_README.html

# remove <h1>Directory Tree</h1>
cat Auto_README.html | sed 's/\<h1\>Directory Tree\<\/h1\>//g' > Auto_README.html.tmp
mv Auto_README.html.tmp Auto_README.html

# mv baseHREF . to UNIX-Study
#<a class="NORM" href=".">.</a><br> to <a class="NORM" href=".">UNIX-Study</a><br>
cat Auto_README.html | sed 's/\"\>[.]/\"\>UNIX_Study/g' > Auto_README.html.tmp
mv Auto_README.html.tmp Auto_README.html
 
# cp html to md
cp Auto_README.html Auto_README.md

# &nbsp;&nbsp; to &nbsp;[[:SPACE:]]
cat Auto_README.md | sed 's/\&nbsp;\&nbsp;/\&nbsp; /g' > Auto_README.md.tmp
mv Auto_README.md.tmp Auto_README.md

# ║[SPACE][SPACE] to ║&ensp;[SPACE]
cat Auto_README.md | sed 's/\║[[:space:]][[:space:]][[:space:]]/\║\&nbsp; \&nbsp;/g' > Auto_README.md.tmp
mv Auto_README.md.tmp Auto_README.md
