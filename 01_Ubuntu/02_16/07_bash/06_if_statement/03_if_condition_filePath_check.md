# filePath check 
```{bash}
$ vi do.sh
#!/bin/bash
if [ -f $1 ]; then
	echo "exists"
else
	echo "no"
fi

$ chmod 755 do.sh

$ ./do.sh do.sh
exists

$ ./do.sh doo.sh
no
```
