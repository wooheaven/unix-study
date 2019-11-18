```
$ cd 99_Utility/
$ ./01_merge_pdf.sh splited_1.pdf splited_2.pdf 
var           = splited_1.pdf
var length    = 13
tmpVar        = splited_1.pdf
tmpVar length = 13

var           = splited_2.pdf
var length    = 13
tmpVar        = splited_2.pdf
tmpVar length = 13

Ready to merge
input pdf files = { splited_1.pdf splited_2.pdf } will be mereged into merged.pdf

$ ll splited_*
-rw-rw-r-- 1 ubuntu ubuntu   5384 11월 18 14:33 splited_1.pdf
-rw-rw-r-- 1 ubuntu ubuntu 283802 11월 18 14:33 splited_2.pdf

$ ll merged.pdf 
-rw-rw-r-- 1 ubuntu ubuntu 287189 11월 18 15:11 merged.pdf
```
