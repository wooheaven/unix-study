# argument existence check 
```{bash}
$ vi run.sh
#!/bin/bash
if [ $1 ] ; then
    echo "yes"
else
    echo "no"
fi

$ ./run.sh arg1
yes

$ ./run.sh
no
```
