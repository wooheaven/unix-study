# count of arguments check 
```{bash}
$ vi run.sh
#!/bin/bash
if [ $# -eq 0 ] ; then
    echo "No argument"
else
    echo "argument inserted"
fi

$ chmod 755 run.sh

$ ./run.sh arg1
argument inserted

$ ./run.sh
No argument
```
