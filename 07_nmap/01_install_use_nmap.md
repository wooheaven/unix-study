# nmap : check localhost port

```{bash}
$ sudo apt-get install nmap
Reading package lists... Done
Building dependency tree       
Reading state information... Done
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 nmap : Depends: libstdc++6 (>= 4.9) but 4.8.4-2ubuntu1~14.04.3 is to be installed
 E: Unable to correct problems, you have held broken packages.

$ sudo aptitude install nmap
The following NEW packages will be installed:
libblas-common{a} libblas3{a} liblinear1{a} ndiff{a} nmap 
The following packages will be upgraded:
libstdc++6{b} 
1 packages upgraded, 5 newly installed, 0 to remove and 1501 not upgraded.
Need to get 4,234 kB of archives. After unpacking 18.6 MB will be used.
The following packages have unmet dependencies:
libstdc++6 : Depends: gcc-4.9-base (= 4.9.2-10ubuntu13) but 4.9.3-0ubuntu4 is installed.
open: 681; closed: 661; defer: 612; conflict: 1036 
oThe following actions will resolve these dependencies:

Keep the following packages at their current version:                       
1)     libstdc++6 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates)]
2)     nmap [Not Installed]                                                      

Leave the following dependencies unresolved:                                
3)     ndiff recommends nmap                                                     

Accept this solution? [Y/n/q/?] n
The following actions will resolve these dependencies:

Install the following packages:                                                  
1)     gcc-5-base [5.1~rc1-0ubuntu1 (vivid)]                                          

Upgrade the following packages:                                                  
2)     libgcc1 [1:4.9.3-0ubuntu4 (now, trusty-updates) -> 1:5.1~rc1-0ubuntu1 (vivid)] 

Downgrade the following packages:                                                
3)     gcc-4.9-base [4.9.3-0ubuntu4 (now, trusty-updates) -> 4.9.2-10ubuntu13 (vivid)]

Accept this solution? [Y/n/q/?] n
The following actions will resolve these dependencies:

Install the following packages:                                                                                
1)      nmap [6.40-0.2ubuntu1 (trusty)]                                                                              

Keep the following packages at their current version:                                                          
2)      ndiff [Not Installed]                                                                                        

Downgrade the following packages:                                                                              
3)      cpp-4.8 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]          
4)      g++-4.8 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]          
5)      gcc-4.8 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]          
6)      gcc-4.8-base [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]     
7)      libasan0 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]         
8)      libatomic1 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]       
9)      libgcc-4.8-dev [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]   
10)     libgomp1 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]         
11)     libitm1 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]          
12)     libquadmath0 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]     
13)     libstdc++-4.8-dev [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]
14)     libstdc++6 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]       
15)     libtsan0 [4.8.4-2ubuntu1~14.04.3 (now, trusty-security, trusty-updates) -> 4.8.2-19ubuntu1 (trusty)]         

Accept this solution? [Y/n/q/?] Y
The following packages will be DOWNGRADED:
cpp-4.8 g++-4.8 gcc-4.8 gcc-4.8-base libasan0 libatomic1 libgcc-4.8-dev libgomp1 libitm1 libquadmath0 libstdc++-4.8-dev libstdc++6 libtsan0 
The following NEW packages will be installed:
libblas-common{a} libblas3{a} liblinear1{a} nmap 
0 packages upgraded, 4 newly installed, 13 downgraded, 0 to remove and 1496 not upgraded.
Need to get 23.9 MB of archives. After unpacking 7,797 kB will be used.
Do you want to continue? [Y/n/?] Y
Get: 1 http://kr.archive.ubuntu.com/ubuntu/ trusty/main g++-4.8 amd64 4.8.2-19ubuntu1 [7,038 kB]
Get: 2 http://us.archive.ubuntu.com/ubuntu/ vivid/main libblas-common amd64 1.2.20110419-10 [3,058 B]
Get: 3 http://us.archive.ubuntu.com/ubuntu/ vivid/main libblas3 amd64 1.2.20110419-10 [161 kB]
Get: 4 http://kr.archive.ubuntu.com/ubuntu/ trusty/main gcc-4.8 amd64 4.8.2-19ubuntu1 [5,012 kB]
Get: 5 http://us.archive.ubuntu.com/ubuntu/ vivid/main liblinear1 amd64 1.8+dfsg-4 [33.1 kB]
Get: 6 http://kr.archive.ubuntu.com/ubuntu/ trusty/main cpp-4.8 amd64 4.8.2-19ubuntu1 [4,439 kB]
Get: 7 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libstdc++-4.8-dev amd64 4.8.2-19ubuntu1 [1,050 kB]
Get: 8 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libgcc-4.8-dev amd64 4.8.2-19ubuntu1 [1,688 kB]
Get: 9 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libgomp1 amd64 4.8.2-19ubuntu1 [23.2 kB]
Get: 10 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libitm1 amd64 4.8.2-19ubuntu1 [28.5 kB]
Get: 11 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libatomic1 amd64 4.8.2-19ubuntu1 [8,626 B]
Get: 12 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libasan0 amd64 4.8.2-19ubuntu1 [63.0 kB]
Get: 13 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libquadmath0 amd64 4.8.2-19ubuntu1 [126 kB]
Get: 14 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libtsan0 amd64 4.8.2-19ubuntu1 [94.7 kB]
Get: 15 http://kr.archive.ubuntu.com/ubuntu/ trusty/main gcc-4.8-base amd64 4.8.2-19ubuntu1 [15.4 kB]
Get: 16 http://kr.archive.ubuntu.com/ubuntu/ trusty/main libstdc++6 amd64 4.8.2-19ubuntu1 [251 kB]
Get: 17 http://kr.archive.ubuntu.com/ubuntu/ trusty/main nmap amd64 6.40-0.2ubuntu1 [3,891 kB]
Fetched 23.9 MB in 3s (6,728 kB/s) 
dpkg: warning: downgrading g++-4.8 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
(Reading database ... 194012 files and directories currently installed.)
Preparing to unpack .../g++-4.8_4.8.2-19ubuntu1_amd64.deb ...
Unpacking g++-4.8 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading gcc-4.8 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../gcc-4.8_4.8.2-19ubuntu1_amd64.deb ...
Unpacking gcc-4.8 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading cpp-4.8 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../cpp-4.8_4.8.2-19ubuntu1_amd64.deb ...
Unpacking cpp-4.8 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libstdc++-4.8-dev:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libstdc++-4.8-dev_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libstdc++-4.8-dev:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libgcc-4.8-dev:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libgcc-4.8-dev_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libgcc-4.8-dev:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libgomp1:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libgomp1_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libgomp1:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libitm1:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libitm1_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libitm1:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libatomic1:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libatomic1_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libatomic1:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libasan0:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libasan0_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libasan0:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libquadmath0:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libquadmath0_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libquadmath0:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading libtsan0:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../libtsan0_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libtsan0:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
dpkg: warning: downgrading gcc-4.8-base:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
Preparing to unpack .../gcc-4.8-base_4.8.2-19ubuntu1_amd64.deb ...
Unpacking gcc-4.8-base:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Setting up gcc-4.8-base:amd64 (4.8.2-19ubuntu1) ...
dpkg: warning: downgrading libstdc++6:amd64 from 4.8.4-2ubuntu1~14.04.3 to 4.8.2-19ubuntu1
(Reading database ... 193998 files and directories currently installed.)
Preparing to unpack .../libstdc++6_4.8.2-19ubuntu1_amd64.deb ...
Unpacking libstdc++6:amd64 (4.8.2-19ubuntu1) over (4.8.4-2ubuntu1~14.04.3) ...
Setting up libstdc++6:amd64 (4.8.2-19ubuntu1) ...
Processing triggers for libc-bin (2.19-0ubuntu6.9) ...
Selecting previously unselected package libblas-common.
(Reading database ... 193986 files and directories currently installed.)
Preparing to unpack .../libblas-common_1.2.20110419-10_amd64.deb ...
Unpacking libblas-common (1.2.20110419-10) ...
Selecting previously unselected package libblas3.
Preparing to unpack .../libblas3_1.2.20110419-10_amd64.deb ...
Unpacking libblas3 (1.2.20110419-10) ...
Selecting previously unselected package liblinear1:amd64.
Preparing to unpack .../liblinear1_1.8+dfsg-4_amd64.deb ...
Unpacking liblinear1:amd64 (1.8+dfsg-4) ...
Selecting previously unselected package nmap.
Preparing to unpack .../nmap_6.40-0.2ubuntu1_amd64.deb ...
Unpacking nmap (6.40-0.2ubuntu1) ...
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Setting up cpp-4.8 (4.8.2-19ubuntu1) ...
Setting up libgomp1:amd64 (4.8.2-19ubuntu1) ...
Setting up libitm1:amd64 (4.8.2-19ubuntu1) ...
Setting up libatomic1:amd64 (4.8.2-19ubuntu1) ...
Setting up libasan0:amd64 (4.8.2-19ubuntu1) ...
Setting up libtsan0:amd64 (4.8.2-19ubuntu1) ...
Setting up libquadmath0:amd64 (4.8.2-19ubuntu1) ...
Setting up libgcc-4.8-dev:amd64 (4.8.2-19ubuntu1) ...
Setting up gcc-4.8 (4.8.2-19ubuntu1) ...
Setting up libstdc++-4.8-dev:amd64 (4.8.2-19ubuntu1) ...
Setting up g++-4.8 (4.8.2-19ubuntu1) ...
Setting up libblas-common (1.2.20110419-10) ...
Setting up libblas3 (1.2.20110419-10) ...
update-alternatives: using /usr/lib/libblas/libblas.so.3 to provide /usr/lib/libblas.so.3 (libblas.so.3) in auto mode
Setting up liblinear1:amd64 (1.8+dfsg-4) ...
Setting up nmap (6.40-0.2ubuntu1) ...
Processing triggers for libc-bin (2.19-0ubuntu6.9) ...

$ nmap -V

Nmap version 6.40 ( http://nmap.org )
Platform: x86_64-pc-linux-gnu
Compiled with: liblua-5.2.3 openssl-1.0.1f libpcre-8.31 libpcap-1.5.3 nmap-libdnet-1.12 ipv6
Compiled without:
Available nsock engines: epoll poll select

$ nmap localhost

Starting Nmap 6.40 ( http://nmap.org ) at 2017-02-14 08:33 KST
Nmap scan report for localhost (127.0.0.1)
	Host is up (0.00045s latency).
	Not shown: 998 closed ports
	PORT    STATE SERVICE
	22/tcp  open  ssh
	631/tcp open  ipp

	Nmap done: 1 IP address (1 host up) scanned in 0.09 seconds
```
