# find and print target files
```bash
ls -als | grep txt
0 -rw-r--r--  1 rwoo  staff    0  1  9 23:10 a.txt
0 -rw-r--r--  1 rwoo  staff    0  1  9 23:10 b.txt
0 -rw-r--r--  1 rwoo  staff    0  1  9 23:10 c.txt

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
