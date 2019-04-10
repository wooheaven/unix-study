# Hash Sum mismatch
```bash
$ sudo apt-get install mplayer
...
E: Failed to fetch http://kr.archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/libopenal1_1.16.0-3_amd64.deb  Hash Sum mismatch
E: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?
```

# solution
```bash
$ sudo apt-get update
$ sudo apt-get install mplayer
```
