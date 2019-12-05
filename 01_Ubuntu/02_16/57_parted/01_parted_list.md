# parted list of attached disks (for example HDD and SDD)
```{bash}
$ sudo parted -l
Model: ATA Hitachi HTS54505 (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/4096B
Partition Table: msdos
Disk Flags: 

Number  Start   End     Size    Type      File system     Flags
 1      32.3kB  1999MB  1999MB  primary   fat32           boot
 2      2000MB  110GB   108GB   extended
 5      2000MB  10.2GB  8161MB  logical   linux-swap(v1)
 6      10.2GB  110GB   99.8GB  logical   ext4
 3      110GB   500GB   390GB   primary   ntfs


Model: ATA Samsung SSD 840 (scsi)
Disk /dev/sdb: 128GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags: 

Number  Start   End    Size   Type     File system  Flags
 1      1049kB  128GB  128GB  primary  ntfs
```
