# remove \^M in text file
```{bash}
$ vi -b read.txt 
a^M
b^M
c^M

# ^M is not made by Shift+6 Shift+m but Ctrl+v Ctrl+m
$ sed -i 's/^M//' read.txt

$ vi -b read.txt 
a
b
c
```
