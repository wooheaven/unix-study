# find with basename
```{zsh}
ls -als | grep txt
0 -rw-r--r--  1 rwoo  staff    0  1  9 23:10 a.txt
0 -rw-r--r--  1 rwoo  staff    0  1  9 23:10 b.txt
0 -rw-r--r--  1 rwoo  staff    0  1  9 23:10 c.txt

find `pwd` -type f -name "*.txt" -exec echo {} \;
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/a.txt
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/b.txt
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/c.txt

find `pwd` -type f -name "*.txt" -exec basename {} \;
a.txt
b.txt
c.txt

find `pwd` -type f -name "*.txt" -exec basename {} > textFiles \;

cat textFiles
a.txt
b.txt
c.txt
```
