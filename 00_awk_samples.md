[awk : column to rows](01_awk_column_to_rows.md)
```
# before
1,a|b|c
2,d|e|f

# after
1,b
1,c
1,a
2,e
2,f
2,d
```

[awk : rows to column](02_awk_rows_to_column.md)
```
# before
1,b
1,c
1,a
2,e
2,f
2.d

# after
2,e|f|d
1,b|c|a
```
