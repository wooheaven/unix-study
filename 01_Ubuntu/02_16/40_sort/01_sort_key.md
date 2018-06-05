# sort by key with Field, Character position
```{bash}
user@localhost:~$ cat sample.txt
a,A2
a,a24
b,B1
b,B142
c,C3
c,C49

user@localhost:~$ sort -t, -k2.2,2 sample.txt
b,B1
b,B142
a,A2
a,a24
c,C3
c,C49

user@localhost:~$ sort -t, -k2.2n,2 sample.txt
b,B1
a,A2
c,C3
a,a24
c,C49
b,B142

user@localhost:~$ sort -t, -k2.2n,2.3 sample.txt
b,B1
a,A2
c,C3
b,B142
a,a24
c,C49
```
