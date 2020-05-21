```
$ cat a/1.txt 
a
ab
abc

$ cat a/2.txt 
a
ab
abc

$ egrep -r "b" a/
a/1.txt:ab
a/1.txt:abc
a/2.txt:ab
a/2.txt:abc
```
