```bash
$ sudo fdisk -l
...
Disk /dev/sdb: 1.8 TiB, 2000365289472 bytes, 3906963456 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 7E4C9F07-1C35-4E13-85BC-BA5898691D51

Device     Start        End    Sectors  Size Type
/dev/sdb1   2048 3906961407 3906959360  1.8T Microsoft basic data

$ sudo mkfs.exfat -n woo /dev/sdb1
mkexfatfs 1.2.3
Creating... done.
Flushing... done.
File system created successfully.

$ sudo fsck.exfat /dev/sdb1
exfatfsck 1.2.3
WARN: volume was not unmounted cleanly.
Checking file system on /dev/sdb1.
File system version           1.0
Sector size                 512 bytes
Cluster size                128 KB
Volume size                1863 GB
Used space                  235 GB
Available space            1628 GB
Totally 917 directories and 18880 files.
File system checking finished. No errors found.
```
