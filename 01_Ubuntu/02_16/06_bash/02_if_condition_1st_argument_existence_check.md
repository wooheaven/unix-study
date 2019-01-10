# 1st argument existence check 
```{bash}
$ vi run.sh
#!/bin/bash
if [ $1 ] ; then
    echo "yes"
else
    echo "no"
fi

$ chmod 755 run.sh

$ ./run.sh arg1
yes

$ ./run.sh
no
```
