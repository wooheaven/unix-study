# filePath check 
```{bash}
$ vi do.sh
#!/bin/bash
if [ -s $1 ]; then
	echo "exists"
else
	echo "no"
fi

$ chmod 755 do.sh
$ touch doo.sh

$ ./do.sh do.sh
exists

$ ./do.sh doo.sh
no
```
