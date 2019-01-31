# install go
```{bash}
$ brew install go --cross-compile-common
$ brew install hg bzr # for 3rd party lib's version control system
$ brew cleanup
```

# configure go
```{bash}
$ vi ~/.bashrc
...
# GO PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

$ source ~/.bashrc
```

# check go
```{bash}
$ brew list go
/usr/local/Cellar/go/1.11.5/bin/go
/usr/local/Cellar/go/1.11.5/bin/godoc
/usr/local/Cellar/go/1.11.5/bin/gofmt
/usr/local/Cellar/go/1.11.5/libexec/api/ (15 files)
/usr/local/Cellar/go/1.11.5/libexec/bin/ (3 files)
/usr/local/Cellar/go/1.11.5/libexec/doc/ (152 files)
/usr/local/Cellar/go/1.11.5/libexec/lib/ (3 files)
/usr/local/Cellar/go/1.11.5/libexec/misc/ (398 files)
/usr/local/Cellar/go/1.11.5/libexec/pkg/ (1136 files)
/usr/local/Cellar/go/1.11.5/libexec/src/ (5663 files)
/usr/local/Cellar/go/1.11.5/libexec/test/ (1914 files)
/usr/local/Cellar/go/1.11.5/libexec/ (6 files)

$ ll /usr/local/Cellar/go
total 0
drwxr-xr-x  9 rwoo  staff   306B Jan 31 15:28 1.11.5/

$ go version
go version go1.11.5 darwin/amd64
```
