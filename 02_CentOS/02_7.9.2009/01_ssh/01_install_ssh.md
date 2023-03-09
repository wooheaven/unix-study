```
[root@299b578db918 /]# yum –y install openssh-server openssh-clients
[root@299b578db918 /]# vim /etc/ssh/sshd_config
...
Port 2002
...
PermitRootLogin no

[root@299b578db918 /]# service sshd enable
[root@299b578db918 /]# service sshd start
[root@299b578db918 /]# service sshd status
```
