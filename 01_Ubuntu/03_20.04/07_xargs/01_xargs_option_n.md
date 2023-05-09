```
$ cat 2.txt 
1 2 3
2 3 4
3 4 5
4 5 6

$ cat 2.txt | xargs -n2
1 2
3 2
3 4
3 4
5 4
5 6

$ cat 2.txt | xargs -n4
1 2 3 2
3 4 3 4
5 4 5 6
```
