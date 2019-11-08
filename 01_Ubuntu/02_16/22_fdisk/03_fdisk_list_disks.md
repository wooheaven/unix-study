# fdisk list of partitions of attached disks
```
$ sudo fdisk -l
Disk /dev/loop0: 83.7 MiB, 87793664 bytes, 171472 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop1: 4 KiB, 4096 bytes, 8 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop2: 83.8 MiB, 87896064 bytes, 171672 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/sda: 465.8 GiB, 500107862016 bytes, 976773168 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disklabel type: dos
Disk identifier: 0x83ba6b90

Device     Boot     Start       End   Sectors   Size Id Type
/dev/sda1  *           63   3903794   3903732   1.9G  b W95 FAT32
/dev/sda2         3905534 214849535 210944002 100.6G  5 Extended
/dev/sda3       214849536 976771071 761921536 363.3G  7 HPFS/NTFS/exFAT
/dev/sda5         3905536  19845119  15939584   7.6G 82 Linux swap / Solaris
/dev/sda6        19847168 214849535 195002368    93G 83 Linux

Partition 1 does not start on physical sector boundary.
Partition 2 does not start on physical sector boundary.
Partition table entries are not in disk order.


Disk /dev/sdb: 119.2 GiB, 128035676160 bytes, 250069680 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xa3ae7f39

Device     Boot Start       End   Sectors   Size Id Type
/dev/sdb1        2048 250066943 250064896 119.2G  7 HPFS/NTFS/exFAT
```
