# find *.java and sed move CRLF to LF
```{bash}
$ find $1 -type f -name "*.java" -exec sed -i 's/^M//' {} \;
```
