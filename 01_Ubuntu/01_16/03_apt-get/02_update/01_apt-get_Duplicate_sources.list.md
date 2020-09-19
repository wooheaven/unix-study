```{bash}
$ sudo apt-get update
...
W: Duplicate sources.list entry https://download.docker.com/linux/ubuntu/ trusty/stable amd64 Packages (/var/lib/apt/lists/download.docker.com_linux_ubuntu_dists_trusty_stable_binary-amd64_Packages)
W: You may want to run apt-get update to correct these problems

$ sudo grep docker /etc/apt/sources.list
deb [arch=amd64] https://download.docker.com/linux/ubuntu trusty stable
# deb-src [arch=amd64] https://download.docker.com/linux/ubuntu trusty stable

$ cat /etc/apt/sources.list.d/docker.list
deb [arch=amd64] https://download.docker.com/linux/ubuntu trusty stable

$ sudo vi /etc/apt/sources.list
$ sudo grep docker /etc/apt/sources.list
$
```
