# specific column to rows 
```{bash}
cat tmp.txt
1,a|b|c
2,d|e|f

awk 'BEGIN{FS=OFS=","} {split($2,arr,"|"); for(i in arr) {print $1,arr[i]}}' tmp.txt
1,b
1,c
1,a
2,e
2,f
2,d
```
