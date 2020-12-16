```{bash}
$ cat input.txt 
1
4
2
5
3

$ awk '{if ($1 >= 3) { print $1 } else { print "smaller" } }' input.txt
smaller
4
smaller
5
3
```
