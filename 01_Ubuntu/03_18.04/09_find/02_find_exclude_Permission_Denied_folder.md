```
$ find / -type d ! -perm -g+r,u+r,o+r -prune -o -type f -name '*.txt' -exec echo {} \;
```
