# if check filePath 
```{bash}
$ vi do.sh
#!/bin/bash
if [ -f $1 ]; then
	echo "exists"
else
	echo "no"
fi

$ ./do.sh do.sh
exists

$ ./do.sh doo.sh
no
```
