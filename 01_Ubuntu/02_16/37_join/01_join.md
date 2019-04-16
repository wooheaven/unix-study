```bash
$ cat a.txt 
a 1
b 2
c 3

$ cat b.txt 
a A
b B
c C

$ cat a.txt b.txt 
a 1
b 2
c 3
a A
b B
c C

$ join a.txt b.txt 
a 1 A
b 2 B
c 3 C
```
