```{bash}
$ cat input.txt 
1
4
2
5
3

$ awk '{if (NR == 1) {max=$1} else {if ($1 > max) {max=$1}}} END{print max}' input.txt
5

$ awk '{if (NR == 1) {min=$1} else {if ($1 < min) {min=$1}}} END{print min}' input.txt 
1
```
