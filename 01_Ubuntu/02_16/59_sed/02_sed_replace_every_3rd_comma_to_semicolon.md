# replace every 3rd comma to semicolon
```{bash}
$ cat test.txt
1,2,3,4,5,6,7,8,9

$ sed -e 's/\(\([^,]*,\)\{2\}[^,]*\),/\1;/g' test.txt 
1,2,3;4,5,6;7,8,9
```
