```
$ cat -n file.txt 
     1	aa
     2	ab

$ egrep -n 'a' file.txt 
1:aa
2:ab

$ egrep -n 'a$' file.txt 
1:aa
```
