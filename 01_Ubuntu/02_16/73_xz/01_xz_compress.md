# archieve folder to tar
```{bash}
$ tree
.
└── number
    ├── 1.txt
    └── 2.txt

1 directory, 2 files

$ tar cf number.tar number/

$ tree
.
├── number
│   ├── 1.txt
│   └── 2.txt
└── number.tar

1 directory, 3 files
```

# compress tar to xz
```{bash}
$ xz number.tar 

$ tree
.
├── number
│   ├── 1.txt
│   └── 2.txt
└── number.tar.xz

1 directory, 3 files
```
