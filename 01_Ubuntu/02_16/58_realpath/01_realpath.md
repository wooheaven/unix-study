# get real path of link file
```
$ which git
/home/linuxbrew/.linuxbrew/bin/git

$ ls -als `which git`
0 lrwxrwxrwx 1 ubuntu ubuntu 28  9월  7 20:51 /home/linuxbrew/.linuxbrew/bin/git -> ../Cellar/git/2.23.0/bin/git

$ realpath `which git`
/home/linuxbrew/.linuxbrew/Cellar/git/2.23.0/bin/git
```
