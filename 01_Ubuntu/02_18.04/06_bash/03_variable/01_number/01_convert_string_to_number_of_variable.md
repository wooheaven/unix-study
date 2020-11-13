```
$ str="09"
$ echo $str
09

$ num=`expr $str + 0`
$ echo $num
9
$ echo $(($num + 1))
10
```
