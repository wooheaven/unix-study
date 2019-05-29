```bash
$ brew outdated
go (1.12.1) < 1.12.5

$ brew upgrade go
==> Upgrading 1 outdated package:
go 1.12.1 -> 1.12.5
==> Upgrading go
==> Downloading https://homebrew.bintray.com/bottles/go-1.12.5.sierra.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/87/8775608c37110cf58187ebb0d83258cae2a717045243d58107f0b86210dca315?__gda__=exp=1559039035~hmac=5f7e30f40b5549c1203cd0f7a4fdba3ea74cb2ee10914d9adbf85f9ee60cef33&response-content-d
######################################################################## 100.0%
==> Pouring go-1.12.5.sierra.bottle.tar.gz
🍺  /usr/local/Cellar/go/1.12.5: 9,808 files, 452.7MB
Removing: /usr/local/Cellar/go/1.12.1... (9,794 files, 452.6MB)

$ brew cleanup
```
