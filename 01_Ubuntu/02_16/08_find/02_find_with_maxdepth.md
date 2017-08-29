# find with maxdepth
```{bash}
$ tree
.
├── a.txt
├── b.txt
├── c.txt
└── sub1
    └── d.txt

1 directory, 4 files

$ find `pwd` -type f -name "*.txt" -exec echo {} \;
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/c.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/sub1/d.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/b.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/a.txt

$ find `pwd` -maxdepth 1 -type f -name "*.txt" -exec echo {} \;
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/c.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/b.txt
/home/rwoo/02_WorkSpace/03_Unix/UNIX-Study/08_find/a.txt
```
