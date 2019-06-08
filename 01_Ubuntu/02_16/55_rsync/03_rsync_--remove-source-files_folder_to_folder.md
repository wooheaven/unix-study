# rsync option --remove-source-files
```bash
rsync --help | egrep "\-a,|remove-source-files"
 -a, --archive               archive mode; same as -rlptgoD (no -H)
     --remove-source-files   sender removes synchronized files (non-dirs)
```

# rsync a to b with remove-source-files
```bash
$ ll a/
total 0
-rw-r--r-- 1 석수 197121 0 6월   1 23:51 1.txt

$ ll b/
total 0

$ rsync -a --remove-source-files a/* b/

$ ll a/
total 0

$ ll b/
total 0
-rw-r--r-- 1 석수 197121 0 6월   1 23:51 1.txt
```
