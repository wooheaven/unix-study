# pivot rows to column
```
cat tmp.txt
1,b
1,c
1,a
2,e
2,f
2,d

awk 'BEGIN{FS=OFS=","} {if(arr[$1]) {arr[$1]=arr[$1]"|"$2} else{arr[$1]=$2}} END{for(i in arr) {print i,arr[i]}}' tmp.txt
2,e|f|d
1,b|c|a
```
