# move [ FileSystem -> Mounted on ]
old : /dev/vdb5 -> /var  
new : /dev/vda9 -> /var  
ref https://linuxconfig.org/how-to-move-var-directory-to-another-partition  

```{bash}
    root@BIStelResearchDev-NN:~# mount /dev/vda9 /srv/var
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
    /dev/vda8       922M  1.3M  857M   1% /home
    tmpfs           5.6G     0  5.6G   0% /run/user/1000
    /dev/vda9      1021M  1.3M  950M   1% /srv/var

    root@BIStelResearchDev-NN:~# rsync -aqxP /var/* /srv/var/

    root@BIStelResearchDev-NN:~# blkid
    /dev/vda5: UUID="5dda0e38-6696-497f-8005-52f989a7206d" TYPE="ext4" PARTUUID="5d53dc53-05"
    /dev/vda6: UUID="3892467e-3a74-4c83-b961-323c58796244" TYPE="ext4" PARTUUID="5d53dc53-06"
    /dev/vda7: UUID="dc3de435-3a25-4ce4-af38-500f2b3be2c5" TYPE="swap" PTTYPE="dos" PARTUUID="5d53dc53-07"
    /dev/vdb5: UUID="1ed30669-6424-47a8-91ec-c9b6ec6613ed" TYPE="ext4" PARTUUID="72d5463d-05"
    /dev/vdb6: UUID="d2f45223-d8bf-41e1-b2b3-233b14b4a2e4" TYPE="ext4" PARTUUID="72d5463d-06"
    /dev/vda8: UUID="77762d10-ff36-43dd-8eed-34c1e3e07890" TYPE="ext4" PARTUUID="5d53dc53-08"
    /dev/vda9: UUID="8f3616ca-a3a8-4339-b8f8-fbba97c15ceb" TYPE="ext4" PARTUUID="5d53dc53-09"

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
    UUID=8f3616ca-a3a8-4339-b8f8-fbba97c15ceb /var            ext4    defaults        0       2
    # swap was on /dev/vda7 during installation
    UUID=dc3de435-3a25-4ce4-af38-500f2b3be2c5 none            swap    sw              0       0

    root@BIStelResearchDev-NN:~# reboot

    ssh bistel@192.168.100.91
    bistel@192.168.100.91 password:
    Welcome to Ubuntu 16.04.3 LTS (GNU/Linux 4.4.0-87-generic x86_64)

     * Documentation:  https://help.ubuntu.com
     * Management:     https://landscape.canonical.com
     * Support:        https://ubuntu.com/advantage

    161 packages can be updated.
    82 updates are security updates.


    Last login: Thu Jun 21 14:51:28 2018 from 192.168.8.79
    bistel@BIStelResearchDev-NN:~$ su -
    Password:

    root@BIStelResearchDev-NN:~# df -lh
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

    root@BIStelResearchDev-NN:~# rm -rf /srv/var/
```
