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
# Linux brew Env
export LINUXBREW_HOME="/home/linuxbrew/.linuxbrew"
export PATH="$PATH:$LINUXBREW_HOME/bin"
export MANPATH="$MANPATH:$LINUXBREW_HOME/share/man"
export INFOPATH="$INFOPATH:$LINUXBREW_HOME/share/info"

# Linux brew git auto completion
git_link=`which git`
git_path=`realpath $git_link`
git_auto=`echo ${git_path%/bin/git}"/etc/bash_completion.d/git-completion.bash"`
source $git_auto
# /home/linuxbrew/.linuxbrew/Cellar/git/2.21.0/etc/bash_completion.d/git-completion.bash
unset git_path
unset git_link
unset git_auto
...

$ sudo reboot # or log out and log in

$ which git
/home/linuxbrew/.linuxbrew/bin/git

$ git --version
git version 2.21.0
```
