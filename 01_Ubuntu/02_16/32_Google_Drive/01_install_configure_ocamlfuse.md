# install
```
$ sudo add-apt-repository ppa:alessandro-strada/ppa
$ sudo apt-get update
$ sudo apt-get install google-drive-ocamlfuse
```

# configure
```
$ cd ~/01_Downloads/13_Google_Drive
$ google-drive-ocamlfuse
...
Access token retrieved correctly.

$ mkdir gdrive
$ cd gdrive
$ google-drive-ocamlfuse gdrive/
```

# mount/unmount Google Drive
```
$ google-drive-ocamlfuse gdrive
$ fusermount -u gdrive
```
