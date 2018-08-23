# space regular expression
```{bash}
$ cat sample.txt
║ ║1
║  ║2
║   ║3

$ cat sample.txt| sed -e 's/\║ //g'
║1
 ║2
  ║3

$ cat sample.txt| sed -e 's/\║[[:space:]]\{1,\}//g'
║1
║2
║3
```
