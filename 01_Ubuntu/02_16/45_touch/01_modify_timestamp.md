# accessed modified timestamp
```
touch -a -m -t 201805210801.12 sample.txt
stat sample.txt
```

# real log
```
$ touch sample.txt

$ ll
total 12
drwxrwxr-x  2 rwoo rwoo 4096  5월 21 08:01 ./
drwxrwxr-x 54 rwoo rwoo 4096  5월 21 07:58 ../
-rw-rw-r--  1 rwoo rwoo   96  5월 21 08:01 01_modify_timestamp.md
-rw-rw-r--  1 rwoo rwoo    0  5월 21 08:01 sample.txt

$ touch -a -m -t 201805200800.11 sample.txt 

$ ll
total 12
drwxrwxr-x  2 rwoo rwoo 4096  5월 21 08:01 ./
drwxrwxr-x 54 rwoo rwoo 4096  5월 21 07:58 ../
-rw-rw-r--  1 rwoo rwoo   96  5월 21 08:01 01_modify_timestamp.md
-rw-rw-r--  1 rwoo rwoo    0  5월 20 08:00 sample.txt

$ stat sample.txt 
  File: 'sample.txt'
  Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
Device: 806h/2054d	Inode: 4365567     Links: 1
Access: (0664/-rw-rw-r--)  Uid: ( 1000/    rwoo)   Gid: ( 1000/    rwoo)
Access: 2018-05-20 08:00:11.000000000 +0900
Modify: 2018-05-20 08:00:11.000000000 +0900
Change: 2018-05-21 08:02:22.814096828 +0900
 Birth: -
```
