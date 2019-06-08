```bash
# download https://www.perforce.com/downloads/helix-visual-client-p4v

$ tar zxf p4v.tgz 
$ ll
total 69732
drwxrwxr-x  3 ubuntu ubuntu     4096  6월  7 12:22 ./
drwxr-xr-x 12 ubuntu ubuntu     4096  6월  7 12:20 ../
drwxr-xr-x  4 ubuntu ubuntu     4096  5월  2 06:37 p4v-2019.1.1797168/
-rw-rw-r--  1 ubuntu ubuntu 71387294  6월  7 12:19 p4v.tgz

$ sudo mkdir /opt/p4v
$ sudo mv p4v-2019.1.1797168/ /opt/p4v/
$ sudo ln -s /opt/p4v/p4v-2019.1.1797168/ /opt/p4v/latest
$ sudo ln -s /opt/p4v/latest/bin/p4merge /usr/local/bin/p4merge

$ $ git difftool --tool-help 
'git difftool --tool=<tool>' may be set to one of the following:
		p4merge
```
