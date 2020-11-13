```
#!/bin/bash

for folder in $(cat ./99_Utility/targetFolder.txt); do 

# break for argument
if [ ! $1 ] ; then
echo "break for argument is not existed"
break
fi

# break for folder existence
if [ ! -d $folder ] ; then
echo -e $folder"\t<- this folder is not existed"
break
fi

# business logic

done
```
