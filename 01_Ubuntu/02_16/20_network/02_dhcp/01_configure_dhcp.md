# configure
```{bash}
sudo vi /etc/network/interfaces

# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).
source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto eth0
iface eth0 inet dhcp
```

# restart network
```{bash}
sudo systemctl restart networking.service
or
sudo reboot
```

# ping test
```{bash}
ping -c 2 192.168.3.36
ping -c 2 www.google.com
```

# real example
```{bash}
test@test:~$ sudo vi /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto eth0
iface eth0 inet dhcp

test@test:~$ sudo systemctl restart networking.service

test@test:~$ ping -c 2 192.168.3.36
PING 192.168.3.36 (192.168.3.36) 56(84) bytes of data.
64 bytes from 192.168.3.36: icmp_seq=1 ttl=64 time=0.677 ms
64 bytes from 192.168.3.36: icmp_seq=2 ttl=64 time=0.737 ms

--- 192.168.3.36 ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1000ms
rtt min/avg/max/mdev = 0.677/0.707/0.737/0.030 ms
test@test:~$ ping -c 2 www.google.com
PING www.google.com (216.58.197.4) 56(84) bytes of data.
64 bytes from kix06s02-in-f4.1e100.net (216.58.197.4): icmp_seq=1 ttl=52 time=42.4 ms
64 bytes from kix06s02-in-f4.1e100.net (216.58.197.4): icmp_seq=2 ttl=52 time=42.0 ms

--- www.google.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1002ms
rtt min/avg/max/mdev = 42.010/42.252/42.495/0.317 ms
```
