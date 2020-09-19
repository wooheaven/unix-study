```
$ check=$(hdfs dfsadmin -safemode get | awk '{print $4}')
$ echo $check
OFF
```
