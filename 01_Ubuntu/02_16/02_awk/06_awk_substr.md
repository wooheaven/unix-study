```{bash}
$ cat sample.txt 
123abc

$ awk '{print substr($1,1)}' sample.txt 
123abc

$ awk '{print substr($1,1,1)}' sample.txt 
1

$ awk '{print substr($1,2,1)}' sample.txt 
2

$ awk '{print substr($1,2)}' sample.txt 
23abc
```

```
substr($variable, start, [length])
```
