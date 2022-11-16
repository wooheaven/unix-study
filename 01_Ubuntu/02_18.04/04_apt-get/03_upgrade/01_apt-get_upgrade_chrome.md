```bash
$ sudo apt-get update

$ sudo apt list --upgradable | grep chrome
google-chrome-stable/stable 107.0.5304.110-1 amd64 [upgradable from: 100.0.4896.60-1]

$ sudo apt-get upgrade google-chrome-stable 
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following packages will be upgraded:
  google-chrome-stable
1 upgraded, 0 newly installed, 0 to remove and 41 not upgraded.
Need to get 93.3 MB of archives.
After this operation, 28.5 MB of additional disk space will be used.
Get:1 http://dl.google.com/linux/chrome/deb stable/main amd64 google-chrome-stable amd64 107.0.5304.110-1 [93.3 MB]
Fetched 93.3 MB in 12s (7,999 kB/s)
(Reading database ... 456195 files and directories currently installed.)
Preparing to unpack .../google-chrome-stable_107.0.5304.110-1_amd64.deb ...
Unpacking google-chrome-stable (107.0.5304.110-1) over (100.0.4896.60-1) ...
Setting up google-chrome-stable (107.0.5304.110-1) ...
Processing triggers for desktop-file-utils (0.23-1ubuntu3.18.04.2) ...
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
Processing triggers for gnome-menus (3.13.3-11ubuntu1.1) ...
Processing triggers for mime-support (3.60ubuntu1) ...

$ sudo apt list --upgradable | grep chrome
$
```
