# awk remove blank line 
```{bash}
$ vi do.sh
#!/bin/bash
if [ $1 ]; then
	echo "exists"
else
	echo "no"
fi

$ ./do.sh 1
exists

$ ./do.sh
no
```
