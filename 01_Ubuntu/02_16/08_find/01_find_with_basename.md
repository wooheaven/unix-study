# find with basename
```{bash}
$ find `pwd` -type f -name "*.txt" -exec echo {} \;
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/c.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/sub1/d.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/b.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/a.txt

$ find `pwd` -type f -name "*.txt" -exec basename {} \;
c.txt
d.txt
b.txt
a.txt

$ find `pwd` -type f -name "*.txt" -exec basename {} > textFiles \;

$ cat textFiles
a.txt
b.txt
c.txt
```
