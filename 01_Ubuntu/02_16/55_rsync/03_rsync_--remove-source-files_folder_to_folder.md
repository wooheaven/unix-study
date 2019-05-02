# rsync option --remove-source-files
```bash
rsync --help | egrep "\-a,|remove-source-files"
 -a, --archive               archive mode; same as -rlptgoD (no -H)
     --remove-source-files   sender removes synchronized files (non-dirs)
```

# rsync a to b with remove-source-files
```bash
$ rsync -a --remove-source-files a/ b/

$ tree a
a

0 directories, 0 files

$ tree b
b
└── 1.txt

0 directories, 1 file
```
