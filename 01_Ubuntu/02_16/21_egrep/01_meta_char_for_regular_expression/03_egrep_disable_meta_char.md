```
$ cat -n file.txt 
     1	a$
     2	aa

$ egrep -n 'a$' file.txt 
2:aa

$ egrep -n 'a\$' file.txt 
1:a$
```
