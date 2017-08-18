# substring remove
```{bash}
$ test=A.of.B

$ # Delete the shortest matching substring from the beginning.
$ echo ${test#*.} 
of.B

$ # Delete the shortest matching substring from the back.
$ echo ${test%.*} 
A.of

$ # Delete the longest matching substring from the beginning.
$ echo ${test##*.} 
B

$ # Delete the longest matching substring from the back.
$ echo ${test%%.*}
A
```
