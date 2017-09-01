```{text}
$ fdisk /dev/sdc
Welcome to fdisk (util-linux 2.23.2).

Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Device does not contain a recognized partition table
Building a new DOS disklabel with disk identifier 0x376f9581.

The device presents a logical sector size that is smaller than
the physical sector size. Aligning to a physical sector (or optimal
I/O) size boundary is recommended, or performance may be impacted.

Command (m for help): p

Disk /dev/sdc: 1098.4 GB, 1098437885952 bytes, 2145386496 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk label type: dos
Disk identifier: 0x376f9581

Device Boot      Start         End      Blocks   Id  System

Command (m for help): m
Command action
 a toggle a bootable flag
 b edit bsd disklabel
 c toggle the dos compatibility flag
 d delete a partition
 g create a new empty GPT partition table
 G create an IRIX (SGI) partition table
 l list known partition types
 m print this menu
 n add a new partition
 o create a new empty DOS partition table
 p print the partition table
 q quit without saving changes
 s create a new empty Sun disklabel
 t change a partition's system id
 u change display/entry units
 v verify the partition table
 w write table to disk and exit
 x extra functionality (experts only)

Command (m for help): n
Partition type:
 p primary (0 primary, 0 extended, 4 free)
 e extended
Select (default p): p
Partition number (1-4, default 1): 1
 First sector (2048-2145386495, default 2048):
 Using default value 2048
 Last sector, +sectors or +size{K,M,G} (2048-2145386495, default 2145386495):
 Using default value 2145386495
 Partition 1 of type Linux and of size 1023 GiB is set

 Command (m for help): p

 Disk /dev/sdc: 1098.4 GB, 1098437885952 bytes, 2145386496 sectors
 Units = sectors of 1 * 512 = 512 bytes
 Sector size (logical/physical): 512 bytes / 4096 bytes
 I/O size (minimum/optimal): 4096 bytes / 4096 bytes
 Disk label type: dos
 Disk identifier: 0xcd6aa6c0

 Device Boot Start  End Blocks Id System
 /dev/sdc1  2048 2145386495 1072692224 83 Linux

 Command (m for help): t
 Selected partition 1
 Hex code (type L to list all codes): L

 0 Empty              24 NEC DOS         81 Minix / old Lin bf Solaris
 1 FAT12              27 Hidden NTFS Win 82 Linux swap / So c1 DRDOS/sec (FAT-
 2 XENIX root         39 Plan 9          83 Linux           c4 DRDOS/sec (FAT-
 3 XENIX usr          3c PartitionMagic  84 OS/2 hidden C:  c6 DRDOS/sec (FAT-
 4 FAT16 <32M         40 Venix 80286     85 Linux extended  c7 Syrinx
 5 Extended           41 PPC PReP Boot   86 NTFS volume set da Non-FS data
 6 FAT16              42 SFS             87 NTFS volume set db CP/M / CTOS / .
 7 HPFS/NTFS/exFAT    4d QNX4.x          88 Linux plaintext de Dell Utility
 8 AIX                4e QNX4.x 2nd part 8e Linux LVM       df BootIt
 9 AIX bootable       4f QNX4.x 3rd part 93 Amoeba          e1 DOS access
 a OS/2 Boot Manag    50 OnTrack DM      94 Amoeba BBT      e3 DOS R/O
 b W95 FAT32          51 OnTrack DM6 Aux 9f BSD/OS          e4 SpeedStor
 c W95 FAT32 (LBA)    52 CP/M            a0 IBM Thinkpad hi eb BeOS fs
 e W95 FAT16 (LBA)    53 OnTrack DM6 Aux a5 FreeBSD         ee GPT
 f W95 Ext'd (LBA)    54 OnTrackDM6      a6 OpenBSD         ef EFI (FAT-12/16/
 10 OPUS  55 EZ-Drive a7 NeXTSTEP        f0 Linux/PA-RISC b
 11 Hidden FAT12      56 Golden Bow      a8 Darwin UFS      f1 SpeedStor
 12 Compaq diagnost   5c Priam Edisk     a9 NetBSD          f4 SpeedStor
 14 Hidden FAT16 <3   61 SpeedStor       ab Darwin boot     f2 DOS secondary
 16 Hidden FAT16      63 GNU HURD or Sys af HFS / HFS+      fb VMware VMFS
 17 Hidden HPFS/NTF   64 Novell Netware  b7 BSDI fs         fc VMware VMKCORE
 18 AST SmartSleep    65 Novell Netware  b8 BSDI swap       fd Linux raid auto
 1b Hidden W95 FAT3   70 DiskSecure Mult bb Boot Wizard hid fe LANstep
 1c Hidden W95 FAT3   75 PC/IX           be Solaris boot    ff BBT
 1e Hidden W95 FAT1   80 Old Minix
 Hex code (type L to list all codes): 8e
 Changed type of partition 'Linux' to 'Linux LVM'

Command (m for help): p

 Disk /dev/sdc: 1098.4 GB, 1098437885952 bytes, 2145386496 sectors
 Units = sectors of 1 * 512 = 512 bytes
 Sector size (logical/physical): 512 bytes / 4096 bytes
 I/O size (minimum/optimal): 4096 bytes / 4096 bytes
 Disk label type: dos
 Disk identifier: 0xcd6aa6c0

 Device Boot Start  End Blocks Id System
 /dev/sdc1  2048 2145386495 1072692224 8e Linux LVM

 Command (m for help): w
 The partition table has been altered!

 Calling ioctl() to re-read partition table.
 Syncing disks.

$ fdisk /dev/sdc

 The device presents a logical sector size that is smaller than
 the physical sector size. Aligning to a physical sector (or optimal
 I/O) size boundary is recommended, or performance may be impacted.
 Welcome to fdisk (util-linux 2.23.2).

 Changes will remain in memory only, until you decide to write them.
 Be careful before using the write command.

 Command (m for help): p

Disk /dev/sdc: 1098.4 GB, 1098437885952 bytes, 2145386496 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk label type: dos
Disk identifier: 0xcd6aa6c0

Device Boot Start  End Blocks Id System
/dev/sdc1  2048 2145386495 1072692224 8e Linux LVM

Command (m for help):
```
