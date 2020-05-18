# use length of variable in awk
```
$ cat sample.txt 
1
22
bbb
4444
aaaaa

$ awk 'BEGIN{FS=OFS="\t"} {print $1,length($1),substr($1,1,length($1)-1)}' sample.txt 
1	1	
22	2	2
bbb	3	bb
4444	4	444
aaaaa	5	aaaa
```
