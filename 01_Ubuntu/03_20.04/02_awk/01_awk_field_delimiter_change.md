```{bash}
$ cat sample.txt 
1,2 3,4

$ awk '{print NF,$1}' sample.txt # delimiter space
2 1,2

$ awk 'BEGIN{FS=OFS=","} {print NF,$1}' sample.txt  # delimiter comma
3,1
```
