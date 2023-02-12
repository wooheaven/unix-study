# awk use external argument 
```{bash}
$ cat input.txt
1,a
2,b

$ vi do.sh
#!/bin/bash
awk -v header=$1 'BEGIN{FS=OFS=","} {print header,$1,$2}' input.txt

$ chmod 755 do.sh

$ ./do.sh
,1,a
,2,b

$ ./do.sh AA
AA,1,a
AA,2,b

$ ./do.sh BB
BB,1,a
BB,2,b
```
