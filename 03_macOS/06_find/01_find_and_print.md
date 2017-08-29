# find and print target files with basename
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

# find with maxdepth
```{zsh}
ls -alsR
total 8
0 drwxr-xr-x  7 rwoo  staff  238  8 29 16:27 .
0 drwxr-xr-x  8 rwoo  staff  272  8 29 16:20 ..
0 -rw-r--r--  1 rwoo  staff    0  8 29 16:23 a.txt
0 -rw-r--r--  1 rwoo  staff    0  8 29 16:23 b.txt
0 -rw-r--r--  1 rwoo  staff    0  8 29 16:23 c.txt
0 drwxr-xr-x  3 rwoo  staff  102  8 29 16:27 sub1

./sub1:
total 0
0 drwxr-xr-x  3 rwoo  staff  102  8 29 16:27 .
0 drwxr-xr-x  7 rwoo  staff  238  8 29 16:27 ..
0 -rw-r--r--  1 rwoo  staff    0  8 29 16:27 d.txt

find `pwd` -maxdepth 1 -type f -name "*.txt" -exec echo {} \;
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/a.txt
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/b.txt
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/c.txt

find `pwd` -type f -name "*.txt" -exec echo {} \;
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/a.txt
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/b.txt
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/c.txt
/Users/rwoo/02_WorkSpace/10_Unix-Study/UNIX-Study/03_macOS/06_find/sub1/d.txt
```

# find *.java and sed move CRLF to LF
```{zsh}
find $1 -type f -name "*.java" -exec sed -i '' $'s/^M//' {} \;
```

# find *.java and sed move TAB to 4Spaces
```{zsh}
find $1 -type f -name "*.java" -exec sed -i '' $'s/\t/    /g' {} \;
```
