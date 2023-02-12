```
$ cat -n sample.txt
     1	c1 c2 c3
     2	a b 2
     3	b c 3
     4	c f 4
     5	d e 6

$ cat -n sample.txt | grep b sample.txt 
     2	a b 2
     3	b c 3

$ cat -n sample.txt | awk '/b/ {print $0}'
     2	a b 2
     3	b c 3

$ cat -n sample.txt | awk '$2 ~ /b/ {print $0}'
     3	b c 3
```
