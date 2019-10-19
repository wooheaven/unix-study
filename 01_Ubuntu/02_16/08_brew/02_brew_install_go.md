```
$ brew install go
$ cd /home/linuxbrew/.linuxbrew/Cellar/go/
$ ln -s 1.13.1 latest
$ vi ~/.bashrc
...
# Go
export GOPATH="/home/linuxbrew/.linuxbrew/Cellar/go/latest"

$ source ~/.bashrc
$ go version
go version go1.13.1 linux/amd64
```
