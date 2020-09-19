# check mount and umount
```
$ ls -la /dev/disk/by-id/
total 0
drwxr-xr-x 2 root root 400 11월 14 08:44 .
drwxr-xr-x 6 root root 120 11월 14 08:43 ..
lrwxrwxrwx 1 root root   9 11월 14 08:43 ata-Hitachi_HTS545050A7E380_TEJ51139HD7LNS -> ../../sda
lrwxrwxrwx 1 root root  10 11월 14 08:43 ata-Hitachi_HTS545050A7E380_TEJ51139HD7LNS-part1 -> ../../sda1
lrwxrwxrwx 1 root root  10 11월 14 08:43 ata-Hitachi_HTS545050A7E380_TEJ51139HD7LNS-part2 -> ../../sda2
lrwxrwxrwx 1 root root  10 11월 14 08:43 ata-Hitachi_HTS545050A7E380_TEJ51139HD7LNS-part3 -> ../../sda3
lrwxrwxrwx 1 root root  10 11월 14 08:43 ata-Hitachi_HTS545050A7E380_TEJ51139HD7LNS-part5 -> ../../sda5
lrwxrwxrwx 1 root root  10 11월 14 08:43 ata-Hitachi_HTS545050A7E380_TEJ51139HD7LNS-part6 -> ../../sda6
lrwxrwxrwx 1 root root   9 11월 14 08:43 ata-Samsung_SSD_840_PRO_Series_S12TNEAD406894L -> ../../sdb
lrwxrwxrwx 1 root root  10 11월 14 08:43 ata-Samsung_SSD_840_PRO_Series_S12TNEAD406894L-part1 -> ../../sdb1
lrwxrwxrwx 1 root root   9 11월 14 08:44 usb-SMI_USB_DISK_E6AHAF48000000629-0:0 -> ../../sdc
lrwxrwxrwx 1 root root  10 11월 14 08:44 usb-SMI_USB_DISK_E6AHAF48000000629-0:0-part1 -> ../../sdc1
lrwxrwxrwx 1 root root   9 11월 14 08:43 wwn-0x5000cca71ed3a87e -> ../../sda
lrwxrwxrwx 1 root root  10 11월 14 08:43 wwn-0x5000cca71ed3a87e-part1 -> ../../sda1
lrwxrwxrwx 1 root root  10 11월 14 08:43 wwn-0x5000cca71ed3a87e-part2 -> ../../sda2
lrwxrwxrwx 1 root root  10 11월 14 08:43 wwn-0x5000cca71ed3a87e-part3 -> ../../sda3
lrwxrwxrwx 1 root root  10 11월 14 08:43 wwn-0x5000cca71ed3a87e-part5 -> ../../sda5
lrwxrwxrwx 1 root root  10 11월 14 08:43 wwn-0x5000cca71ed3a87e-part6 -> ../../sda6
lrwxrwxrwx 1 root root   9 11월 14 08:43 wwn-0x50025385502ce05b -> ../../sdb
lrwxrwxrwx 1 root root  10 11월 14 08:43 wwn-0x50025385502ce05b-part1 -> ../../sdb1

$ df -HT
Filesystem     Type      Size  Used Avail Use% Mounted on
udev           devtmpfs  4.2G     0  4.2G   0% /dev
tmpfs          tmpfs     826M  9.9M  817M   2% /run
/dev/sda6      ext4       99G   78G   17G  83% /
tmpfs          tmpfs     4.2G  1.3M  4.2G   1% /dev/shm
tmpfs          tmpfs     5.3M  4.1k  5.3M   1% /run/lock
tmpfs          tmpfs     4.2G     0  4.2G   0% /sys/fs/cgroup
tmpfs          tmpfs     826M   58k  826M   1% /run/user/1000
/dev/sdc1      vfat      4.1G  4.1k  4.1G   1% /media/rwoo/BB56-59BA

$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sdc      8:16   1   4.1G  0 disk 
└─sdc1   8:17   1   4.1G  0 part /media/rwoo/BB56-59BA

$ sudo umount /dev/sdc1

$ df -HT
Filesystem     Type      Size  Used Avail Use% Mounted on
udev           devtmpfs  4.2G     0  4.2G   0% /dev
tmpfs          tmpfs     826M  9.9M  817M   2% /run
/dev/sda6      ext4       99G   78G   17G  83% /
tmpfs          tmpfs     4.2G  1.3M  4.2G   1% /dev/shm
tmpfs          tmpfs     5.3M  4.1k  5.3M   1% /run/lock
tmpfs          tmpfs     4.2G     0  4.2G   0% /sys/fs/cgroup
tmpfs          tmpfs     826M   58k  826M   1% /run/user/1000

$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sdc      8:16   1   4.1G  0 disk 
└─sdc1   8:17   1   4.1G  0 part 
```

