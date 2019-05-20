# Remove and Create swap partition by fdisk
ref https://www.computernetworkingnotes.com/rhce-study-guide/how-to-create-swap-partition-in-linux.html  
ref https://linuxtechlab.com/create-swap-using-fdisk-fallocate/

# Check Filesystem and Mount
```{bash}
bistel@BIStelResearchDev-NN:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev             28G     0   28G   0% /dev
tmpfs           5.6G  8.7M  5.5G   1% /run
/dev/vda5        92G  1.1G   86G   2% /
tmpfs            28G     0   28G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs            28G     0   28G   0% /sys/fs/cgroup
/dev/vda6       9.1G   77M  8.5G   1% /boot
/dev/vdb5       184G  362M  174G   1% /var
/dev/vdb6       604G   70M  574G   1% /home
tmpfs           5.6G     0  5.6G   0% /run/user/1000

bistel@BIStelResearchDev-NN:~$ sudo fdisk -l
Disk /dev/vda: 300 GiB, 322122547200 bytes, 629145600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x5d53dc53

Device     Boot     Start       End   Sectors   Size Id Type
/dev/vda1  *         2046 629143551 629141506   300G  5 Extended
/dev/vda5       433833984 629143551 195309568  93.1G 83 Linux
/dev/vda6       414302208 433833983  19531776   9.3G 83 Linux
/dev/vda7            2048 414300159 414298112 197.6G 82 Linux swap / Solaris

Partition table entries are not in disk order.


Disk /dev/vdb: 800 GiB, 858993459200 bytes, 1677721600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x72d5463d

Device     Boot      Start        End    Sectors   Size Id Type
/dev/vdb1             2046 1677719551 1677717506   800G  5 Extended
/dev/vdb5       1287096320 1677719551  390623232 186.3G 83 Linux
/dev/vdb6             2048 1287096319 1287094272 613.8G 83 Linux

Partition table entries are not in disk order.
```

# swap off and umount
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo swapoff /dev/vda7
bistel@BIStelResearchDev-NN:~$ sudo swapon -s
bistel@BIStelResearchDev-NN:~$ sudo umount /dev/vda7
umount: /dev/vda7: not mounted
```

# delete and create swap partition by fdisk
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo fdisk /dev/vda

Welcome to fdisk (util-linux 2.27.1).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Command (m for help): d
Partition number (1,5-7, default 7): 7

Partition 7 has been deleted.

Command (m for help): p
Disk /dev/vda: 300 GiB, 322122547200 bytes, 629145600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x5d53dc53

Device     Boot     Start       End   Sectors  Size Id Type
/dev/vda1  *         2046 629143551 629141506  300G  5 Extended
/dev/vda5       433833984 629143551 195309568 93.1G 83 Linux
/dev/vda6       414302208 433833983  19531776  9.3G 83 Linux

Partition table entries are not in disk order.

Command (m for help): n
All space for primary partitions is in use.
Adding logical partition 7
First sector (4094-629143551, default 4096):
Last sector, +sectors or +size{K,M,G,T,P} (4096-414300284, default 414300284): +190G

Created a new partition 7 of type 'Linux' and of size 190 GiB.

Command (m for help): p
Disk /dev/vda: 300 GiB, 322122547200 bytes, 629145600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x5d53dc53

Device     Boot     Start       End   Sectors  Size Id Type
/dev/vda1  *         2046 629143551 629141506  300G  5 Extended
/dev/vda5       433833984 629143551 195309568 93.1G 83 Linux
/dev/vda6       414302208 433833983  19531776  9.3G 83 Linux
/dev/vda7            4096 398462975 398458880  190G 83 Linux

Partition table entries are not in disk order.

Command (m for help): t
Partition number (1,5-7, default 7): 7
Partition type (type L to list all types): 82

Changed type of partition 'Linux' to 'Linux swap / Solaris'.

Command (m for help): p
Disk /dev/vda: 300 GiB, 322122547200 bytes, 629145600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x5d53dc53

Device     Boot     Start       End   Sectors  Size Id Type
/dev/vda1  *         2046 629143551 629141506  300G  5 Extended
/dev/vda5       433833984 629143551 195309568 93.1G 83 Linux
/dev/vda6       414302208 433833983  19531776  9.3G 83 Linux
/dev/vda7            4096 398462975 398458880  190G 82 Linux swap / Solaris

Partition table entries are not in disk order.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Re-reading the partition table failed.: Device or resource busy

The kernel still uses the old table. The new table will be used at the next reboot or after you run partprobe(8) or kpartx(8).

bistel@BIStelResearchDev-NN:~$ sudo partprobe
```

# check swap partition
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo fdisk -l
Disk /dev/vda: 300 GiB, 322122547200 bytes, 629145600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x5d53dc53

Device     Boot     Start       End   Sectors  Size Id Type
/dev/vda1  *         2046 629143551 629141506  300G  5 Extended
/dev/vda5       433833984 629143551 195309568 93.1G 83 Linux
/dev/vda6       414302208 433833983  19531776  9.3G 83 Linux
/dev/vda7            4096 398462975 398458880  190G 82 Linux swap / Solaris

Partition table entries are not in disk order.


Disk /dev/vdb: 800 GiB, 858993459200 bytes, 1677721600 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x72d5463d

Device     Boot      Start        End    Sectors   Size Id Type
/dev/vdb1             2046 1677719551 1677717506   800G  5 Extended
/dev/vdb5       1287096320 1677719551  390623232 186.3G 83 Linux
/dev/vdb6             2048 1287096319 1287094272 613.8G 83 Linux

Partition table entries are not in disk order.
```

# make swap and swapon
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo mkswap /dev/vda7
Setting up swapspace version 1, size = 190 GiB (204010942464 bytes)
no label, UUID=37cbb0f8-6b4f-480c-86d0-a054cc5b3342

bistel@BIStelResearchDev-NN:~$ sudo swapon /dev/vda7
bistel@BIStelResearchDev-NN:~$ sudo swapon -s
Filename                Type        Size    Used    Priority
/dev/vda7                                  partition    199229436    0    -1
```

# register on /etc/fstab for permanent use
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo blkid | grep vda7
    /dev/vda7: UUID="3aadae39-913e-4783-80b8-902ff4cb654d" TYPE="swap" PARTUUID="5d53dc53-07"

bistel@BIStelResearchDev-NN:~$ sudo vi /etc/fstab
bistel@BIStelResearchDev-NN:~$ sudo cat /etc/fstab | grep swap
# swap was on /dev/vda7 during installation
UUID=3aadae39-913e-4783-80b8-902ff4cb654d none            swap    sw              0       0
```
