# argument count check 
```{bash}
$ vi run.sh
#!/bin/bash
if [ $# -gt 0 ] ; then
    echo $#" arguments inserted"
else
    echo "No argument"
fi

$ chmod 755 run.sh

$ ./run.sh arg1
argument inserted

$ ./run.sh
No argument
```
