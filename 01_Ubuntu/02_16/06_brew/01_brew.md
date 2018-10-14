# install and path for linux brew
```{bash}
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
$ vi ~/.bashrc
...
# LINUX BREW Env
export LINUXBREW_HOME="/home/linuxbrew/.linuxbrew"
export PATH="$PATH:$LINUXBREW_HOME/bin"
export MANPATH="$MANPATH:$LINUXBREW_HOME/share/man"
export INFOPATH="$INFOPATH:$LINUXBREW_HOME/share/info"
```

# check brew
```{bash}
$ brew -v
Homebrew 1.7.6
Linuxbrew/homebrew-core (git revision 0f1f5; last commit 2018-10-11)

$ brew list
gcc  gmp  isl  libmpc  mpfr  patchelf  springboot  zlib

$ ls -als /home/linuxbrew/.linuxbrew/Cellar/
total 40
4 drwxrwxr-x 10 rwoo rwoo 4096  9월 10  2017 .
4 drwxr-xr-x 14 rwoo rwoo 4096 10월 13 00:37 ..
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 gcc
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 gmp
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 isl
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 libmpc
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 mpfr
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 patchelf
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 springboot
4 drwxrwxr-x  3 rwoo rwoo 4096  9월 10  2017 zlib
```

# brew install package
```{bash}
$ brew install tmux
```
