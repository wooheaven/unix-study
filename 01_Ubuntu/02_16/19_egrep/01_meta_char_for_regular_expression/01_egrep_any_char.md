```
$ cat -n file.txt 
     1	aab
     2	abb
     3	cba

$ grep -n 'b' file.txt 
1:aab
2:abb
3:cba

$ grep -n '.b.' file.txt 
2:abb
3:cba
```
