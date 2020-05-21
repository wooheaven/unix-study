```
$ cat for.sh
#!/bin/sh

for var in "$@"
do
echo $var
done

$ ./for.sh 1 2 3
1
2
3
```
