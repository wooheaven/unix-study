# aptitude install package 
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
 nmap : Depends: libstdc++6 (>= 4.9) but 4.8.2-19ubuntu1 is to be installed
 E: Unable to correct problems, you have held broken packages.

$ sudo aptitude install nmap
The following NEW packages will be installed:
	ndiff{a} 
The following packages will be upgraded:
	libstdc++6{b} nmap 
2 packages upgraded, 1 newly installed, 0 to remove and 1509 not upgraded.
Need to get 4,038 kB of archives. After unpacking 391 kB will be used.
The following packages have unmet dependencies:
	libstdc++6 : Depends: gcc-4.9-base (= 4.9.2-10ubuntu13) but 4.9.3-0ubuntu4 is installed.
open: 658; closed: 644; defer: 598; conflict: 1022                                                                                                                                                          oThe following actions will resolve these dependencies:

	Remove the following packages:                       
1)     nmap                                               

	Keep the following packages at their current version:
2)     libstdc++6 [4.8.2-19ubuntu1 (now, trusty)]         

	Leave the following dependencies unresolved:         
3)     ndiff recommends nmap                              

Accept this solution? [Y/n/q/?] n
The following actions will resolve these dependencies:

	Keep the following packages at their current version:
1)     libstdc++6 [4.8.2-19ubuntu1 (now, trusty)]         
2)     ndiff [Not Installed]                              
3)     nmap [6.40-0.2ubuntu1 (now, trusty)]               

Accept this solution? [Y/n/q/?] y
The following packages have been kept back:
  nmap 
  No packages will be installed, upgraded, or removed.
  0 packages upgraded, 0 newly installed, 0 to remove and 1511 not upgraded.
  Need to get 0 B of archives. After unpacking 0 B will be used.

$ nmap localhost

Starting Nmap 6.40 ( http://nmap.org ) at 2017-03-05 20:16 KST
Nmap scan report for localhost (127.0.0.1)
		Host is up (0.00049s latency).
		Not shown: 998 closed ports
		PORT    STATE SERVICE
		22/tcp  open  ssh
		631/tcp open  ipp

		Nmap done: 1 IP address (1 host up) scanned in 0.12 seconds
```
