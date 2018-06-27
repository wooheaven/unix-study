# rsync for /var
```{bash}
$ rsync -aqxP /var/* /srv/var/
$ blkid | grep vda9
/dev/vda9: UUID="8f3616ca-a3a8-4339-b8f8-fbba97c15ceb" TYPE="ext4" PARTUUID="5d53dc53-09"

$ cat /etc/fstab | grep 8f3616ca
$ vi /etc/fstab
$ cat /etc/fstab | grep 8f3616ca
UUID=8f3616ca-a3a8-4339-b8f8-fbba97c15ceb /var            ext4    defaults        0       2

$ reboot

$ ssh user@ip
Welcome to Ubuntu 16.04.3 LTS (GNU/Linux 4.4.0-87-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

161 packages can be updated.
82 updates are security updates.

Last login: Thu Jun 21 14:51:28 2018 from 192.168.8.79
$ su -
Password:

$ df -lh
Filesystem      Size  Used Avail Use% Mounted on
udev             28G     0   28G   0% /dev
tmpfs           5.6G  8.7M  5.5G   1% /run
/dev/vda5        92G  1.2G   86G   2% /
tmpfs            28G     0   28G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs            28G     0   28G   0% /sys/fs/cgroup
/dev/vda6       9.1G   77M  8.5G   1% /boot
/dev/vda9      1021M  314M  638M  33% /var
/dev/vda8       922M  1.3M  857M   1% /home
tmpfs           5.6G     0  5.6G   0% /run/user/1000

$ rm -rf /srv/var/
```
