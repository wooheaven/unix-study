# use length of variable in awk
```
$ cat sample.txt
1
2a
3ab
4abc
5abcd

$ awk 'BEGIN{FS=OFS="\t"} {print $1,length($1),substr($1,1,length($1)-1)}' sample.txt
1	1	
2a	2	2
3ab	3	3a
4abc	4	4ab
5abcd	5	5abc
```
