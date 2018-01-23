# Check network
```{bash}
ifconfig -a
service network status
```

# Stop network
```{bash}
service network stop
```

#  Reset all network settings on CentOS
```{bash}
rm /etc/sysconfig/networking/profiles/default/*
rm /etc/sysconfig/networking/devices/*
rm /etc/sysconfig/network-scripts/ifcfg-eth[0-9]
rm /etc/udev/rules.d/70-persistent-net.rules
reboot
```

# dhcp IP
```{bash}
vi /etc/sysconfig/network
NETWORKING=yes
HOSTNAME=localhost.localdomain

vi /etc/sysconfig/network-scripts/ifcfg-eth1
DEVICE=eth1
BOOTPROTO=dhcp
ONBOOT=yes
```

# restart network
```{bash}
service network restart
```

# check networking
```{bash}
route
or
netstat -r
or
netstat -rn

ping 192.168.0.1 # GATEWAY IP
ping www.google.com
ping 8.8.8.8
```

# real example
```{bash}
# Check network
    [root@test ~]# ifconfig -a
    [root@test ~]# service network status

# Stop network
    [root@test ~]# service network stop

#  Reset all network settings on CentOS
    [root@test ~]# rm /etc/sysconfig/networking/profiles/default/*
    [root@test ~]# rm /etc/sysconfig/networking/devices/*
    [root@test ~]# rm /etc/sysconfig/network-scripts/ifcfg-eth[0-9]
    [root@test ~]# rm /etc/udev/rules.d/70-persistent-net.rules
    [root@test ~]# reboot

# dhcp IP
     [root@test ~]# vi /etc/sysconfig/network
     NETWORKING=yes
     HOSTNAME=localhost.localdomain

     [root@test ~]# vi /etc/sysconfig/network-scripts/ifcfg-eth1
     DEVICE=eth1
     BOOTPROTO=dhcp
     ONBOOT=yes

# restart network

    [root@test ~]# service network restart

# check networking

    [root@test ~]# route
    or
    [root@test ~]# netstat -r
    or
    [root@test ~]# netstat -rn

    [root@test ~]# ping 192.168.0.1 # GATEWAY IP
    [root@test ~]# ping www.google.com
    [root@test ~]# ping 8.8.8.8
```
