```
# exclude : ! -path EXCLUDED_FILE
# exclude argumented path and rsync argumented file to another files
$ find `pwd` -type f -name ${1} ! -path `pwd`/$1 -exec rsync `pwd`/$1 {} \;
```
