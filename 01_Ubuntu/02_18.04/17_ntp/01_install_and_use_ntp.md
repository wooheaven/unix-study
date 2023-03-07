# install
```
$ sudo apt-get install ntp
```

# add server
```
http://www.pool.ntp.org/ko/zone/kr

$ sudo vi /etc/ntp.conf
...
server ntp.ewha.net iburst
server ntp1.epidc.co.kr iburst
server time.bora.net iburst
server time.wonkwang.ac.kr iburst
server time.korserve.net iburst
server noc6-3.koren21.net iburst

$ sudo service ntp stop
$ sudo service ntp start

$ ntpq -p
     remote           refid      st t when poll reach   delay   offset  jitter
==============================================================================
 0.ubuntu.pool.n .POOL.          16 p    -   64    0    0.000    0.000   0.000
 1.ubuntu.pool.n .POOL.          16 p    -   64    0    0.000    0.000   0.000
 2.ubuntu.pool.n .POOL.          16 p    -   64    0    0.000    0.000   0.000
 3.ubuntu.pool.n .POOL.          16 p    -   64    0    0.000    0.000   0.000
 ntp.ubuntu.com  .POOL.          16 p    -   64    0    0.000    0.000   0.000
 dadns.cdnetwork 216.239.35.12    2 u   12   64    1    3.027   -0.963   0.000
 45.86.70.11     173.212.222.171  2 u   11   64    1  138.106  120.459   0.000
*106.247.248.106 206.16.42.194    2 u    1   64    1    6.494   -0.602   1.428
 ec2-13-209-84-5 17.253.114.125   2 u    2   64    1    6.025   -0.517  13.255
+send.mx.cdnetwo 125.185.190.74   2 u    2   64    1    3.929   -0.146   1.394
+49.247.128.87 ( 106.247.248.106  3 u    1   64    1    4.688   -1.003   1.779
 alphyn.canonica 142.3.100.2      2 u    6   64    1  199.176   -1.558   0.000
 golem.canonical 17.253.34.251    2 u    5   64    1  259.154   -0.618   0.000
 pugot.canonical 17.253.108.253   2 u    6   64    1  266.870   -1.475   0.000
 chilipepper.can 17.253.34.123    2 u    5   64    1  260.329    0.224   0.000
```

