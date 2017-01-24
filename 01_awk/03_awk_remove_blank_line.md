# awk remove blank line 
```{bash}
cat read.txt
a1
a2
a3

b1
b2
b3

awk '{if(NF >0) print ;next }' read.txt
a1
a2
a3
b1
b2
b3

awk '{print NR,NF,$1;next }' read.txt
1 1 a1
2 1 a2
3 1 a3
4 0
5 1 b1
6 1 b2
7 1 b3
```
