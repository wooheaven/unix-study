# rsync option avh
```bash
$ rsync --help | egrep '\-a,|\-v,|\-h,'
 -v, --verbose               increase verbosity
 -a, --archive               archive mode; same as -rlptgoD (no -H)
 -h, --human-readable        output numbers in a human-readable format
```

# rsync folder to folder
```{bash}
$ rsync -avh a/ b/
building file list ... done
./
a-1.txt

sent 136 bytes  received 48 bytes  368.00 bytes/sec
total size is 0  speedup is 0.00

$ tree a
a
└── a-1.txt

0 directories, 1 file

$ tree b
b
└── a-1.txt

0 directories, 1 file
```
