# Use variable in awk
```{bash}
$ cat sample.txt
1,A
2,B
-1,C
4,D

$ awk -v oldNum="" 'BEGIN{FS=OFS=","} {if( $1 == "-1" ) {print oldNum,$2} else {print $0; oldNum=$1}}' sample.txt
1,A
2,B
2,C
4,D
```
