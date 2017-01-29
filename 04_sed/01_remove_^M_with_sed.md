# remove \^M in text file
```{bash}
vi -b read.txt 
a^M
b^M
c^M

sed -i 's/^M//' read.txt

vi -b read.txt 
a
b
c
```
