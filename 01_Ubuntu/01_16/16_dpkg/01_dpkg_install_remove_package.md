# remove and install
```{bash}
# Install Package
dpkg -i package.deb

# Remove Package
dpkg -r package.deb
```

# real log
```{bash}
$ ll
total 242680
drwxrwxr-x 2 ubuntu ubuntu      4096 Nov 12 16:41 ./
drwxrwxr-x 4 ubuntu ubuntu      4096 Nov 12 16:41 ../
-rw-r--r-- 1 ubuntu ubuntu 126462586 Nov 12 16:12 libcudnn7_7.4.1.5-1+cuda9.0_amd64.deb
-rw-r--r-- 1 ubuntu ubuntu 117057602 Nov 12 16:12 libcudnn7-dev_7.4.1.5-1+cuda9.0_amd64.deb
-rw-r--r-- 1 ubuntu ubuntu   4972442 Nov 12 16:12 libcudnn7-doc_7.4.1.5-1+cuda9.0_amd64.deb

$ sudo dpkg -l | grep libcudnn7
ii  libcudnn7                                  7.4.1.5-1+cuda9.0                            amd64        cuDNN runtime libraries
ii  libcudnn7-dev                              7.4.1.5-1+cuda9.0                            amd64        cuDNN development libraries and headers
ii  libcudnn7-doc                              7.4.1.5-1+cuda9.0                            amd64        cuDNN documents and samples

$ sudo dpkg -r libcudnn7-doc
(Reading database ... 233860 files and directories currently installed.)
Removing libcudnn7-doc (7.4.1.5-1+cuda9.0) ...

$ sudo dpkg -r libcudnn7-dev 
(Reading database ... 233806 files and directories currently installed.)
Removing libcudnn7-dev (7.4.1.5-1+cuda9.0) ...
update-alternatives: removing manually selected alternative - switching libcudnn to auto mode

$ sudo dpkg -r libcudnn7
(Reading database ... 233800 files and directories currently installed.)
Removing libcudnn7 (7.4.1.5-1+cuda9.0) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...

$ sudo dpkg -l | grep libcudnn7
ii  libcudnn7                                  7.4.1.5-1+cuda9.0                            amd64        cuDNN runtime libraries
ii  libcudnn7-dev                              7.4.1.5-1+cuda9.0                            amd64        cuDNN development libraries and headers
ii  libcudnn7-doc                              7.4.1.5-1+cuda9.0                            amd64        cuDNN documents and samples

$ sudo dpkg -i libcudnn7_7.4.1.5-1+cuda9.0_amd64.deb 
Selecting previously unselected package libcudnn7.
(Reading database ... 233795 files and directories currently installed.)
Preparing to unpack libcudnn7_7.4.1.5-1+cuda9.0_amd64.deb ...
Unpacking libcudnn7 (7.4.1.5-1+cuda9.0) ...
Setting up libcudnn7 (7.4.1.5-1+cuda9.0) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...

$ sudo dpkg -i libcudnn7-dev_7.4.1.5-1+cuda9.0_amd64.deb 
Selecting previously unselected package libcudnn7-dev.
(Reading database ... 233801 files and directories currently installed.)
Preparing to unpack libcudnn7-dev_7.4.1.5-1+cuda9.0_amd64.deb ...
Unpacking libcudnn7-dev (7.4.1.5-1+cuda9.0) ...
Setting up libcudnn7-dev (7.4.1.5-1+cuda9.0) ...
update-alternatives: using /usr/include/x86_64-linux-gnu/cudnn_v7.h to provide /usr/include/cudnn.h (libcudnn) in auto mode

$ sudo dpkg -i libcudnn7-doc_7.4.1.5-1+cuda9.0_amd64.deb 
Selecting previously unselected package libcudnn7-doc.
(Reading database ... 233807 files and directories currently installed.)
Preparing to unpack libcudnn7-doc_7.4.1.5-1+cuda9.0_amd64.deb ...
Unpacking libcudnn7-doc (7.4.1.5-1+cuda9.0) ...
Setting up libcudnn7-doc (7.4.1.5-1+cuda9.0) ...

$ sudo dpkg -l | grep libcudnn7
ii  libcudnn7                                  7.4.1.5-1+cuda9.0                            amd64        cuDNN runtime libraries
ii  libcudnn7-dev                              7.4.1.5-1+cuda9.0                            amd64        cuDNN development libraries and headers
ii  libcudnn7-doc                              7.4.1.5-1+cuda9.0                            amd64        cuDNN documents and samples
```

