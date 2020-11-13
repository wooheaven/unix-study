```
$ tail -2 ~/.bashrc
# alias
alias lf='find `pwd` -type f -name "*.*" -exec echo {} \;'

$ source ~/.bashrc
$ lf
/home/woo/02_Documents/18_UNIX_WorkSpace/unix-study/01_Ubuntu/02_18.04/99_alias/01_alias_lf.md
```
