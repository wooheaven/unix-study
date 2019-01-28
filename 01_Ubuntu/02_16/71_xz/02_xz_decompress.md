# uncompress xz to tar
```{bash}
$ tree
.
└── number.tar.xz

0 directories, 1 file

$ xz -d number.tar.xz 
$ tree
.
└── number.tar

0 directories, 1 file
```

# unarchieve tar to folder
```{bash}
$ tar xf number.tar 
$ tree
.
├── number
│   ├── 1.txt
│   └── 2.txt
└── number.tar

1 directory, 3 files
```
