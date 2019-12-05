# remove short backwards matched string of original string
```
$ which git
/home/linuxbrew/.linuxbrew/bin/git

$ git_link=`which git`
$ echo $git_link
/home/linuxbrew/.linuxbrew/bin/git

$ echo ${git_link%%git}
/home/linuxbrew/.linuxbrew/bin/

$ unset git_link
```
