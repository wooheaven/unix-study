```{bash}
$ # firefox 57 to 45
$ sudo apt policy firefox
firefox:
  Installed: 57.0+build4-0ubuntu0.16.04.5
  Candidate: 57.0+build4-0ubuntu0.16.04.5
  Version table:
 *** 57.0+build4-0ubuntu0.16.04.5 500
        500 http://kr.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages
        100 /var/lib/dpkg/status
     45.0.2+build1-0ubuntu1 500
        500 http://kr.archive.ubuntu.com/ubuntu xenial/main amd64 Packages

$ sudo apt-get install -y --allow-downgrades firefox=45.0.2+build1-0ubuntu1
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  linux-headers-4.10.0-33 linux-headers-4.10.0-33-generic linux-headers-4.10.0-35 linux-headers-4.10.0-35-generic linux-headers-4.10.0-37 linux-headers-4.10.0-37-generic linux-image-4.10.0-33-generic
  linux-image-4.10.0-35-generic linux-image-4.10.0-37-generic linux-image-extra-4.10.0-33-generic linux-image-extra-4.10.0-35-generic linux-image-extra-4.10.0-37-generic
Use 'sudo apt autoremove' to remove them.
Suggested packages:
  fonts-lyx
The following packages will be DOWNGRADED:
  firefox
0 upgraded, 0 newly installed, 1 downgraded, 0 to remove and 140 not upgraded.
Need to get 43.2 MB of archives.
After this operation, 64.0 MB disk space will be freed.
Do you want to continue? [Y/n] y
Get:1 http://kr.archive.ubuntu.com/ubuntu xenial/main amd64 firefox amd64 45.0.2+build1-0ubuntu1 [43.2 MB]
Fetched 43.2 MB in 7s (6,065 kB/s)                                                                                                                                                                                 
dpkg: warning: downgrading firefox from 57.0+build4-0ubuntu0.16.04.5 to 45.0.2+build1-0ubuntu1
(Reading database ... 325834 files and directories currently installed.)
Preparing to unpack .../firefox_45.0.2+build1-0ubuntu1_amd64.deb ...
Unpacking firefox (45.0.2+build1-0ubuntu1) over (57.0+build4-0ubuntu0.16.04.5) ...
Processing triggers for desktop-file-utils (0.22-1ubuntu5.1) ...
Processing triggers for gnome-menus (3.13.3-6ubuntu3.1) ...
Processing triggers for bamfdaemon (0.5.3~bzr0+16.04.20160824-0ubuntu1) ...
Rebuilding /usr/share/applications/bamf-2.index...
Processing triggers for mime-support (3.59ubuntu1) ...
Processing triggers for man-db (2.7.5-1) ...
Processing triggers for hicolor-icon-theme (0.15-0ubuntu1) ...
Setting up firefox (45.0.2+build1-0ubuntu1) ...
Installing new version of config file /etc/apparmor.d/usr.bin.firefox ...
Please restart all running instances of firefox, or you will experience problems.
```
```{bash}
$ # firefox 45 to 57
$ sudo apt-mark unhold firefox
$ sudo apt update
$ sudo apt install firefox
```
