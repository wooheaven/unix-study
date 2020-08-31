# q exit
```
# exit after when read 3rd line
$ seq 5 | sed 3q
1
2
3

# find line which has string 3 then exit after
$ seq 5 | sed '/3/q'
1
2
3

# find line which has string 2, 4 then print and find line which has string 15 then exit after
$ seq 20 | sed -n '/[2,4]/p;/15/q'
2
4
12
14
```