# partitioning by fdisk
```
$ sudo fdisk /dev/sdc
Command (m for help): p
Disk /dev/sdc: 3.8 GiB, 4051697664 bytes, 7913472 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xc3072e18

Device     Boot Start     End Sectors  Size Id Type
/dev/sdc1          56 7913471 7913416  3.8G  c W95 FAT32 (LBA)

Command (m for help): d
Selected partition 1
Partition 1 has been deleted.

Command (m for help): p
Disk /dev/sdc: 3.8 GiB, 4051697664 bytes, 7913472 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xc3072e18

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1):  
First sector (2048-7913471, default 2048): 
Last sector, +sectors or +size{K,M,G,T,P} (2048-7913471, default 7913471): 

Created a new partition 1 of type 'Linux' and of size 3.8 GiB.

Command (m for help): p
Disk /dev/sdc: 3.8 GiB, 4051697664 bytes, 7913472 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xc3072e18

Device     Boot Start     End Sectors  Size Id Type
/dev/sdc1        2048 7913471 7911424  3.8G 83 Linux

Command (m for help): t
Selected partition 1
Partition type (type L to list all types): L

 0  Empty           24  NEC DOS         81  Minix / old Lin bf  Solaris        
 1  FAT12           27  Hidden NTFS Win 82  Linux swap / So c1  DRDOS/sec (FAT-
 2  XENIX root      39  Plan 9          83  Linux           c4  DRDOS/sec (FAT-
 3  XENIX usr       3c  PartitionMagic  84  OS/2 hidden or  c6  DRDOS/sec (FAT-
 4  FAT16 <32M      40  Venix 80286     85  Linux extended  c7  Syrinx         
 5  Extended        41  PPC PReP Boot   86  NTFS volume set da  Non-FS data    
 6  FAT16           42  SFS             87  NTFS volume set db  CP/M / CTOS / .
 7  HPFS/NTFS/exFAT 4d  QNX4.x          88  Linux plaintext de  Dell Utility   
 8  AIX             4e  QNX4.x 2nd part 8e  Linux LVM       df  BootIt         
 9  AIX bootable    4f  QNX4.x 3rd part 93  Amoeba          e1  DOS access     
 a  OS/2 Boot Manag 50  OnTrack DM      94  Amoeba BBT      e3  DOS R/O        
 b  W95 FAT32       51  OnTrack DM6 Aux 9f  BSD/OS          e4  SpeedStor      
 c  W95 FAT32 (LBA) 52  CP/M            a0  IBM Thinkpad hi ea  Rufus alignment
 e  W95 FAT16 (LBA) 53  OnTrack DM6 Aux a5  FreeBSD         eb  BeOS fs        
 f  W95 Ext'd (LBA) 54  OnTrackDM6      a6  OpenBSD         ee  GPT            
10  OPUS            55  EZ-Drive        a7  NeXTSTEP        ef  EFI (FAT-12/16/
11  Hidden FAT12    56  Golden Bow      a8  Darwin UFS      f0  Linux/PA-RISC b
12  Compaq diagnost 5c  Priam Edisk     a9  NetBSD          f1  SpeedStor      
14  Hidden FAT16 <3 61  SpeedStor       ab  Darwin boot     f4  SpeedStor      
16  Hidden FAT16    63  GNU HURD or Sys af  HFS / HFS+      f2  DOS secondary  
17  Hidden HPFS/NTF 64  Novell Netware  b7  BSDI fs         fb  VMware VMFS    
18  AST SmartSleep  65  Novell Netware  b8  BSDI swap       fc  VMware VMKCORE 
1b  Hidden W95 FAT3 70  DiskSecure Mult bb  Boot Wizard hid fd  Linux raid auto
1c  Hidden W95 FAT3 75  PC/IX           bc  Acronis FAT32 L fe  LANstep        
1e  Hidden W95 FAT1 80  Old Minix       be  Solaris boot    ff  BBT            
Partition type (type L to list all types): b
Changed type of partition 'Linux' to 'W95 FAT32'.

Command (m for help): a
Selected partition 1
The bootable flag on partition 1 is enabled now.

Command (m for help): p
Disk /dev/sdc: 3.8 GiB, 4051697664 bytes, 7913472 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xc3072e18

Device     Boot Start     End Sectors  Size Id Type
/dev/sdc1  *     2048 7913471 7911424  3.8G  b W95 FAT32

Command (m for help): w
The partition table has been altered.
```

# format as FAT32 file-system
```
$ sudo mkfs -t vfat -n 'USB-DISK' -I /dev/sdc1
mkfs.fat 3.0.28 (2015-05-16)
```

# Eject and re-insert USB
```
$ df -HT
Filesystem     Type      Size  Used Avail Use% Mounted on
udev           devtmpfs  4.2G     0  4.2G   0% /dev
tmpfs          tmpfs     826M  9.9M  817M   2% /run
/dev/sda6      ext4       99G   78G   17G  83% /
tmpfs          tmpfs     4.2G  1.3M  4.2G   1% /dev/shm
tmpfs          tmpfs     5.3M  4.1k  5.3M   1% /run/lock
tmpfs          tmpfs     4.2G     0  4.2G   0% /sys/fs/cgroup
tmpfs          tmpfs     826M   54k  826M   1% /run/user/1000
/dev/sdc1      vfat      4.1G  4.1k  4.1G   1% /media/rwoo/USB-DISK
```
