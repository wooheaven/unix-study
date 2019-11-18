```
$ cd 99_Utility/
$ ./01_split_pdf.sh input.pdf 
GPL Ghostscript 9.26 (2018-11-20)
Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
Processing pages 1 through 2.
Page 1
Page 2

$ ll input.pdf 
-rw-rw-r-- 1 ubuntu ubuntu 287180 11월 18 13:50 input.pdf

$ ll splited_*
-rw-rw-r-- 1 ubuntu ubuntu   5384 11월 18 14:33 splited_1.pdf
-rw-rw-r-- 1 ubuntu ubuntu 283802 11월 18 14:33 splited_2.pdf
```
