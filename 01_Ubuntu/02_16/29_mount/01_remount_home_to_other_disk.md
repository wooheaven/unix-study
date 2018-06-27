# move [ FileSystem -> Mounted on ]
old : /dev/vdb6 -> /home  
new : /dev/vda8 -> /home  
ref https://www.tecmint.com/move-home-directory-to-new-partition-disk-in-linux/  

```{bash}
    bistel@BIStelResearchDev-NN:~$ su -
    Password:

    root@BIStelResearchDev-NN:~# df -hl
    Filesystem      Size  Used Avail Use% Mounted on
    udev             28G     0   28G   0% /dev
    tmpfs           5.6G  8.7M  5.5G   1% /run
    /dev/vda5        92G  1.2G   86G   2% /
    tmpfs            28G     0   28G   0% /dev/shm
    tmpfs           5.0M     0  5.0M   0% /run/lock
    tmpfs            28G     0   28G   0% /sys/fs/cgroup
    /dev/vda6       9.1G   77M  8.5G   1% /boot
    /dev/vdb5       184G  371M  174G   1% /var
    /dev/vdb6       604G   70M  574G   1% /home
    tmpfs           5.6G     0  5.6G   0% /run/user/1000

    root@BIStelResearchDev-NN:~# ll /srv/
    total 8
    drwxr-xr-x  2 root root 4096 Aug  1  2017 ./
    drwxr-xr-x 23 root root 4096 Jun 20 15:55 ../

    root@BIStelResearchDev-NN:~# mkdir /srv/home
    root@BIStelResearchDev-NN:~# mount /dev/vda8 /srv/home

    root@BIStelResearchDev-NN:~# ll /srv/
    total 12
    drwxr-xr-x  3 root root 4096 Jun 21 17:00 ./
    drwxr-xr-x 23 root root 4096 Jun 20 15:55 ../
    drwxr-xr-x  3 root root 4096 Jun 21 16:55 home/

    root@BIStelResearchDev-NN:~# df -hl
    Filesystem      Size  Used Avail Use% Mounted on
    udev             28G     0   28G   0% /dev
    tmpfs           5.6G  8.7M  5.5G   1% /run
    /dev/vda5        92G  1.2G   86G   2% /
    tmpfs            28G     0   28G   0% /dev/shm
    tmpfs           5.0M     0  5.0M   0% /run/lock
    tmpfs            28G     0   28G   0% /sys/fs/cgroup
    /dev/vda6       9.1G   77M  8.5G   1% /boot
    /dev/vdb5       184G  371M  174G   1% /var
    /dev/vdb6       604G   70M  574G   1% /home
    tmpfs           5.6G     0  5.6G   0% /run/user/1000
    /dev/vda8       922M  1.2M  857M   1% /srv/home

    root@BIStelResearchDev-NN:~# rsync -a /home/* /srv/home/
    sent 7,577 bytes  received 161 bytes  5,158.67 bytes/sec
    total size is 6,906  speedup is 0.89

    root@BIStelResearchDev-NN:~# diff -r /home/ /srv/home/

    root@BIStelResearchDev-NN:~# ll /srv/home/
    total 28
    drwxr-xr-x 4 root   root    4096 Jun 21 17:02 ./
    drwxr-xr-x 3 root   root    4096 Jun 21 17:00 ../
    drwxr-xr-x 3 bistel bistel  4096 Jun 21 16:52 bistel/
    drwx------ 2 root   root   16384 Jun 20 15:45 lost+found/

    root@BIStelResearchDev-NN:~# rm -rf /home/*
    root@BIStelResearchDev-NN:~# umount /srv/home
    root@BIStelResearchDev-NN:~# df -lh
    Filesystem      Size  Used Avail Use% Mounted on
    udev             28G     0   28G   0% /dev
    tmpfs           5.6G  8.7M  5.5G   1% /run
    /dev/vda5        92G  1.2G   86G   2% /
    tmpfs            28G     0   28G   0% /dev/shm
    tmpfs           5.0M     0  5.0M   0% /run/lock
    tmpfs            28G     0   28G   0% /sys/fs/cgroup
    /dev/vda6       9.1G   77M  8.5G   1% /boot
    /dev/vdb5       184G  371M  174G   1% /var
    /dev/vdb6       604G   70M  574G   1% /home
    tmpfs           5.6G     0  5.6G   0% /run/user/1000

    root@BIStelResearchDev-NN:~# mount /dev/vda8 /home
    root@BIStelResearchDev-NN:~# df -lh
    Filesystem      Size  Used Avail Use% Mounted on
    udev             28G     0   28G   0% /dev
    tmpfs           5.6G  8.7M  5.5G   1% /run
    /dev/vda5        92G  1.2G   86G   2% /
    tmpfs            28G     0   28G   0% /dev/shm
    tmpfs           5.0M     0  5.0M   0% /run/lock
    tmpfs            28G     0   28G   0% /sys/fs/cgroup
    /dev/vda6       9.1G   77M  8.5G   1% /boot
    /dev/vdb5       184G  371M  174G   1% /var
    /dev/vda8       922M  1.3M  857M   1% /home
    tmpfs           5.6G     0  5.6G   0% /run/user/1000

    root@BIStelResearchDev-NN:~# ll /srv/home/
    total 8
    drwxr-xr-x 2 root root 4096 Jun 21 17:00 ./
    drwxr-xr-x 3 root root 4096 Jun 21 17:00 ../

    root@BIStelResearchDev-NN:~# rm -rf /srv/home/
    root@BIStelResearchDev-NN:~# ll /srv/
    total 8
    drwxr-xr-x  2 root root 4096 Jun 21 17:15 ./
    drwxr-xr-x 23 root root 4096 Jun 20 15:55 ../

    root@BIStelResearchDev-NN:~# ll /home/
    total 28
    drwxr-xr-x  4 root   root    4096 Jun 21 17:02 ./
    drwxr-xr-x 23 root   root    4096 Jun 20 15:55 ../
    drwxr-xr-x  3 bistel bistel  4096 Jun 21 16:52 bistel/
    drwx------  2 root   root   16384 Jun 20 15:45 lost+found/

    root@BIStelResearchDev-NN:~# blkid
    /dev/vda5: UUID="5dda0e38-6696-497f-8005-52f989a7206d" TYPE="ext4" PARTUUID="5d53dc53-05"
    /dev/vda6: UUID="3892467e-3a74-4c83-b961-323c58796244" TYPE="ext4" PARTUUID="5d53dc53-06"
    /dev/vda7: UUID="dc3de435-3a25-4ce4-af38-500f2b3be2c5" TYPE="swap" PTTYPE="dos" PARTUUID="5d53dc53-07"
    /dev/vdb5: UUID="1ed30669-6424-47a8-91ec-c9b6ec6613ed" TYPE="ext4" PARTUUID="72d5463d-05"
    /dev/vdb6: UUID="d2f45223-d8bf-41e1-b2b3-233b14b4a2e4" TYPE="ext4" PARTUUID="72d5463d-06"
    /dev/vda8: UUID="77762d10-ff36-43dd-8eed-34c1e3e07890" TYPE="ext4" PARTUUID="5d53dc53-08"
    /dev/vda9: UUID="8f3616ca-a3a8-4339-b8f8-fbba97c15ceb" TYPE="ext4" PARTUUID="5d53dc53-09"
    root@BIStelResearchDev-NN:~# vi /etc/fstab
    root@BIStelResearchDev-NN:~# cat /etc/fstab
    # /etc/fstab: static file system information.
    #
    # Use 'blkid' to print the universally unique identifier for a
    # device; this may be used with UUID= as a more robust way to name devices
    # that works even if disks are added and removed. See fstab(5).
    #
    # <file system> <mount point>   <type>  <options>       <dump>  <pass>
    # / was on /dev/vda5 during installation
    UUID=5dda0e38-6696-497f-8005-52f989a7206d /               ext4    errors=remount-ro 0       1
    # /boot was on /dev/vda6 during installation
    UUID=3892467e-3a74-4c83-b961-323c58796244 /boot           ext4    defaults        0       2
    # /home was on /dev/vdb6 during installation
    UUID=77762d10-ff36-43dd-8eed-34c1e3e07890 /home           ext4    defaults        0       2
    # /var was on /dev/vdb5 during installation
    UUID=1ed30669-6424-47a8-91ec-c9b6ec6613ed /var            ext4    defaults        0       2
    # swap was on /dev/vda7 during installation
    UUID=dc3de435-3a25-4ce4-af38-500f2b3be2c5 none            swap    sw              0       0
```
