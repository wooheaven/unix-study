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
```
