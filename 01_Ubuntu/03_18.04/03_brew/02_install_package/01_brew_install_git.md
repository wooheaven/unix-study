# install
```{bash}
$ brew install git
$ brew cleanup

$ ll /home/linuxbrew/.linuxbrew/Cellar/git
total 12
drwxr-xr-x  3 bigdata bigdata 4096  2월 19 10:26 ./
drwxrwxr-x 27 bigdata bigdata 4096  2월 19 10:26 ../
drwxr-xr-x  8 bigdata bigdata 4096  2월 19 10:26 2.25.0_1/

$ which git # Ubuntu18 installed git by apt-get
/usr/bin/git

$ git --version
git version 2.17.1

$ sudo apt-get purge git
$ sudo apt autoremove

$ which git
/home/linuxbrew/.linuxbrew/bin/git

$ source ~/.bashrc
$ git --version
git version 2.25.0
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
echo "on ~/.bashrc : "$git_auto
source $git_auto
unset git_path
unset git_link
unset git_auto
...

$ sudo reboot # or log out and log in

$ which git
/home/linuxbrew/.linuxbrew/bin/git

$ git --version
git version 2.25.0
```
