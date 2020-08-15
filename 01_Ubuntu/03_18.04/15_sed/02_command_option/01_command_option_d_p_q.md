# d delete
```
$ seq 5
1
2
3
4
5

# delete 3rd line
$ seq 5 | sed 3d
1
2
4
5

# find line which has string 3 then delete that line 
$ seq 5 | sed '/3/d'
1
2
4
5
```

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
```
