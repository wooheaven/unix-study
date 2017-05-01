# for statement
```{bash}
# 1st for statement
$ echo $0
-bash

$ for ((num=1; num<=5; num++)) do
> printf "%d\n" ${num} ; 
> done
1
2
3
4
5

# 2nd for statement
$ for num in 1 2 3 4 5 ; do
> printf "%d\n" ${num} ;
> done
1
2
3
4
5

# 3rd for statement
$ for line in $(cat memo.txt); do 
> printf "%s\n" ${line} ; 
> done
1
2
3
4
5
```
