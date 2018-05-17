# Replace String \t to tab character
```{bash}
$ cat a
a\tb

$ sed 's/\\t/\t/g' a
a   b
```
