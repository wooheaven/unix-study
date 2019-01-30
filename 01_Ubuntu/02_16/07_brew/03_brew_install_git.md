# install
```{bash}
$ brew install git
$ brew cleanup

$ ll /home/linuxbrew/.linuxbrew/Cellar/git
total 12
drwxrwxr-x  3 ubuntu ubuntu 4096  1월 25 21:40 ./
drwxrwxr-x 18 ubuntu ubuntu 4096  1월 25 21:42 ../
drwxr-xr-x  7 ubuntu ubuntu 4096  1월 25 21:41 2.20.1/
```

# configure
```{bash}
$ vi ~/.bashrc
...
# linux brew
#eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv) # duplicated by below $PATH variable
PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"

# brew git completion
source /home/linuxbrew/.linuxbrew/Cellar/git/2.20.1/etc/bash_completion.d/git-completion.bash

$ sudo reboot # or log out and log in

$ which git
/home/linuxbrew/.linuxbrew/bin/git

$ git --version
git version 2.20.1
```
